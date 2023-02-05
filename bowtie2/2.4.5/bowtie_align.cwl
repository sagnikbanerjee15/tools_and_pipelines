class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: bowtie_align
baseCommand: []
inputs:
  - id: reference
    type: File
  - id: threads
    type: int?
    inputBinding:
      position: 0
      prefix: '--threads'
      shellQuote: false
  - id: mate1
    type: File?
    inputBinding:
      position: 0
      prefix: '-1'
      shellQuote: false
  - id: mate2
    type: File?
    inputBinding:
      position: 0
      prefix: '-2'
      shellQuote: false
  - id: unpaired
    type: File?
    inputBinding:
      position: 0
      prefix: '-U'
      shellQuote: false
  - id: max_number_of_multple_alignments
    type: int?
    inputBinding:
      position: 0
      prefix: '-k'
      shellQuote: false
outputs:
  - id: aligned_samfile
    type: File
    outputBinding:
      glob: '*sam'
  - id: log
    type: File
    outputBinding:
      glob: '*output'
  - id: error
    type: File
    outputBinding:
      glob: '*error'
label: bowtie_align
arguments:
  - position: 0
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "-S bowtie_aligned.sam"
      }
  - position: 0
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "--no-unal"
      }
  - position: 0
    prefix: ''
    shellQuote: false
    valueFrom: '${return "-x bowtie_index"}'
  - position: -1
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "bowtie-build --threads " + inputs.threads + " " + inputs.reference.path + " bowtie_index && bowtie"
      }
requirements:
  - class: ShellCommandRequirement
  - class: DockerRequirement
    dockerPull: 'sagnikbanerjee15/bowtie2:2.4.5'
  - class: InlineJavascriptRequirement
stdout: bowtie2_align.output
stderr: bowtie2_align.error
