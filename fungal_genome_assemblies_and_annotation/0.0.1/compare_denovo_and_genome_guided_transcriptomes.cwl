class: Workflow
cwlVersion: v1.0
id: compare_denovo_and_genome_guided_transcriptomes
label: compare_denovo_and_genome_guided_transcriptomes
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: genomic_reference
    type: File
    'sbg:x': 0
    'sbg:y': 214
  - id: gtf
    type: File
    'sbg:x': 0
    'sbg:y': 107
  - id: threads
    type: int?
    'sbg:x': 0
    'sbg:y': 0
  - id: denovo_transcripts
    type: File
    'sbg:x': 0
    'sbg:y': 321
outputs:
  - id: blast_results
    outputSource:
      - blastn/blast_results
    type: File
    'sbg:x': 743.325439453125
    'sbg:y': 214
  - id: output_bam
    outputSource:
      - samtools_sort/output_bam
    type: File?
    'sbg:x': 1031.728271484375
    'sbg:y': 288.5
  - id: bai
    outputSource:
      - samtools_index/bai
    type: File?
    'sbg:x': 1297.1822509765625
    'sbg:y': 214
  - id: output_sam
    outputSource:
      - samtools_view_1/output_sam
    type: File?
    'sbg:x': 1297.1822509765625
    'sbg:y': 107
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
    'sbg:x': 202.796875
    'sbg:y': 214
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
    'sbg:x': 477.87139892578125
    'sbg:y': 214
  - id: minimap2
    in:
      - id: max_secondary_alignments
        default: 1000
      - id: output_format
        default: SAM
      - id: reference
        source: genomic_reference
      - id: raw_reads_filename
        source: denovo_transcripts
      - id: cs_tag
        default: true
      - id: output_MD_tag
        default: true
      - id: eqx
        default: true
      - id: threads
        source: threads
      - id: use_soft_clipping_for_secondary_alignments
        default: true
    out:
      - id: output_sam
      - id: output_paf
    run: ../../minimap2/2.24/minimap2.cwl
    label: minimap2
    'sbg:x': 202.796875
    'sbg:y': 86
  - id: samtools_view
    in:
      - id: input_alignment
        source: minimap2/output_sam
      - id: output_format
        default: BAM
      - id: include_header
        default: true
      - id: threads
        source: threads
    out:
      - id: output_bam
      - id: output_sam
      - id: output_cram
    run: ../../samtools/1.16.1/samtools_view.cwl
    label: samtools view
    'sbg:x': 477.87139892578125
    'sbg:y': 79
  - id: samtools_sort
    in:
      - id: input_alignment
        source: samtools_view/output_bam
      - id: output_format
        default: BAM
      - id: threads
        source: threads
    out:
      - id: output_bam
      - id: output_sam
      - id: output_cram
      - id: stdout
      - id: stderr
    run: ../../samtools/1.16.1/samtools_sort.cwl
    label: samtools sort
    'sbg:x': 743.325439453125
    'sbg:y': 79
  - id: samtools_index
    in:
      - id: bamfilename
        source: samtools_sort/output_bam
      - id: threads
        source: threads
    out:
      - id: bai
      - id: cai
      - id: stdout
      - id: stderr
    run: ../../samtools/1.16.1/samtools_index.cwl
    label: samtools_index
    'sbg:x': 1015.728271484375
    'sbg:y': 4.5
  - id: samtools_view_1
    in:
      - id: input_alignment
        source: samtools_sort/output_bam
      - id: output_format
        default: SAM
      - id: include_header
        default: true
      - id: threads
        source: threads
    out:
      - id: output_bam
      - id: output_sam
      - id: output_cram
    run: ../../samtools/1.16.1/samtools_view.cwl
    label: samtools view
    'sbg:x': 1004.728271484375
    'sbg:y': -155.5
requirements: []
