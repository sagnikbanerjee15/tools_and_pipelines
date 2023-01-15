class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: rascaf_join
baseCommand:
  - rascaf-join
inputs:
  - id: rascaf_connection_file
    type: File
    inputBinding:
      position: 0
      prefix: '-r'
      shellQuote: false
outputs:
  - id: rascaf_scaffold
    type: File
    outputBinding:
      glob: '*fa'
label: rascaf_join
arguments:
  - position: 0
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "-o rascaf_scaffold"
      }
requirements:
  - class: ShellCommandRequirement
  - class: DockerRequirement
    dockerPull: 'ghcr.io/sagnikbanerjee15/dockerized_tools_and_pipelines/rascaf:1.0.2'
  - class: InlineJavascriptRequirement
stdout: rascaf_join.output
stderr: rascaf_join.error
