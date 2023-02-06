class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: convert_gtf_to_fasta
baseCommand: []
inputs:
  - id: reference
    type: File
    inputBinding:
      position: 1
      prefix: '-g'
      shellQuote: false
  - id: gtf
    type: File
    inputBinding:
      position: 1
      shellQuote: false
outputs:
  - id: transcripts_fasta
    type: File
    outputBinding:
      glob: '*fasta'
label: convert_gtf_to_fasta
arguments:
  - position: 3
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "-w transcripts.fasta"
      }
  - position: 0
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "cp "+inputs.reference.path +". && gffread "
      }
requirements:
  - class: ShellCommandRequirement
  - class: DockerRequirement
    dockerPull: 'sagnikbanerjee15/gffread:0.12.1'
  - class: InlineJavascriptRequirement
