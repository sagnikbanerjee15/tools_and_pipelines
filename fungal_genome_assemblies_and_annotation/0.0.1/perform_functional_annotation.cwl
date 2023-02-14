class: Workflow
cwlVersion: v1.0
id: perform_functional_annotation
label: perform_functional_annotation
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: peptide_fasta
    type: File
    'sbg:x': -223.4106903076172
    'sbg:y': 321
  - id: threads
    type: int
    'sbg:x': -235.00341796875
    'sbg:y': 134.59271240234375
  - id: transcripts_fasta
    type: File
    'sbg:x': -220.73947143554688
    'sbg:y': 495.32196044921875
outputs:
  - id: predicted_nonCSEPs
    outputSource:
      - find_cseps_effectorp/predicted_nonCSEPs
    type: File
    'sbg:x': 463.84375
    'sbg:y': 357
  - id: predicted_CSEPs
    outputSource:
      - find_cseps_effectorp/predicted_CSEPs
    type: File
    'sbg:x': 448.84375
    'sbg:y': 518
  - id: output_predictions
    outputSource:
      - find_cseps_effectorp/output_predictions
    type: File
    'sbg:x': 451.84375
    'sbg:y': 657
  - id: outdir_signalp
    outputSource:
      - find_signal_peptides/outdir
    type: Directory
    'sbg:x': 458.84375
    'sbg:y': -63.988067626953125
  - id: output_dir_deeploc
    outputSource:
      - find_localizing_region_deeploc/output_dir_deeploc
    type: Directory
    'sbg:x': 453.84375
    'sbg:y': 189
  - id: localizer_output_directory
    outputSource:
      - find_localizing_region_localizer/localizer_output_directory
    type: Directory
    'sbg:x': 452.84375
    'sbg:y': 69
  - id: blast_results
    outputSource:
      - blastn_against_ncbi_db/blast_results
    type: File
    'sbg:x': 472.53912353515625
    'sbg:y': 896.5029907226562
steps:
  - id: find_cseps_effectorp
    in:
      - id: peptide_fasta
        source: peptide_fasta
      - id: mode
        default: FUNGUS
    out:
      - id: output_predictions
      - id: predicted_CSEPs
      - id: predicted_nonCSEPs
    run: ../../effectorp/3/find_cseps_effectorp.cwl
    label: find_cseps_effectorp
    'sbg:x': 156.28125
    'sbg:y': 428
  - id: find_signal_peptides
    in:
      - id: peptide_fasta
        source: peptide_fasta
      - id: threads
        source: threads
      - id: organism
        default: eukarya
    out:
      - id: outdir
    run: ../../signalp/6/find_signal_peptides.cwl
    label: find_signal_peptides
    'sbg:x': 156.28125
    'sbg:y': 86
  - id: find_localizing_region_deeploc
    in:
      - id: peptide_fasta
        source: peptide_fasta
    out:
      - id: output_dir_deeploc
    run: ../../deeploc/2/find_localizing_region_deeploc.cwl
    label: find_localizing_region_deeploc
    'sbg:x': 156.28125
    'sbg:y': 307
  - id: find_localizing_region_localizer
    in:
      - id: peptide_fasta
        source: peptide_fasta
    out:
      - id: localizer_output_directory
    run: ../../localizer/1.0.5/find_localizing_region_localizer.cwl
    label: find_localizing_region_localizer
    'sbg:x': 156.28125
    'sbg:y': 200
  - id: blastn_against_ncbi_db
    in:
      - id: query
        source: transcripts_fasta
      - id: threads
        source: threads
    out:
      - id: blast_results
    run: ../../ncbi_blast/2.13.0/blastn_against_ncbi_db.cwl
    label: blastn_against_ncbi_db
    'sbg:x': 152.5390625
    'sbg:y': 710.5119018554688
requirements: []
