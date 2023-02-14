class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: find_cseps_effectorp
baseCommand:
  - python3 /softwares/EffectorP-3.0-3.0.0-beta/EffectorP.py
inputs:
  - id: peptide_fasta
    type: File
    inputBinding:
      position: 0
      prefix: '-i'
      shellQuote: false
  - id: mode
    type:
      - 'null'
      - type: enum
        symbols:
          - FUNGUS
        name: mode
outputs:
  - id: output_predictions
    type: File
    outputBinding:
      glob: '*tsv'
  - id: predicted_CSEPs
    type: File
    outputBinding:
      glob: '*_predicted_CSEPs.fasta'
  - id: predicted_nonCSEPs
    type: File
    outputBinding:
      glob: '*_predicted_nonCSEPs.fasta'
label: find_cseps_effectorp
arguments:
  - position: 0
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          if(inputs.mode == "FUNGUS")
              return "-f"
          else
              return ""
      }
  - position: 0
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "-o "+inputs.peptide_fasta.nameroot+"_predictions.tsv"
      }
  - position: 0
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "-E "+inputs.peptide_fasta.nameroot+"_predicted_CSEPs.fasta"
      }
  - position: 0
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "-N "+inputs.peptide_fasta.nameroot+"_predicted_nonCSEPs.fasta"
      }
requirements:
  - class: ShellCommandRequirement
  - class: DockerRequirement
    dockerPull: 'sagnikbanerjee15/effectorp:3'
  - class: InlineJavascriptRequirement
