class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: merge_multiple_paired_ended_samples_and_assemble
baseCommand: []
inputs:
  - id: directory_with_input_reads
    type: Directory
  - 'sbg:toolDefaultValue': '1'
    id: cpu
    type: int?
    inputBinding:
      position: 3
      prefix: '--num-cpu-threads'
      shellQuote: false
  - 'sbg:toolDefaultValue': '2'
    id: min-count
    type: int?
    inputBinding:
      position: 3
      prefix: '--min-count'
      shellQuote: false
  - 'sbg:toolDefaultValue': '21'
    id: k-min
    type: int?
    inputBinding:
      position: 4
      prefix: '--k-min'
      shellQuote: false
  - 'sbg:toolDefaultValue': '141'
    id: k-max
    type: int?
    inputBinding:
      position: 24
      prefix: '--k-max'
      shellQuote: false
  - 'sbg:toolDefaultValue': '12'
    id: k-step
    type: int?
    inputBinding:
      position: 7
      prefix: '--k-step'
      shellQuote: false
  - 'sbg:toolDefaultValue': '1000'
    id: min-contig-len
    type: int?
    inputBinding:
      position: 8
      prefix: '--min-contig-len'
      shellQuote: false
outputs:
  - id: assembled_out
    type: File?
    outputBinding:
      glob: '*megahit_assembled_out/final.contigs.fa'
label: merge_multiple_paired_ended_samples_and_assemble
arguments:
  - position: 1
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "cat "+inputs.directory_with_input_reads.path+"/*_1.fastq > merged_1.fastq && "+"cat "+inputs.directory_with_input_reads.path+"/*_2.fastq > merged_2.fastq && "
      }
  - position: 2
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "megahit -1 merged_1.fastq -2 merged_2.fastq --out-dir megahit_assembled_out"
      }
requirements:
  - class: ShellCommandRequirement
  - class: DockerRequirement
    dockerPull: 'ghcr.io/sagnikbanerjee15/dockerized_tools_and_pipelines/megahit:1.2.9'
  - class: InlineJavascriptRequirement
