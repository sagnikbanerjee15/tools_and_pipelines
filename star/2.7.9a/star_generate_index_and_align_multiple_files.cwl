class: Workflow
cwlVersion: v1.0
id: star_generate_index_and_align_multiple_files
label: star_generate_index_and_align_multiple_files
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: threads
    type: int
    'sbg:x': -470
    'sbg:y': -255
  - id: reference
    type: File
    'sbg:x': -497
    'sbg:y': -68
  - id: directory_of_input_reads
    type: Directory
    'sbg:x': -658
    'sbg:y': 232
outputs:
  - id: log
    outputSource:
      - star_align/log
    type: File
    'sbg:x': 196.97613525390625
    'sbg:y': -140.5
steps:
  - id: star_align
    in:
      - id: threads
        source: threads
      - id: genome_directory
        source: calculate_parameters_and_generate_star_index/star_index_directory
      - id: raw_input_files_pair1
        source: merge_multiple_paired_ended_reads/pair1
      - id: raw_input_files_pair2
        source: merge_multiple_paired_ended_reads/pair2
      - id: min_intron_length
        default: 20
      - id: max_intron_length
        default: 10000
      - id: allow_soft_clipping
        default: true
    out:
      - id: alignment_file
      - id: log
      - id: splice_junctions
      - id: unmapped_1
      - id: unmapped_2
    run: ./star_align.cwl
    label: star_align
    'sbg:x': -25
    'sbg:y': -120
  - id: merge_multiple_paired_ended_reads
    in:
      - id: directory_of_input_reads
        source: directory_of_input_reads
    out:
      - id: pair1
      - id: pair2
    run: ./merge_multiple_paired_ended_reads.cwl
    label: merge_multiple_paired_ended_reads
    'sbg:x': -413
    'sbg:y': 127
  - id: calculate_parameters_and_generate_star_index
    in:
      - id: reference
        source: reference
      - id: cpu
        source: threads
    out:
      - id: star_index_directory
    run: ./calculate_parameters_and_generate_star_index.cwl
    label: calculate_parameters_and_generate_star_index
    'sbg:x': -83
    'sbg:y': 170
requirements:
  - class: SubworkflowFeatureRequirement
