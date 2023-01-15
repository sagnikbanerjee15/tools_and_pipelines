class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: prepare_abyss_configuration_file
baseCommand:
  - prepare_abyss_configuration_file
inputs:
  - id: directory_with_input_reads
    type: Directory
    inputBinding:
      position: 0
      prefix: '--directory_with_input_reads'
      shellQuote: false
outputs:
  - id: abyss_command_line
    type: File
    outputBinding:
      glob: |-
        ${
            return "*abyss_command_line"
        }
label: prepare_abyss_configuration_file
arguments:
  - position: 0
    prefix: '--command_line_portion'
    shellQuote: false
    valueFrom: |-
      ${
          return "abyss_command_line"
      }
requirements:
  - class: ShellCommandRequirement
  - class: DockerRequirement
    dockerPull: >-
      ghcr.io/sagnikbanerjee15/dockerized_tools_and_pipelines/fungal_genome_assemblies_and_annotation:0.0.1
  - class: InlineJavascriptRequirement
