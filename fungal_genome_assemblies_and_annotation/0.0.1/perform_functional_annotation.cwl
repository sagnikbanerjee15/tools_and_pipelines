class: Workflow
cwlVersion: v1.0
id: perform_functional_annotation
label: perform_functional_annotation
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: threads
    type: int
    'sbg:x': -937.1478881835938
    'sbg:y': 233.43003845214844
  - id: reference
    type: File
    'sbg:x': -931.5553588867188
    'sbg:y': 409.3693542480469
  - id: gtf
    type: File
    'sbg:x': -926.053466796875
    'sbg:y': 571.1797485351562
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
        source: convert_gtf_to_peptide_sequences/peptide_fasta
      - id: mode
        default: FUNGUS
    out:
      - id: output_predictions
      - id: predicted_CSEPs
      - id: predicted_nonCSEPs
    run: ../../effectorp/3/find_cseps_effectorp.cwl
    label: find_cseps_effectorp
    'sbg:x': 158.45506286621094
    'sbg:y': 495.51422119140625
  - id: find_signal_peptides
    in:
      - id: peptide_fasta
        source: convert_gtf_to_peptide_sequences/peptide_fasta
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
        source: convert_gtf_to_peptide_sequences/peptide_fasta
    out:
      - id: output_dir_deeploc
    run: ../../deeploc/2/find_localizing_region_deeploc.cwl
    label: find_localizing_region_deeploc
    'sbg:x': 157.22752380371094
    'sbg:y': 347.508544921875
  - id: find_localizing_region_localizer
    in:
      - id: peptide_fasta
        source: convert_gtf_to_peptide_sequences/peptide_fasta
    out:
      - id: localizer_output_directory
    run: ../../localizer/1.0.5/find_localizing_region_localizer.cwl
    label: find_localizing_region_localizer
    'sbg:x': 163.3651885986328
    'sbg:y': 234.37088012695312
  - id: blastn_against_ncbi_db
    in:
      - id: query
        source: convert_gtf_to_fasta/transcripts_fasta
      - id: threads
        source: threads
      - id: blast_db
        default: nt
    out:
      - id: blast_results
    run: ../../ncbi_blast/2.13.0/blastn_against_ncbi_db.cwl
    label: blastn_against_ncbi_db
    'sbg:x': 152.5390625
    'sbg:y': 710.5119018554688
  - id: convert_gtf_to_peptide_sequences
    in:
      - id: reference
        source: reference
      - id: gtf
        source: gtf
    out:
      - id: peptide_fasta
    run: ../../gffread/0.12.1/convert_gtf_to_peptide_sequences.cwl
    label: convert_gtf_to_peptide_sequences
    'sbg:x': -505
    'sbg:y': 296.3310546875
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
    'sbg:x': -469.1376647949219
    'sbg:y': 539
requirements: []