class: Workflow
cwlVersion: v1.0
id: perform_gene_annotation
label: perform_gene_annotation
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: threads
    type: int
    'sbg:x': 0
    'sbg:y': 0
  - id: reference
    type: File
    'sbg:x': 0
    'sbg:y': 107
  - id: raw_input_files_pair1
    type: File
    'sbg:x': 0
    'sbg:y': 321
  - id: raw_input_files_pair2
    type: File?
    'sbg:x': 0
    'sbg:y': 214
outputs:
  - id: log
    outputSource:
      - star_generate_index_and_align/log
    type: File
    'sbg:x': 560.2098388671875
    'sbg:y': 267.5
  - id: splice_junctions
    outputSource:
      - star_generate_index_and_align/splice_junctions
    type: File
    'sbg:x': 560.2098388671875
    'sbg:y': 160.5
  - id: stringtie_assembly
    outputSource:
      - stringtie_assemble/stringtie_assembly
    type: File
    'sbg:x': 894.2098388671875
    'sbg:y': 160.5
  - id: spades_assembly
    outputSource:
      - spades_assemble/spades_assembly
    type: Directory
    'sbg:x': 762.9091186523438
    'sbg:y': -303.7312316894531
steps:
  - id: star_generate_index_and_align
    in:
      - id: threads
        source: threads
      - id: reference
        source: reference
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
    'sbg:x': 218.984375
    'sbg:y': 132.5
  - id: stringtie_assemble
    in:
      - id: reference_aligned_file
        source: star_generate_index_and_align/alignment_file
      - id: threads
        source: threads
      - id: reference
        source: reference
    out:
      - id: stringtie_assembly
    run: ../../stringtie/2.2.1/stringtie_assemble.cwl
    label: stringtie_assemble
    'sbg:x': 560.2098388671875
    'sbg:y': 39.5
  - id: spades_assemble
    in:
      - id: rna
        default: true
      - id: mate1
        source: raw_input_files_pair1
      - id: mate2
        source: raw_input_files_pair2
      - id: threads
        source: threads
    out:
      - id: spades_assembly
    run: ../../spades/3.15.5/assemble.cwl
    label: spades_assemble
    'sbg:x': 631
    'sbg:y': -183
requirements:
  - class: SubworkflowFeatureRequirement
