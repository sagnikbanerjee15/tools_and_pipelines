class: Workflow
cwlVersion: v1.0
id: perform_scaffolding_rascaf
label: perform_scaffolding_rascaf
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: raw_assembly_filename
    type: File
    'sbg:x': -74.99243927001953
    'sbg:y': -190
  - id: raw_input_files_pair1
    type: File
    'sbg:x': 0
    'sbg:y': 321
  - id: threads
    type: int
    'sbg:x': 0
    'sbg:y': 0
  - id: raw_input_files_pair2
    type: File?
    'sbg:x': 0
    'sbg:y': 214
outputs:
  - id: rascaf_scaffold
    outputSource:
      - rascaf_join/rascaf_scaffold
    type: File
    'sbg:x': 1257.705078125
    'sbg:y': 214
steps:
  - id: rascaf
    in:
      - id: position_sorted_alignment_bamfilename
        source: star_generate_index_and_align/alignment_file
      - id: raw_assembly_filename
        source: raw_assembly_filename
    out:
      - id: rascaf_output
    run: ./rascaf.cwl
    label: rascaf
    'sbg:x': 583.4442138671875
    'sbg:y': 207
  - id: rascaf_join
    in:
      - id: rascaf_connection_file
        source: rascaf/rascaf_output
    out:
      - id: rascaf_scaffold
    run: ./rascaf_join.cwl
    label: rascaf_join
    'sbg:x': 968.814453125
    'sbg:y': 214
  - id: star_generate_index_and_align
    in:
      - id: threads
        source: threads
      - id: reference
        source: raw_assembly_filename
      - id: raw_input_files_pair1
        source: raw_input_files_pair1
      - id: raw_input_files_pair2
        source: raw_input_files_pair2
    out:
      - id: unmapped_2
      - id: unmapped_1
      - id: log
      - id: alignment_file
      - id: splice_junctions
    run: ../../star/2.7.9a/star_generate_index_and_align.cwl
    label: star_generate_index_and_align
    'sbg:x': 242.21875
    'sbg:y': 186
requirements:
  - class: SubworkflowFeatureRequirement
