class: Workflow
cwlVersion: v1.0
id: calculate_parameters_and_generate_star_index
label: calculate_parameters_and_generate_star_index
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: reference
    type: File
    'sbg:x': -646
    'sbg:y': -270
  - id: cpu
    type: int?
    'sbg:x': -560.2808837890625
    'sbg:y': 108
outputs:
  - id: star_index_directory
    outputSource:
      - generate_index/star_index_directory
    type: Directory?
    'sbg:x': -69.2808837890625
    'sbg:y': -204
steps:
  - id: generate_index
    in:
      - id: reference
        source: reference
      - id: genome_chr_bin_n_bits
        source: calculate_parameters_for_generating_star_index/output_chr_bin_n_bits
      - id: cpu
        source: cpu
      - id: genome_sa_index_and_bases
        source: >-
          calculate_parameters_for_generating_star_index/output_genome_sa_index_and_bases
    out:
      - id: star_index_directory
    run: >-
      https://raw.githubusercontent.com/sagnikbanerjee15/dockerized_tools_and_pipelines/main/star/2.7.9a/generate_index.cwl
    label: generate_index
    'sbg:x': -193
    'sbg:y': -142
  - id: calculate_parameters_for_generating_star_index
    in:
      - id: reference
        source: reference
    out:
      - id: output_genome_sa_index_and_bases
      - id: output_chr_bin_n_bits
    run: >-
      https://raw.githubusercontent.com/sagnikbanerjee15/dockerized_tools_and_pipelines/main/scripts/0.0.1/calculate_parameters_for_generating_star_index.cwl
    label: calculate_parameters_for_generating_star_index
    'sbg:x': -491.2808837890625
    'sbg:y': -104
requirements: []
