class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: download_file
baseCommand:
  - gdrive
  - download
inputs:
  - id: file_id
    type: string?
  - id: path
    type: Directory
    inputBinding:
      position: 0
      prefix: '--path'
      shellQuote: false
outputs: []
label: download_file
arguments:
  - position: 100
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return inputs.file_id
      }
  - position: 1
    prefix: ''
    shellQuote: false
    valueFrom: '${return "--no-progress"}'
requirements:
  - class: ShellCommandRequirement
  - class: DockerRequirement
    dockerPull: 'ghcr.io/sagnikbanerjee15/dockerized_tools_and_pipelines/gdrive:2.1.1'
  - class: InlineJavascriptRequirement
