class: Workflow
cwlVersion: v1.0
id: generate_parameters_and_assemble
label: generate_parameters_and_assemble
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: cpu
    type: int?
    'sbg:x': 0
    'sbg:y': 337.0703125
  - id: directory_with_input_reads
    type: Directory
    'sbg:x': 0
    'sbg:y': 230.2421875
outputs:
  - id: abyss_assembly_k_90_kc_2
    outputSource:
      - ABYSS_k_90_kc_2/assembly
    type: File
    'sbg:x': 922.71875
    'sbg:y': 283.65625
  - id: abyss_assembly_k_90_kc_3
    outputSource:
      - ABYSS_k_90_kc_3/assembly
    type: File
    'sbg:x': 922.71875
    'sbg:y': 176.828125
  - id: abyss_assembly_k_95_kc_4
    outputSource:
      - ABYSS_k_95_kc_4/assembly
    type: File
    'sbg:x': 922.71875
    'sbg:y': 70
  - id: abyss_assembly_k_135_kc_2
    outputSource:
      - ABYSS_k_135_kc_2/assembly
    type: File
    'sbg:x': 922.71875
    'sbg:y': 497.3125
  - id: abyss_assembly_k_140_kc_4
    outputSource:
      - ABYSS_k_140_kc_4/assembly
    type: File
    'sbg:x': 922.71875
    'sbg:y': 390.484375
steps:
  - id: ABYSS_k_90_kc_2
    in:
      - id: partial_command_filename
        source: prepare_abyss_configuration_file/abyss_command_line
      - id: cpu
        source: cpu
      - id: directory_with_input_reads
        source: directory_with_input_reads
      - id: k_mer_size
        default: 90
      - id: min_k_mer_for_bm
        default: 2
    out:
      - id: assembly
    run: ./assemble.cwl
    label: ABYSS_k_90_kc_2
    'sbg:x': 611.484375
    'sbg:y': 269.65625
  - id: ABYSS_k_90_kc_3
    in:
      - id: partial_command_filename
        source: prepare_abyss_configuration_file/abyss_command_line
      - id: cpu
        source: cpu
      - id: directory_with_input_reads
        source: directory_with_input_reads
      - id: k_mer_size
        default: 90
      - id: min_k_mer_for_bm
        default: 3
    out:
      - id: assembly
    run: ./assemble.cwl
    label: ABYSS_k_90_kc_3
    'sbg:x': 611.484375
    'sbg:y': 134.828125
  - id: ABYSS_k_95_kc_4
    in:
      - id: partial_command_filename
        source: prepare_abyss_configuration_file/abyss_command_line
      - id: cpu
        source: cpu
      - id: directory_with_input_reads
        source: directory_with_input_reads
      - id: k_mer_size
        default: 95
      - id: min_k_mer_for_bm
        default: 4
    out:
      - id: assembly
    run: ./assemble.cwl
    label: ABYSS_k_95_kc_4
    'sbg:x': 611.484375
    'sbg:y': 0
  - id: ABYSS_k_135_kc_2
    in:
      - id: partial_command_filename
        source: prepare_abyss_configuration_file/abyss_command_line
      - id: cpu
        source: cpu
      - id: directory_with_input_reads
        source: directory_with_input_reads
      - id: k_mer_size
        default: 135
      - id: min_k_mer_for_bm
        default: 2
    out:
      - id: assembly
    run: ./assemble.cwl
    label: ABYSS_k_135_kc_2
    'sbg:x': 611.484375
    'sbg:y': 539.3125
  - id: ABYSS_k_140_kc_4
    in:
      - id: partial_command_filename
        source: prepare_abyss_configuration_file/abyss_command_line
      - id: cpu
        source: cpu
      - id: directory_with_input_reads
        source: directory_with_input_reads
      - id: k_mer_size
        default: 140
      - id: min_k_mer_for_bm
        default: 4
    out:
      - id: assembly
    run: ./assemble.cwl
    label: ABYSS_k_140_kc_4
    'sbg:x': 611.484375
    'sbg:y': 404.484375
  - id: prepare_abyss_configuration_file
    in:
      - id: directory_with_input_reads
        source: directory_with_input_reads
    out:
      - id: abyss_command_line
    run: >-
      ../../fungal_genome_assemblies_and_annotation/0.0.1/prepare_abyss_configuration_file.cwl
    label: prepare_abyss_configuration_file
    'sbg:x': 264.5
    'sbg:y': 283.65625
requirements: []
