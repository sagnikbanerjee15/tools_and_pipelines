class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: find_localizing_region_deeploc
baseCommand:
  - deeploc2
inputs:
  - id: peptide_fasta
    type: File
    inputBinding:
      position: 0
      prefix: '--fasta'
      shellQuote: false
outputs:
  - id: output_dir_deeploc
    type: Directory
    outputBinding:
      glob: '*_output'
label: find_localizing_region_deeploc
arguments:
  - position: 0
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "--output "+inputs.peptide_fasta.nameroot+"_output"
      }
  - position: 0
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "--model Accurate"
      }
  - position: 0
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "--plot"
      }
requirements:
  - class: ShellCommandRequirement
  - class: DockerRequirement
    dockerPull: 'sagnikbanerjee15/deeploc:2'
  - class: InlineJavascriptRequirement
