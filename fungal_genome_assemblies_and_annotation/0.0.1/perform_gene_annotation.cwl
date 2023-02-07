class: Workflow
cwlVersion: v1.0
id: perform_gene_annotation
label: perform_gene_annotation
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: threads
    type: int
    'sbg:x': 0
    'sbg:y': 81.5
  - id: reference
    type: File
    'sbg:x': 0
    'sbg:y': 188.5
  - id: raw_input_files_pair1
    type: File
    'sbg:x': 0
    'sbg:y': 402.5
  - id: raw_input_files_pair2
    type: File?
    'sbg:x': 0
    'sbg:y': 295.5
outputs:
  - id: log
    outputSource:
      - star_generate_index_and_align/log
    type: File
    'sbg:x': 560.2098388671875
    'sbg:y': 470
  - id: splice_junctions
    outputSource:
      - star_generate_index_and_align/splice_junctions
    type: File
    'sbg:x': 808.548828125
    'sbg:y': 77.8752670288086
  - id: stringtie_assembly_only_short_reads
    outputSource:
      - stringtie_assemble/stringtie_assembly
    type: File
    'sbg:x': 809.4474487304688
    'sbg:y': -188.34259033203125
  - id: spades_assembly_file
    outputSource:
      - spades_assemble/spades_assembly_file
    type: File
    'sbg:x': 560.2098388671875
    'sbg:y': 228
  - id: stringtie_assembly_lon_reads_and_short_reads
    outputSource:
      - stringtie_assemble_short_and_long_reads/stringtie_assembly
    type: File
    'sbg:x': 1928.4720458984375
    'sbg:y': 242
steps:
  - id: star_generate_index_and_align
    in:
      - id: threads
        source: threads
      - id: reference
        source: reference
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
    'sbg:x': 218.984375
    'sbg:y': 146.5
  - id: stringtie_assemble
    in:
      - id: reference_aligned_file
        source: star_generate_index_and_align/alignment_file
      - id: threads
        source: threads
      - id: reference
        source: reference
    out:
      - id: stringtie_assembly
    run: ../../stringtie/2.2.1/stringtie_assemble.cwl
    label: stringtie_assemble
    'sbg:x': 560.2098388671875
    'sbg:y': 0
  - id: spades_assemble
    in:
      - id: rna
        default: true
      - id: mate1
        source: raw_input_files_pair1
      - id: mate2
        source: raw_input_files_pair2
      - id: threads
        source: threads
    out:
      - id: spades_assembly_directory
      - id: spades_assembly_file
    run: ../../spades/3.15.5/assemble.cwl
    label: spades_assemble
    'sbg:x': 218.984375
    'sbg:y': 295.5
  - id: stringtie_assemble_short_and_long_reads
    in:
      - id: reference_aligned_short_reads_file
        source: star_generate_index_and_align/alignment_file
      - id: reference
        source: reference
      - id: reference_aligned_long_reads_file
        source: samtools_sort/output_bam
    out:
      - id: stringtie_assembly
    run: ../../stringtie/2.2.1/stringtie_assemble_short_and_long_reads.cwl
    label: stringtie_assemble_short_and_long_reads
    'sbg:x': 1530.0657958984375
    'sbg:y': 228
  - id: minimap2
    in:
      - id: max_secondary_alignments
        default: 1000
      - id: output_format
        default: SAM
      - id: reference
        source: reference
      - id: raw_reads_filename
        source: spades_assemble/spades_assembly_file
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
    'sbg:x': 560.2098388671875
    'sbg:y': 349
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
    'sbg:x': 894.2098388671875
    'sbg:y': 295.5
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
    'sbg:x': 1241.6629638671875
    'sbg:y': 214
requirements:
  - class: SubworkflowFeatureRequirement
