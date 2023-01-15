class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: download_file
baseCommand:
  - gdown
inputs:
  - id: file_id
    type: string?
  - id: file_type
    type:
      type: enum
      symbols:
        - fastq
        - fasta
        - fasta.gz
        - fastq.gz
      name: file_type
outputs:
  - id: file
    type: File?
    outputBinding:
      glob: '${ return "*"+inputs.file_type}'
label: download_file
arguments:
  - position: 100
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return inputs.file_id
      }
requirements:
  - class: ShellCommandRequirement
  - class: DockerRequirement
    dockerPull: 'ghcr.io/sagnikbanerjee15/dockerized_tools_and_pipelines/gdown:4.5.1'
  - class: InlineJavascriptRequirement
