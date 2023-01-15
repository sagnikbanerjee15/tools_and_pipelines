class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: download_folder
baseCommand:
  - gdown
inputs:
  - id: folder_id
    type: string?
  - id: folder_name
    type: string
outputs:
  - id: directory
    type: Directory?
    outputBinding:
      glob: '${ return "*"+inputs.folder_name}'
label: download_folder
arguments:
  - position: 100
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return inputs.folder_id
      }
  - position: 0
    prefix: ''
    shellQuote: false
    valueFrom: '${return "--folder"}'
requirements:
  - class: ShellCommandRequirement
  - class: DockerRequirement
    dockerPull: 'ghcr.io/sagnikbanerjee15/dockerized_tools_and_pipelines/gdown:4.5.1'
  - class: InlineJavascriptRequirement
