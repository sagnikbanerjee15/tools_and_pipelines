class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: codan_predict_cds
baseCommand:
  - codan.py
inputs:
  - id: transcripts_fasta
    type: File
    inputBinding:
      position: 0
      prefix: '-t'
      shellQuote: false
  - id: threads
    type: int?
    inputBinding:
      position: 0
      prefix: '-c'
      shellQuote: false
  - id: model
    type:
      type: enum
      symbols:
        - VERT_full
        - VERT_partial
        - FUNGI_full
        - FUNGI_partial
        - PLANTS_full
        - PLANTS_partial
        - INV_full
        - INV_partial
      name: model
    inputBinding:
      position: 0
      prefix: '-m'
      shellQuote: false
      valueFrom: |-
        ${
            return "/software/CodAn/models/"+inputs.model
        }
outputs:
  - id: output_directory
    type: Directory
    outputBinding:
      glob: '*CodAn_output'
label: codan_predict_cds
arguments:
  - position: 0
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "-o CodAn_output"
      }
requirements:
  - class: ShellCommandRequirement
  - class: DockerRequirement
    dockerPull: 'sagnikbanerjee15/codan:1.2'
  - class: InlineJavascriptRequirement
