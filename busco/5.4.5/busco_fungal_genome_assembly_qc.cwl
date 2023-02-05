class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: busco_fungal_genome_assembly_qc
baseCommand:
  - busco
inputs:
  - id: reference
    type: File
    inputBinding:
      position: 0
      prefix: '-i'
      shellQuote: false
  - id: threads
    type: int?
    inputBinding:
      position: 0
      prefix: '--cpu'
      shellQuote: false
outputs:
  - id: busco_analysis
    type: Directory
    outputBinding:
      glob: '*busco_analysis'
label: busco_fungal_genome_assembly_qc
arguments:
  - position: 0
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "--mode genome"
      }
  - position: 0
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "--out busco_analysis"
      }
  - position: 0
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "--lineage_dataset fungi_odb10"
      }
requirements:
  - class: ShellCommandRequirement
  - class: DockerRequirement
    dockerPull: 'sagnikbanerjee15/busco:5.4.5'
  - class: InlineJavascriptRequirement
