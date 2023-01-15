class: Workflow
cwlVersion: v1.0
id: generate_assemblies
label: generate_assemblies
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: directory_with_input_reads_dna
    type: Directory
    'sbg:x': 0
    'sbg:y': 135.00001525878906
  - id: cpu
    type: int?
    'sbg:x': -4
    'sbg:y': 269
outputs:
  - id: soapdenovo2_assembly
    outputSource:
      - SOAPdenovo2/output_fasta
    type: File?
    label: soapdenovo2_assembly
    'sbg:x': 634.2452392578125
    'sbg:y': 28.000015258789062
  - id: megahit_assembly
    outputSource:
      - MEGAHIT/assembled_out
    type: File?
    label: megahit_assembly
    'sbg:x': 634.2452392578125
    'sbg:y': 135.00001525878906
  - id: abyss_assembly
    outputSource:
      - abyss_assemble/abyss_assembly_output
    type: File
    'sbg:x': 634.2452392578125
    'sbg:y': 349
steps:
  - id: SOAPdenovo2
    in:
      - id: directory_with_input_reads
        source: directory_with_input_reads_dna
      - id: cpu
        source: cpu
    out:
      - id: output_fasta
    run: ../../soapdenovo2/2.04/generate_config_file_and_assemble.cwl
    label: SOAPdenovo2
    'sbg:x': 264.5
    'sbg:y': 0
  - id: MEGAHIT
    in:
      - id: directory_with_input_reads
        source: directory_with_input_reads_dna
      - id: cpu
        source: cpu
      - id: min-count
        default: 2
      - id: k-min
        default: 21
      - id: k-max
        default: 141
      - id: k-step
        default: 12
      - id: min-contig-len
        default: 1000
    out:
      - id: assembled_out
    run: ../../megahit/1.2.9/merge_multiple_paired_ended_samples_and_assemble.cwl
    label: MEGAHIT
    'sbg:x': 264.5
    'sbg:y': 121
  - id: abyss_assemble
    in:
      - id: directory_with_input_reads
        source: directory_with_input_reads_dna
      - id: threads
        source: cpu
    out:
      - id: abyss_assembly_output
    run: ../../abyss/2.3.5/abyss_assemble.cwl
    label: abyss_assemble
    'sbg:x': 264.5
    'sbg:y': 363
requirements:
  - class: SubworkflowFeatureRequirement
