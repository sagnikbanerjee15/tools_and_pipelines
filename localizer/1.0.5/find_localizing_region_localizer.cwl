class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: find_localizing_region_localizer
baseCommand:
  - python3 /software/LOCALIZER-1.0.5/Scripts/LOCALIZER.py
inputs:
  - id: peptide_fasta
    type: File
    inputBinding:
      position: 0
      prefix: '-i'
      shellQuote: false
outputs:
  - id: localizer_output_directory
    type: Directory
    outputBinding:
      glob: '*_localizer_output'
label: find_localizing_region_localizer
arguments:
  - position: 0
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "-e"
      }
  - position: 0
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "-o "+inputs.peptide_fasta.nameroot+"_localizer_output"
      }
requirements:
  - class: InlineJavascriptRequirement
  - class: ShellCommandRequirement
  - class: DockerRequirement
    dockerPull: 'sagnikbanerjee15/localizer:1.0.5'
    
