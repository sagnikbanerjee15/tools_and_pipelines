class: Workflow
cwlVersion: v1.0
id: compare_denovo_and_genome_guided_transcriptomes
label: compare_denovo_and_genome_guided_transcriptomes
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: genomic_reference
    type: File
    'sbg:x': -1
    'sbg:y': 275
  - id: gtf
    type: File
    'sbg:x': 0
    'sbg:y': 405
  - id: threads
    type: int?
    'sbg:x': 0
    'sbg:y': 0
  - id: denovo_transcripts
    type: File
    'sbg:x': 0
    'sbg:y': 142
outputs:
  - id: blast_results
    outputSource:
      - blastn/blast_results
    type: File
    'sbg:x': 679.5421142578125
    'sbg:y': 160.5
steps:
  - id: convert_gtf_to_fasta
    in:
      - id: reference
        source: genomic_reference
      - id: gtf
        source: gtf
    out:
      - id: transcripts_fasta
    run: ../../gffread/0.12.1/convert_gtf_to_fasta.cwl
    label: convert_gtf_to_fasta
    'sbg:x': 195.796875
    'sbg:y': 334.5
  - id: blastn
    in:
      - id: reference
        source: denovo_transcripts
      - id: query
        source: convert_gtf_to_fasta/transcripts_fasta
      - id: threads
        source: threads
    out:
      - id: blast_results
    run: ../../ncbi_blast/2.13.0/blastn.cwl
    label: blastn
    'sbg:x': 378.4483947753906
    'sbg:y': 145.5
requirements: []
