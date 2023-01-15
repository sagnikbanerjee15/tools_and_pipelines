class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: download_folder
baseCommand:
  - gdrive
  - download
inputs:
  - id: folder_id
    type: string?
  - id: path
    type: Directory
    inputBinding:
      position: 0
      prefix: '--path'
      shellQuote: false
outputs: []
label: download_folder
arguments:
  - position: 100
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return inputs.folder_id
      }
  - position: 1
    prefix: ''
    shellQuote: false
    valueFrom: '${return "--no-progress"}'
  - position: 0
    prefix: ''
    shellQuote: false
    valueFrom: '${return "--recursive"}'
requirements:
  - class: ShellCommandRequirement
  - class: DockerRequirement
    dockerPull: 'ghcr.io/sagnikbanerjee15/dockerized_tools_and_pipelines/gdrive:2.1.1'
  - class: InlineJavascriptRequirement
