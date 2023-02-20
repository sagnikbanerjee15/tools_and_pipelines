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
    'sbg:x': 805
    'sbg:y': -177.99783325195312
  - id: output_with_cds_longest_orf
    outputSource:
      - annotate_gtf_with_cds_1/output_with_cds
    type: File
    'sbg:x': 917
    'sbg:y': 489
  - id: peptide_fasta_codan
    outputSource:
      - convert_gtf_to_peptide_sequences/peptide_fasta
    type: File
    'sbg:x': 1133.2088623046875
    'sbg:y': -171.99783325195312
  - id: peptide_fasta_longest_orf
    outputSource:
      - convert_gtf_to_peptide_sequences_1/peptide_fasta
    type: File
    'sbg:x': 1167.2091064453125
    'sbg:y': 211.00201416015625
  - id: summary_codan
    outputSource:
      - generate_summary_statistics_from_peptides/summary
    type: File
    'sbg:x': 1369
    'sbg:y': -33
  - id: summary_longest_orf
    outputSource:
      - generate_summary_statistics_from_peptides_1/summary
    type: File
    'sbg:x': 1410.2000732421875
    'sbg:y': 334.00201416015625
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
    'sbg:x': 613
    'sbg:y': -114
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
    'sbg:x': 660
    'sbg:y': 316
  - id: convert_gtf_to_peptide_sequences
    in:
      - id: reference
        source: reference
      - id: gtf
        source: annotate_gtf_with_cds/output_with_cds
    out:
      - id: peptide_fasta
    run: ../../gffread/0.12.1/convert_gtf_to_peptide_sequences.cwl
    label: convert_gtf_to_peptide_sequences
    'sbg:x': 987
    'sbg:y': -83
  - id: convert_gtf_to_peptide_sequences_1
    in:
      - id: reference
        source: reference
      - id: gtf
        source: annotate_gtf_with_cds_1/output_with_cds
    out:
      - id: peptide_fasta
    run: ../../gffread/0.12.1/convert_gtf_to_peptide_sequences.cwl
    label: convert_gtf_to_peptide_sequences
    'sbg:x': 960.2091064453125
    'sbg:y': 249.00201416015625
  - id: generate_summary_statistics_from_peptides
    in:
      - id: peptide_fasta
        source: convert_gtf_to_peptide_sequences/peptide_fasta
    out:
      - id: summary
    run: >-
      ../../fungal_genome_assemblies_and_annotation/0.0.1/generate_summary_statistics_from_peptides.cwl
    label: generate_summary_statistics_from_peptides
    'sbg:x': 1210
    'sbg:y': 18
  - id: generate_summary_statistics_from_peptides_1
    in:
      - id: peptide_fasta
        source: convert_gtf_to_peptide_sequences_1/peptide_fasta
    out:
      - id: summary
    run: >-
      ../../fungal_genome_assemblies_and_annotation/0.0.1/generate_summary_statistics_from_peptides.cwl
    label: generate_summary_statistics_from_peptides
    'sbg:x': 1253.2000732421875
    'sbg:y': 392.00201416015625
requirements: []
