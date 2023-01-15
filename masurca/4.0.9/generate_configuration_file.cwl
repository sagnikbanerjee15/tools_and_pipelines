class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: generate_configuration_file
baseCommand:
  - masurca
inputs: []
outputs:
  - id: output_config_filename
    type: File?
    outputBinding:
      glob: '${return "*masurca_config"}'
  - id: stdout
    type: File?
    outputBinding:
      glob: '*output'
  - id: stderr
    type: File?
    outputBinding:
      glob: '*error'
label: generate_configuration_file
arguments:
  - position: 0
    prefix: ''
    shellQuote: false
    valueFrom: '${return "-g masurca_config"}'
requirements:
  - class: ShellCommandRequirement
  - class: DockerRequirement
    dockerPull: 'ghcr.io/sagnikbanerjee15/dockerized_tools_and_pipelines/masurca:4.0.9'
  - class: InlineJavascriptRequirement
stdout: generate_masurca_configuration_file.output
stderr: generate_masurca_configuration_file.error
