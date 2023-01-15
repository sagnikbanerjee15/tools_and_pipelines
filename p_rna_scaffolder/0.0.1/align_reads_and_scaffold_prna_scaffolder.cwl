class: Workflow
cwlVersion: v1.0
id: align_reads_and_scaffold_prna_scaffolder
label: align_reads_and_scaffold_prna_scaffolder
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: threads
    type: int?
    'sbg:x': 0
    'sbg:y': 0
  - id: raw_input_files_pair1
    type: File
    'sbg:x': 0
    'sbg:y': 214
  - id: contig_filename
    type: File
    'sbg:x': 0
    'sbg:y': 321
  - id: raw_input_files_pair2
    type: File?
    'sbg:x': 0
    'sbg:y': 107
outputs:
  - id: prna_scaffolder_output
    outputSource:
      - scaffold_prnascaffolder/prna_scaffolder_output
    type: Directory
    'sbg:x': 997.621337890625
    'sbg:y': -83
steps:
  - id: scaffold_prnascaffolder
    in:
      - id: alignment_samfilename
        source: samtools_view/output_sam
      - id: contigs_filename
        source: contig_filename
      - id: left_fastq
        source: raw_input_files_pair1
      - id: right_fastq
        source: raw_input_files_pair2
      - id: eukaryote
        default: true
      - id: threads
        source: threads
    out:
      - id: prna_scaffolder_output
    run: ./scaffold_prnascaffolder.cwl
    label: scaffold_prnascaffolder
    'sbg:x': 801.984375
    'sbg:y': -142
  - id: star_generate_index_and_align
    in:
      - id: threads
        source: threads
      - id: reference
        source: contig_filename
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
    'sbg:x': 359.984375
    'sbg:y': 196
  - id: samtools_view
    in:
      - id: input_alignment
        source: star_generate_index_and_align/alignment_file
      - id: output_format
        default: SAM
      - id: include_header
        default: false
      - id: threads
        source: threads
    out:
      - id: output_bam
      - id: output_sam
      - id: output_cram
    run: ../../samtools/1.15.1/samtools_view.cwl
    label: samtools view
    'sbg:x': 649.621337890625
    'sbg:y': 77
requirements:
  - class: SubworkflowFeatureRequirement
