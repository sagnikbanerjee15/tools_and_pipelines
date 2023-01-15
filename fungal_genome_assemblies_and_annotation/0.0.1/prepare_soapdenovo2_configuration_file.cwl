class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: prepare_soapdenovo2_configuration_file
baseCommand:
  - prepare_soapdenovo2_configuration_file
inputs:
  - id: directory_with_input_reads
    type: Directory
    inputBinding:
      position: 0
      prefix: '--directory_with_input_reads'
      shellQuote: false
outputs:
  - id: modified_config_file
    type: File?
    outputBinding:
      glob: |-
        ${
            return "*soapdenovo2_config_file"
        }
label: prepare_soapdenovo2_configuration_file
arguments:
  - position: 0
    prefix: '--output_configuration_file'
    valueFrom: |-
      ${
          return "soapdenovo2_config_file"
      }
requirements:
  - class: ShellCommandRequirement
  - class: DockerRequirement
    dockerPull: >-
      ghcr.io/sagnikbanerjee15/dockerized_tools_and_pipelines/fungal_genome_assemblies_and_annotation:0.0.1
  - class: InlineJavascriptRequirement
