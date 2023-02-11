class: Workflow
cwlVersion: v1.0
id: reannotate_gtf_with_cds
label: reannotate_gtf_with_CDS
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: reference
    type: File
    'sbg:x': 0
    'sbg:y': 107
  - id: gtf
    type: File
    'sbg:x': 0
    'sbg:y': 321
  - id: threads
    type: int?
    'sbg:x': 0
    'sbg:y': 0
  - id: model
    type:
      type: enum
      symbols:
        - VERT_full
        - VERT_partial
        - FUNGI_full
        - FUNGI_partial
        - PLANTS_full
        - PLANTS_partial
        - INV_full
        - INV_partial
      name: model
    'sbg:x': 0
    'sbg:y': 214
outputs:
  - id: output_directory
    outputSource:
      - codan_predict_cds/output_directory
    type: Directory
    'sbg:x': 655.56884765625
    'sbg:y': 160.5
steps:
  - id: convert_gtf_to_fasta
    in:
      - id: reference
        source: reference
      - id: gtf
        source: gtf
    out:
      - id: transcripts_fasta
    run: ../../gffread/0.12.1/convert_gtf_to_fasta.cwl
    label: convert_gtf_to_fasta
    'sbg:x': 133.421875
    'sbg:y': 153.5
  - id: codan_predict_cds
    in:
      - id: transcripts_fasta
        source: convert_gtf_to_fasta/transcripts_fasta
      - id: threads
        source: threads
      - id: model
        source: model
    out:
      - id: output_directory
    run: ./codan_predict_cds.cwl
    label: codan_predict_cds
    'sbg:x': 373.0733947753906
    'sbg:y': 146.5
requirements: []
