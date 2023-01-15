class: Workflow
cwlVersion: v1.0
id: assemble_scaffold_validate
label: assemble_scaffold_validate
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: directory_with_input_reads_RNA
    type: Directory
    'sbg:x': 0
    'sbg:y': 285.7109375
  - id: directory_with_input_reads_DNA
    type: Directory
    'sbg:x': 0
    'sbg:y': 392.4453125
  - id: cpu
    type: int?
    'sbg:x': 0
    'sbg:y': 499.1015625
outputs:
  - id: rascaf_scaffold
    outputSource:
      - rascaf_SOAPDENOVO2/rascaf_scaffold
    type: File
    'sbg:x': 969.4457397460938
    'sbg:y': -18.392581939697266
steps:
  - id: output_2_read_pair_files
    in:
      - id: directory_with_input_reads
        source: directory_with_input_reads_RNA
    out:
      - id: left_reads
      - id: right_reads
    run: ./output_2_read_pair_files.cwl
    label: output_2_read_pair_files
    'sbg:x': 313.015625
    'sbg:y': 311.078125
  - id: generate_assemblies
    in:
      - id: directory_with_input_reads_dna
        source: directory_with_input_reads_DNA
      - id: cpu
        source: cpu
    out:
      - id: soapdenovo2_assembly
      - id: megahit_assembly
      - id: abyss_assembly
    run: ./generate_assemblies.cwl
    label: generate_assemblies
    'sbg:x': 316.89141845703125
    'sbg:y': 480.6167297363281
  - id: rascaf_SOAPDENOVO2
    in:
      - id: raw_assembly_filename
        source: generate_assemblies/soapdenovo2_assembly
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: threads
        source: cpu
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: rascaf_scaffold
    run: ../../rascaf/1.0.2/perform_scaffolding_rascaf.cwl
    label: rascaf_SOAPDENOVO2
    'sbg:x': 721.3901977539062
    'sbg:y': 0
requirements:
  - class: SubworkflowFeatureRequirement
