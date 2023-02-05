class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: calculate_parameters_for_generating_star_index
baseCommand:
  - calculate_parameters_for_generating_star_index
inputs:
  - id: reference
    type: File
    inputBinding:
      position: 0
      prefix: '--reference'
      shellQuote: false
outputs:
  - id: output_genome_sa_index_and_bases
    type: File?
    outputBinding:
      glob: '*_sa_index_bases'
  - id: output_chr_bin_n_bits
    type: File?
    outputBinding:
      glob: '*_chr_bin_n_bits'
label: calculate_parameters_for_generating_star_index
arguments:
  - position: 0
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "--genome_sa_index_and_bases_output_filename "+inputs.reference.nameroot+"_sa_index_bases"
      }
  - position: 0
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "--genome_chr_bin_n_bits_output_filename "+inputs.reference.nameroot+"_chr_bin_n_bits"
      }
requirements:
  - class: ShellCommandRequirement
  - class: ScatterFeatureRequirement
  - class: StepInputExpressionRequirement
  - class: DockerRequirement
    dockerPull: 'sagnikbanerjee15/scripts:0.0.1'
  - class: InlineJavascriptRequirement
