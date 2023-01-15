class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: prepare_masurca_configuration_file
baseCommand:
  - prepare_masurca_configuration_file
inputs:
  - id: directory_with_input_reads
    type: Directory
    inputBinding:
      position: 0
      prefix: '--directory_with_input_reads'
      shellQuote: false
  - id: input_configuration_file
    type: File
    inputBinding:
      position: 0
      prefix: '--input_configuration_file'
      shellQuote: false
  - 'sbg:toolDefaultValue': '1'
    id: cpu
    type: int?
    inputBinding:
      position: 0
      prefix: '--cpu'
      shellQuote: false
outputs:
  - id: modified_config_file
    type: File?
    outputBinding:
      glob: |-
        ${
            return "*"+inputs.input_configuration_file.basename + "_modified"
        }
label: prepare_masurca_configuration_file
arguments:
  - position: 0
    prefix: '--output_configuration_file'
    shellQuote: false
    valueFrom: |-
      ${
          return inputs.input_configuration_file.basename + "_modified"
      }
requirements:
  - class: ShellCommandRequirement
  - class: DockerRequirement
    dockerPull: >-
      ghcr.io/sagnikbanerjee15/dockerized_tools_and_pipelines/fungal_genome_assemblies_and_annotation:0.0.1
  - class: InlineJavascriptRequirement
