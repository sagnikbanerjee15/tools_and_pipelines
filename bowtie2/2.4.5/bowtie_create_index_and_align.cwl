class: Workflow
cwlVersion: v1.0
id: bowtie_create_index_and_align
label: bowtie_create_index_and_align
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: threads
    type: int?
    'sbg:x': 0
    'sbg:y': 88
  - id: mate1
    type: File?
    'sbg:x': 0
    'sbg:y': 428
  - id: mate2
    type: File?
    'sbg:x': 0
    'sbg:y': 321
  - id: max_number_of_multple_alignments
    type: int?
    'sbg:x': 0
    'sbg:y': 207
  - id: reference
    type: File
    'sbg:x': -0.1875
    'sbg:y': 595
outputs:
  - id: log
    outputSource:
      - bowtie_align/log
    type: File
    'sbg:x': 820.0509033203125
    'sbg:y': 215
steps:
  - id: bowtie_align
    in:
      - id: reference
        source: reference
      - id: threads
        source: threads
      - id: mate1
        source: mate1
      - id: mate2
        source: mate2
      - id: max_number_of_multple_alignments
        default: 1000
        source: max_number_of_multple_alignments
    out:
      - id: aligned_samfile
      - id: log
    run: ./bowtie_align.cwl
    label: bowtie_align
    'sbg:x': 567.5421142578125
    'sbg:y': 186
requirements: []
