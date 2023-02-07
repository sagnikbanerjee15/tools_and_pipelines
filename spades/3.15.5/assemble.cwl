class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: spades_assemble
baseCommand:
  - spades.py
inputs:
  - id: rna
    type: boolean
    inputBinding:
      position: 0
      prefix: '--rna'
      shellQuote: false
  - id: mate1
    type: File
    inputBinding:
      position: 0
      prefix: '-1'
      shellQuote: false
  - id: mate2
    type: File
    inputBinding:
      position: 0
      prefix: '-2'
      shellQuote: false
  - id: threads
    type: int?
    inputBinding:
      position: 0
      prefix: '-t'
      shellQuote: false
outputs:
  - id: spades_assembly_directory
    type: Directory
    outputBinding:
      glob: '*spades_assembly'
  - id: spades_assembly_file
    type: File
    outputBinding:
      glob: spades_assembly/transcripts.fasta*
label: spades_assemble
arguments:
  - position: 0
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "-o spades_assembly"
      }
requirements:
  - class: ShellCommandRequirement
  - class: DockerRequirement
    dockerPull: 'sagnikbanerjee15/spades:3.15.5'
  - class: InlineJavascriptRequirement
