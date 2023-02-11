class: Workflow
cwlVersion: v1.0
id: reannotate_gtf_with_cds
label: reannotate_gtf_with_CDS
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: reference
    type: File
    'sbg:x': -354.89886474609375
    'sbg:y': -253.5
  - id: gtf
    type: File
    'sbg:x': -353.89886474609375
    'sbg:y': -12.5
outputs:
  - id: output_directory
    outputSource:
      - codan_predict_cds/output_directory
    type: Directory
    'sbg:x': 110.10113525390625
    'sbg:y': -144.5
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
    'sbg:x': -227.8984375
    'sbg:y': -143.5
  - id: codan_predict_cds
    in:
      - id: transcripts_fasta
        source: convert_gtf_to_fasta/transcripts_fasta
    out:
      - id: output_directory
    run: ./codan_predict_cds.cwl
    label: codan_predict_cds
    'sbg:x': -16.89886474609375
    'sbg:y': -122.5
requirements: []
