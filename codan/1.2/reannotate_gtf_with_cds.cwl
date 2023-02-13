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
  - id: output_with_cds_codan
    outputSource:
      - annotate_gtf_with_cds/output_with_cds
    type: File
    'sbg:x': 1024.740478515625
    'sbg:y': 214
  - id: output_with_cds_longest_orf
    outputSource:
      - annotate_gtf_with_cds_1/output_with_cds
    type: File
    'sbg:x': 1024.740478515625
    'sbg:y': 107
  - id: output_longest_ORF
    outputSource:
      - annotate_longest_orf/output_longest_ORF
    type: File
    'sbg:x': 623.5733642578125
    'sbg:y': 472.5
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
      - id: output_gtf
    run: ./codan_predict_cds.cwl
    label: codan_predict_cds
    'sbg:x': 373.0733642578125
    'sbg:y': 93
  - id: annotate_gtf_with_cds
    in:
      - id: gtf_file_without_cds
        source: gtf
      - id: gtf_from_cds_prediction_program
        source: codan_predict_cds/output_gtf
      - id: prepend_string_to_filename
        default: codan
    out:
      - id: output_with_cds
    run: >-
      ../../fungal_genome_assemblies_and_annotation/0.0.1/annotate_gtf_with_cds.cwl
    label: annotate_gtf_with_CDS
    'sbg:x': 660.8546142578125
    'sbg:y': 214
  - id: annotate_longest_orf
    in:
      - id: transcripts_fasta
        source: convert_gtf_to_fasta/transcripts_fasta
    out:
      - id: output_longest_ORF
    run: >-
      ../../fungal_genome_assemblies_and_annotation/0.0.1/annotate_longest_orf.cwl
    label: annotate_longest_ORF
    'sbg:x': 373.0733642578125
    'sbg:y': 214
  - id: annotate_gtf_with_cds_1
    in:
      - id: gtf_file_without_cds
        source: gtf
      - id: gtf_from_cds_prediction_program
        source: annotate_longest_orf/output_longest_ORF
      - id: prepend_string_to_filename
        default: longest_orf
    out:
      - id: output_with_cds
    run: >-
      ../../fungal_genome_assemblies_and_annotation/0.0.1/annotate_gtf_with_cds.cwl
    label: annotate_gtf_with_CDS
    'sbg:x': 660.8546142578125
    'sbg:y': 93
requirements: []
