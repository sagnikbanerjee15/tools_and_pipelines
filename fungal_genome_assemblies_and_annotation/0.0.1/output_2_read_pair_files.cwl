class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: output_2_read_pair_files
baseCommand:
  - output_2_reads_pair_files
inputs:
  - id: directory_with_input_reads
    type: Directory
    inputBinding:
      position: 0
      prefix: '--directory_with_input_reads'
      shellQuote: false
outputs:
  - id: left_reads
    type: File
    outputBinding:
      glob: '*_1.fastq'
  - id: right_reads
    type: File
    outputBinding:
      glob: '*_2.fastq'
label: output_2_read_pair_files
arguments:
  - position: 0
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "--merged_left_read_filename merged_1.fastq"
      }
  - position: 0
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "--merged_right_read_filename merged_2.fastq"
      }
requirements:
  - class: ShellCommandRequirement
  - class: DockerRequirement
    dockerPull: >-
      ghcr.io/sagnikbanerjee15/dockerized_tools_and_pipelines/fungal_genome_assemblies_and_annotation:0.0.1
  - class: InlineJavascriptRequirement
