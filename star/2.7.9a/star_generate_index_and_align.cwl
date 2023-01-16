class: Workflow
cwlVersion: v1.0
id: star_generate_index_and_align
label: star_generate_index_and_align
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: threads
    type: int
    'sbg:x': -49
    'sbg:y': -28.8984375
  - id: reference
    type: File
    'sbg:x': -12
    'sbg:y': 347.7265625
  - id: raw_input_files_pair1
    type: File
    'sbg:x': 133.421875
    'sbg:y': 206.359375
  - id: raw_input_files_pair2
    type: File?
    'sbg:x': 133.421875
    'sbg:y': 99.734375
outputs:
  - id: unmapped_2
    outputSource:
      - star_align/unmapped_2
    type: File?
    'sbg:x': 773.3973388671875
    'sbg:y': 0
  - id: unmapped_1
    outputSource:
      - star_align/unmapped_1
    type: File?
    'sbg:x': 773.3973388671875
    'sbg:y': 106.625
  - id: log
    outputSource:
      - star_align/log
    type: File
    'sbg:x': 773.3973388671875
    'sbg:y': 320.0390625
  - id: alignment_file
    outputSource:
      - star_align/alignment_file
    type: File
    'sbg:x': 773.3973388671875
    'sbg:y': 426.7734375
  - id: splice_junctions
    outputSource:
      - star_align/splice_junctions
    type: File
    'sbg:x': 773.3973388671875
    'sbg:y': 213.3046875
steps:
  - id: star_align
    in:
      - id: threads
        source: threads
      - id: genome_directory
        source: calculate_parameters_and_generate_star_index/star_index_directory
      - id: raw_input_files_pair1
        source: raw_input_files_pair1
      - id: raw_input_files_pair2
        source: raw_input_files_pair2
      - id: min_intron_length
        default: 20
      - id: max_intron_length
        default: 10000
      - id: RG_id
        default: 1
      - id: sam_attributes
        default: NH HI AS nM NM MD jM jI XS
      - id: outFilterScoreMinOverLread
        default: 0.75
      - id: outFilterMatchNminOverLread
        default: 0.75
      - id: max_multimaps
        default: 500
      - id: max_memory
        default: 10
      - id: allow_soft_clipping
        default: true
      - id: min_overhang_length_for_SJ_not_in_DB
        default: 12
      - id: min_overhang_length_for_SJ_in_DB
        default: 8
    out:
      - id: alignment_file
      - id: log
      - id: splice_junctions
      - id: unmapped_1
      - id: unmapped_2
    run: ./star_align.cwl
    label: star_align
    'sbg:x': 432.171875
    'sbg:y': 185.359375
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
    'sbg:x': 133.421875
    'sbg:y': 320.0390625
requirements:
  - class: SubworkflowFeatureRequirement