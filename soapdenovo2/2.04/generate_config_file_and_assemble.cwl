class: Workflow
cwlVersion: v1.0
id: generate_config_file_and_assemble
label: generate_config_file_and_assemble
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: directory_with_input_reads
    type: Directory
    'sbg:x': -525
    'sbg:y': -378
  - id: cpu
    type: int?
    'sbg:x': -448
    'sbg:y': -516
outputs:
  - id: output_fasta
    outputSource:
      - assemble/output_fasta
    type: File
    'sbg:x': -13.671875
    'sbg:y': -77.5
steps:
  - id: assemble
    in:
      - id: raw_fastq_directory
        source: directory_with_input_reads
      - id: config_file
        source: prepare_soapdenovo2_configuration_file/modified_config_file
      - id: cpu
        source: cpu
    out:
      - id: output_fasta
    run: ./assemble.cwl
    label: assemble
    'sbg:x': -160
    'sbg:y': -190
  - id: prepare_soapdenovo2_configuration_file
    in:
      - id: directory_with_input_reads
        source: directory_with_input_reads
    out:
      - id: modified_config_file
    run: >-
      ../../fungal_genome_assemblies_and_annotation/0.0.1/prepare_soapdenovo2_configuration_file.cwl
    label: prepare_soapdenovo2_configuration_file
    'sbg:x': -378.734375
    'sbg:y': -149.5
requirements: []
