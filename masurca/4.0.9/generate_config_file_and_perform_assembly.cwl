class: Workflow
cwlVersion: v1.0
id: generate_config_file_and_perform_assembly
label: generate_config_file_and_perform_assembly
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: cpu
    type: int?
    'sbg:x': -456.39886474609375
    'sbg:y': 113.5
  - id: directory_with_input_reads
    type: Directory
    'sbg:x': -469.3898620605469
    'sbg:y': -28.5
outputs:
  - id: assembly_fasta
    outputSource:
      - assemble/assembly_fasta
    type: File?
    'sbg:x': 331.73199462890625
    'sbg:y': -129.5
  - id: modified_config_file
    outputSource:
      - prepare_masurca_configuration_file/modified_config_file
    type: File?
    'sbg:x': 157.1171875
    'sbg:y': 19.5
steps:
  - id: generate_configuration_file
    in: []
    out:
      - id: output_config_filename
      - id: stdout
      - id: stderr
    run: ./generate_configuration_file.cwl
    label: generate_configuration_file
    'sbg:x': -331
    'sbg:y': -272
  - id: assemble
    in:
      - id: raw_fastq_directory
        source: directory_with_input_reads
      - id: config_file
        source: prepare_masurca_configuration_file/modified_config_file
    out:
      - id: assemble_script
      - id: assembly_fasta
    run: ./assemble.cwl
    label: assemble
    'sbg:x': 141
    'sbg:y': -211
  - id: prepare_masurca_configuration_file
    in:
      - id: directory_with_input_reads
        source: directory_with_input_reads
      - id: input_configuration_file
        source: generate_configuration_file/output_config_filename
      - id: cpu
        source: cpu
    out:
      - id: modified_config_file
    run: >-
      ../../fungal_genome_assemblies_and_annotation/0.0.1/prepare_masurca_configuration_file.cwl
    label: prepare_masurca_configuration_file
    'sbg:x': -31
    'sbg:y': -100
requirements: []
