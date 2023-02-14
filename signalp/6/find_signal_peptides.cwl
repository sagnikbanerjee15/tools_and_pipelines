class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: find_signal_peptides
baseCommand:
  - signalp6
inputs:
  - id: peptide_fasta
    type: File
    inputBinding:
      position: 0
      prefix: '--fastafile'
      shellQuote: false
  - id: threads
    type: int
    inputBinding:
      position: 0
      prefix: '--write_procs'
      shellQuote: false
  - id: organism
    type:
      - 'null'
      - type: enum
        symbols:
          - eukarya
          - other
          - euk
        name: organism
    inputBinding:
      position: 0
      prefix: '--organism'
      shellQuote: false
outputs:
  - id: outdir
    type: Directory
    outputBinding:
      glob: '*_outdir'
label: find_signal_peptides
arguments:
  - position: 0
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "--mode fast"
      }
  - position: 0
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "--output_dir "+inputs.peptide_fasta.nameroot+"_outdir"
      }
requirements:
  - class: ShellCommandRequirement
  - class: DockerRequirement
    dockerPull: 'aswaffordlbl/signalp6:latest'
  - class: InlineJavascriptRequirement
