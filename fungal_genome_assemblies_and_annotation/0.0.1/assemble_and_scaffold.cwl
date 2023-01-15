class: Workflow
cwlVersion: v1.0
id: assemble_and_scaffold
label: assemble_and_scaffold
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: directory_with_input_reads_DNA
    type: Directory
    'sbg:x': -525
    'sbg:y': 5129.65625
  - id: cpu
    type: int?
    'sbg:x': -480
    'sbg:y': 5741.875
  - id: directory_with_input_reads_RNA
    type: Directory
    'sbg:x': -742.99365234375
    'sbg:y': 4355.380859375
outputs:
  - id: soap_denovo2_prna_scaffolder_output
    outputSource:
      - align_reads_and_scaffold_prna_scaffolder/prna_scaffolder_output
    type: Directory
    label: soap_denovo2_prna_scaffolder_output
    'sbg:x': 1485.482177734375
    'sbg:y': 1619.21875
  - id: megahit_prna_scaffolder_output
    outputSource:
      - align_reads_and_scaffold_prna_scaffolder_1/prna_scaffolder_output
    type: Directory
    label: megahit_prna_scaffolder_output
    'sbg:x': 1485.482177734375
    'sbg:y': 1833.65625
  - id: masurca_prna_scaffolder_output
    outputSource:
      - align_reads_and_scaffold_prna_scaffolder_2/prna_scaffolder_output
    type: Directory
    label: masurca_prna_scaffolder_output
    'sbg:x': 1485.482177734375
    'sbg:y': 2048.09375
  - id: abyss_k_95_kc_4_prna_scaffolder_output
    outputSource:
      - align_reads_and_scaffold_prna_scaffolder_3/prna_scaffolder_output
    type: Directory
    label: abyss_k_95_kc_4_prna_scaffolder_output
    'sbg:x': 1485.482177734375
    'sbg:y': 2262.53125
  - id: abyss_k_95_kc_3_prna_scaffolder_output
    outputSource:
      - align_reads_and_scaffold_prna_scaffolder_4/prna_scaffolder_output
    type: Directory
    'sbg:x': 1485.482177734375
    'sbg:y': 2476.96875
  - id: abyss_k_95_kc_2_prna_scaffolder_output
    outputSource:
      - align_reads_and_scaffold_prna_scaffolder_5/prna_scaffolder_output
    type: Directory
    'sbg:x': 1485.482177734375
    'sbg:y': 2691.40625
  - id: abyss_k_90_kc_4_prna_scaffolder_output
    outputSource:
      - align_reads_and_scaffold_prna_scaffolder_6/prna_scaffolder_output
    type: Directory
    'sbg:x': 1485.482177734375
    'sbg:y': 2905.84375
  - id: abyss_k_90_kc_3_prna_scaffolder_output
    outputSource:
      - align_reads_and_scaffold_prna_scaffolder_7/prna_scaffolder_output
    type: Directory
    'sbg:x': 1485.482177734375
    'sbg:y': 3120.28125
  - id: abyss_k_90_kc_2_prna_scaffolder_output
    outputSource:
      - align_reads_and_scaffold_prna_scaffolder_8/prna_scaffolder_output
    type: Directory
    'sbg:x': 1485.482177734375
    'sbg:y': 3334.71875
  - id: abyss_k_140_kc_4_prna_scaffolder_output
    outputSource:
      - align_reads_and_scaffold_prna_scaffolder_9/prna_scaffolder_output
    type: Directory
    'sbg:x': 1485.482177734375
    'sbg:y': 3549.15625
  - id: abyss_k_140_kc_3_prna_scaffolder_output
    outputSource:
      - align_reads_and_scaffold_prna_scaffolder_10/prna_scaffolder_output
    type: Directory
    'sbg:x': 1485.482177734375
    'sbg:y': 3763.59375
  - id: abyss_k_140_kc_2_prna_scaffolder_output
    outputSource:
      - align_reads_and_scaffold_prna_scaffolder_11/prna_scaffolder_output
    type: Directory
    'sbg:x': 1485.482177734375
    'sbg:y': 3978.03125
  - id: abyss_k_135_kc_4_prna_scaffolder_output
    outputSource:
      - align_reads_and_scaffold_prna_scaffolder_12/prna_scaffolder_output
    type: Directory
    'sbg:x': 1485.482177734375
    'sbg:y': 4192.46875
  - id: abyss_k_135_kc_3_prna_scaffolder_output
    outputSource:
      - align_reads_and_scaffold_prna_scaffolder_13/prna_scaffolder_output
    type: Directory
    'sbg:x': 1485.482177734375
    'sbg:y': 4406.90625
  - id: abyss_k_135_kc_2_prna_scaffolder_output
    outputSource:
      - align_reads_and_scaffold_prna_scaffolder_14/prna_scaffolder_output
    type: Directory
    'sbg:x': 1485.482177734375
    'sbg:y': 4621.34375
  - id: abyss_k_130_kc_4_prna_scaffolder_output
    outputSource:
      - align_reads_and_scaffold_prna_scaffolder_15/prna_scaffolder_output
    type: Directory
    'sbg:x': 1485.482177734375
    'sbg:y': 4835.78125
  - id: abyss_k_130_kc_3_prna_scaffolder_output
    outputSource:
      - align_reads_and_scaffold_prna_scaffolder_16/prna_scaffolder_output
    type: Directory
    'sbg:x': 1485.482177734375
    'sbg:y': 5050.21875
  - id: abyss_k_130_kc_2_prna_scaffolder_output
    outputSource:
      - align_reads_and_scaffold_prna_scaffolder_17/prna_scaffolder_output
    type: Directory
    'sbg:x': 1485.482177734375
    'sbg:y': 5264.65625
  - id: abyss_k_125_kc_4_prna_scaffolder_output
    outputSource:
      - align_reads_and_scaffold_prna_scaffolder_18/prna_scaffolder_output
    type: Directory
    'sbg:x': 1485.482177734375
    'sbg:y': 5479.09375
  - id: abyss_k_125_kc_3_prna_scaffolder_output
    outputSource:
      - align_reads_and_scaffold_prna_scaffolder_19/prna_scaffolder_output
    type: Directory
    'sbg:x': 1485.482177734375
    'sbg:y': 5693.53125
  - id: abyss_k_125_kc_2_prna_scaffolder_output
    outputSource:
      - align_reads_and_scaffold_prna_scaffolder_20/prna_scaffolder_output
    type: Directory
    'sbg:x': 1485.482177734375
    'sbg:y': 5907.96875
  - id: abyss_k_120_kc_4_prna_scaffolder_output
    outputSource:
      - align_reads_and_scaffold_prna_scaffolder_21/prna_scaffolder_output
    type: Directory
    'sbg:x': 1485.482177734375
    'sbg:y': 6122.40625
  - id: abyss_k_120_kc_3_prna_scaffolder_output
    outputSource:
      - align_reads_and_scaffold_prna_scaffolder_22/prna_scaffolder_output
    type: Directory
    'sbg:x': 1485.482177734375
    'sbg:y': 6336.84375
  - id: abyss_k_120_kc_2_prna_scaffolder_output
    outputSource:
      - align_reads_and_scaffold_prna_scaffolder_23/prna_scaffolder_output
    type: Directory
    'sbg:x': 1485.482177734375
    'sbg:y': 6551.28125
  - id: abyss_k_115_kc_4_prna_scaffolder_output
    outputSource:
      - align_reads_and_scaffold_prna_scaffolder_24/prna_scaffolder_output
    type: Directory
    'sbg:x': 1485.482177734375
    'sbg:y': 6765.71875
  - id: abyss_k_115_kc_3_prna_scaffolder_output
    outputSource:
      - align_reads_and_scaffold_prna_scaffolder_25/prna_scaffolder_output
    type: Directory
    'sbg:x': 1485.482177734375
    'sbg:y': 6980.15625
  - id: abyss_k_115_kc_2_prna_scaffolder_output
    outputSource:
      - align_reads_and_scaffold_prna_scaffolder_26/prna_scaffolder_output
    type: Directory
    'sbg:x': 1485.482177734375
    'sbg:y': 7194.59375
  - id: abyss_k_110_kc_4_prna_scaffolder_output
    outputSource:
      - align_reads_and_scaffold_prna_scaffolder_27/prna_scaffolder_output
    type: Directory
    'sbg:x': 1485.482177734375
    'sbg:y': 7409.03125
  - id: abyss_k_110_kc_3_prna_scaffolder_output
    outputSource:
      - align_reads_and_scaffold_prna_scaffolder_28/prna_scaffolder_output
    type: Directory
    'sbg:x': 1485.482177734375
    'sbg:y': 7623.46875
  - id: abyss_k_110_kc_2_prna_scaffolder_output
    outputSource:
      - align_reads_and_scaffold_prna_scaffolder_29/prna_scaffolder_output
    type: Directory
    'sbg:x': 1485.482177734375
    'sbg:y': 7837.90625
  - id: abyss_k_105_kc_4_prna_scaffolder_output
    outputSource:
      - align_reads_and_scaffold_prna_scaffolder_30/prna_scaffolder_output
    type: Directory
    'sbg:x': 1485.482177734375
    'sbg:y': 8052.34375
  - id: abyss_k_105_kc_3_prna_scaffolder_output
    outputSource:
      - align_reads_and_scaffold_prna_scaffolder_31/prna_scaffolder_output
    type: Directory
    'sbg:x': 1485.482177734375
    'sbg:y': 8266.78125
  - id: abyss_k_105_kc_2_prna_scaffolder_output
    outputSource:
      - align_reads_and_scaffold_prna_scaffolder_32/prna_scaffolder_output
    type: Directory
    'sbg:x': 1485.482177734375
    'sbg:y': 8481.21875
  - id: abyss_k_100_kc_4_prna_scaffolder_output
    outputSource:
      - align_reads_and_scaffold_prna_scaffolder_33/prna_scaffolder_output
    type: Directory
    'sbg:x': 1485.482177734375
    'sbg:y': 8695.65625
  - id: abyss_k_100_kc_3_prna_scaffolder_output
    outputSource:
      - align_reads_and_scaffold_prna_scaffolder_34/prna_scaffolder_output
    type: Directory
    'sbg:x': 1485.482177734375
    'sbg:y': 8910.09375
  - id: abyss_k_100_kc_2_prna_scaffolder_output
    outputSource:
      - align_reads_and_scaffold_prna_scaffolder_35/prna_scaffolder_output
    type: Directory
    'sbg:x': 1485.482177734375
    'sbg:y': 9124.53125
  - id: soapdenovo2_rascaf_scaffold
    outputSource:
      - perform_scaffolding_rascaf/rascaf_scaffold
    type: File
    'sbg:x': 1485.482177734375
    'sbg:y': 1512
  - id: rmegahit_rascaf_scaffold
    outputSource:
      - perform_scaffolding_rascaf_1/rascaf_scaffold
    type: File
    'sbg:x': 1485.482177734375
    'sbg:y': 1726.4375
  - id: masurca_rascaf_scaffold
    outputSource:
      - perform_scaffolding_rascaf_2/rascaf_scaffold
    type: File
    'sbg:x': 1485.482177734375
    'sbg:y': 1940.875
  - id: abyss_k_95_kc_4_rascaf_output
    outputSource:
      - perform_scaffolding_rascaf_3/rascaf_scaffold
    type: File
    label: abyss_k_95_kc_4_rascaf_output
    'sbg:x': 1485.482177734375
    'sbg:y': 2155.3125
  - id: abyss_k_95_kc_3_rascaf_output
    outputSource:
      - perform_scaffolding_rascaf_4/rascaf_scaffold
    type: File
    'sbg:x': 1485.482177734375
    'sbg:y': 2369.75
  - id: abyss_k_95_kc_2_rascaf_output
    outputSource:
      - perform_scaffolding_rascaf_5/rascaf_scaffold
    type: File
    'sbg:x': 1485.482177734375
    'sbg:y': 2584.1875
  - id: abyss_k_90_kc_4_rascaf_output
    outputSource:
      - perform_scaffolding_rascaf_6/rascaf_scaffold
    type: File
    'sbg:x': 1485.482177734375
    'sbg:y': 2798.625
  - id: abyss_k_90_kc_3_rascaf_output
    outputSource:
      - perform_scaffolding_rascaf_7/rascaf_scaffold
    type: File
    'sbg:x': 1485.482177734375
    'sbg:y': 3013.0625
  - id: abyss_k_90_kc_2_rascaf_output
    outputSource:
      - perform_scaffolding_rascaf_8/rascaf_scaffold
    type: File
    'sbg:x': 1485.482177734375
    'sbg:y': 3227.5
  - id: abyss_k_140_kc_4_rascaf_output
    outputSource:
      - perform_scaffolding_rascaf_9/rascaf_scaffold
    type: File
    'sbg:x': 1485.482177734375
    'sbg:y': 3441.9375
  - id: abyss_k_140_kc_3_rascaf_output
    outputSource:
      - perform_scaffolding_rascaf_10/rascaf_scaffold
    type: File
    'sbg:x': 1485.482177734375
    'sbg:y': 3656.375
  - id: abyss_k_140_kc_2_rascaf_output
    outputSource:
      - perform_scaffolding_rascaf_11/rascaf_scaffold
    type: File
    'sbg:x': 1485.482177734375
    'sbg:y': 3870.8125
  - id: abyss_k_135_kc_4_rascaf_output
    outputSource:
      - perform_scaffolding_rascaf_12/rascaf_scaffold
    type: File
    'sbg:x': 1485.482177734375
    'sbg:y': 4085.25
  - id: abyss_k_135_kc_3_rascaf_output
    outputSource:
      - perform_scaffolding_rascaf_13/rascaf_scaffold
    type: File
    'sbg:x': 1485.482177734375
    'sbg:y': 4299.6875
  - id: abyss_k_135_kc_2_rascaf_output
    outputSource:
      - perform_scaffolding_rascaf_14/rascaf_scaffold
    type: File
    'sbg:x': 1485.482177734375
    'sbg:y': 4514.125
  - id: abyss_k_130_kc_4_rascaf_output
    outputSource:
      - perform_scaffolding_rascaf_15/rascaf_scaffold
    type: File
    'sbg:x': 1485.482177734375
    'sbg:y': 4728.5625
  - id: abyss_k_130_kc_3_rascaf_output
    outputSource:
      - perform_scaffolding_rascaf_16/rascaf_scaffold
    type: File
    'sbg:x': 1485.482177734375
    'sbg:y': 4943
  - id: abyss_k_130_kc_2_rascaf_output
    outputSource:
      - perform_scaffolding_rascaf_17/rascaf_scaffold
    type: File
    'sbg:x': 1485.482177734375
    'sbg:y': 5157.4375
  - id: abyss_k_125_kc_4_rascaf_output
    outputSource:
      - perform_scaffolding_rascaf_18/rascaf_scaffold
    type: File
    'sbg:x': 1485.482177734375
    'sbg:y': 5371.875
  - id: abyss_k_125_kc_3_rascaf_output
    outputSource:
      - perform_scaffolding_rascaf_19/rascaf_scaffold
    type: File
    'sbg:x': 1485.482177734375
    'sbg:y': 5586.3125
  - id: abyss_k_125_kc_2_rascaf_output
    outputSource:
      - perform_scaffolding_rascaf_20/rascaf_scaffold
    type: File
    'sbg:x': 1485.482177734375
    'sbg:y': 5800.75
  - id: abyss_k_120_kc_4_rascaf_output
    outputSource:
      - perform_scaffolding_rascaf_21/rascaf_scaffold
    type: File
    'sbg:x': 1485.482177734375
    'sbg:y': 6015.1875
  - id: abyss_k_120_kc_3_rascaf_output
    outputSource:
      - perform_scaffolding_rascaf_22/rascaf_scaffold
    type: File
    'sbg:x': 1485.482177734375
    'sbg:y': 6229.625
  - id: abyss_k_120_kc_2_rascaf_output
    outputSource:
      - perform_scaffolding_rascaf_23/rascaf_scaffold
    type: File
    'sbg:x': 1485.482177734375
    'sbg:y': 6444.0625
  - id: abyss_k_115_kc_4_rascaf_output
    outputSource:
      - perform_scaffolding_rascaf_24/rascaf_scaffold
    type: File
    'sbg:x': 1485.482177734375
    'sbg:y': 6658.5
  - id: abyss_k_115_kc_3_rascaf_output
    outputSource:
      - perform_scaffolding_rascaf_25/rascaf_scaffold
    type: File
    'sbg:x': 1485.482177734375
    'sbg:y': 6872.9375
  - id: abyss_k_115_kc_2_rascaf_output
    outputSource:
      - perform_scaffolding_rascaf_26/rascaf_scaffold
    type: File
    'sbg:x': 1485.482177734375
    'sbg:y': 7087.375
  - id: abyss_k_110_kc_4_rascaf_output
    outputSource:
      - perform_scaffolding_rascaf_27/rascaf_scaffold
    type: File
    'sbg:x': 1485.482177734375
    'sbg:y': 7301.8125
  - id: abyss_k_110_kc_3_rascaf_output
    outputSource:
      - perform_scaffolding_rascaf_28/rascaf_scaffold
    type: File
    'sbg:x': 1485.482177734375
    'sbg:y': 7516.25
  - id: abyss_k_110_kc_2_rascaf_output
    outputSource:
      - perform_scaffolding_rascaf_29/rascaf_scaffold
    type: File
    'sbg:x': 1485.482177734375
    'sbg:y': 7730.6875
  - id: abyss_k_105_kc_4_rascaf_output
    outputSource:
      - perform_scaffolding_rascaf_30/rascaf_scaffold
    type: File
    'sbg:x': 1485.482177734375
    'sbg:y': 7945.125
  - id: abyss_k_105_kc_3_rascaf_output
    outputSource:
      - perform_scaffolding_rascaf_31/rascaf_scaffold
    type: File
    'sbg:x': 1485.482177734375
    'sbg:y': 8159.5625
  - id: abyss_k_105_kc_2_rascaf_output
    outputSource:
      - perform_scaffolding_rascaf_32/rascaf_scaffold
    type: File
    'sbg:x': 1485.482177734375
    'sbg:y': 8374
  - id: abyss_k_100_kc_4_rascaf_output
    outputSource:
      - perform_scaffolding_rascaf_33/rascaf_scaffold
    type: File
    'sbg:x': 1485.482177734375
    'sbg:y': 8588.4375
  - id: abyss_k_100_kc_3_rascaf_output
    outputSource:
      - perform_scaffolding_rascaf_34/rascaf_scaffold
    type: File
    'sbg:x': 1485.482177734375
    'sbg:y': 8802.875
  - id: abyss_k_100_kc_2_rascaf_output
    outputSource:
      - perform_scaffolding_rascaf_35/rascaf_scaffold
    type: File
    'sbg:x': 1485.482177734375
    'sbg:y': 9017.3125
steps:
  - id: generate_assemblies
    in:
      - id: cpu
        source: cpu
    out:
      - id: masurca_assembly
      - id: soapdenovo2_assembly
      - id: megahit_assembly
      - id: abyss_assembly_output
    run: >-
      ../../fungal_genome_assemblies_and_annotation/0.0.1/generate_assemblies.cwl
    label: generate_assemblies
    'sbg:x': 479
    'sbg:y': 5031
  - id: output_2_read_pair_files
    in:
      - id: directory_with_input_reads
        source: directory_with_input_reads_RNA
    out:
      - id: left_reads
      - id: right_reads
    run: >-
      ../../fungal_genome_assemblies_and_annotation/0.0.1/output_2_read_pair_files.cwl
    label: output_2_read_pair_files
    'sbg:x': -325
    'sbg:y': 4173
  - id: align_reads_and_scaffold_prna_scaffolder
    in:
      - id: threads
        source: cpu
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: contig_filename
        source: generate_assemblies/soapdenovo2_assembly
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: prna_scaffolder_output
    run: ../../p_rna_scaffolder/0.0.1/align_reads_and_scaffold_prna_scaffolder.cwl
    label: align_reads_and_scaffold_prna_scaffolder
    'sbg:x': 1121.173828125
    'sbg:y': 10594.53125
  - id: align_reads_and_scaffold_prna_scaffolder_1
    in:
      - id: threads
        source: cpu
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: contig_filename
        source: generate_assemblies/megahit_assembly
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: prna_scaffolder_output
    run: ../../p_rna_scaffolder/0.0.1/align_reads_and_scaffold_prna_scaffolder.cwl
    label: align_reads_and_scaffold_prna_scaffolder
    'sbg:x': 1121.173828125
    'sbg:y': 10445.3125
  - id: align_reads_and_scaffold_prna_scaffolder_2
    in:
      - id: threads
        source: cpu
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: contig_filename
        source: generate_assemblies/masurca_assembly
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: prna_scaffolder_output
    run: ../../p_rna_scaffolder/0.0.1/align_reads_and_scaffold_prna_scaffolder.cwl
    label: align_reads_and_scaffold_prna_scaffolder
    'sbg:x': 1121.173828125
    'sbg:y': 8803.90625
  - id: align_reads_and_scaffold_prna_scaffolder_3
    in:
      - id: threads
        source: cpu
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: contig_filename
        source: generate_assemblies/abyss_assembly_k_95_kc_4
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: prna_scaffolder_output
    run: ../../p_rna_scaffolder/0.0.1/align_reads_and_scaffold_prna_scaffolder.cwl
    label: align_reads_and_scaffold_prna_scaffolder
    'sbg:x': 1121.173828125
    'sbg:y': 7162.5
  - id: align_reads_and_scaffold_prna_scaffolder_4
    in:
      - id: threads
        source: cpu
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: contig_filename
        source: generate_assemblies/abyss_assembly_k_95_kc_3
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: prna_scaffolder_output
    run: ../../p_rna_scaffolder/0.0.1/align_reads_and_scaffold_prna_scaffolder.cwl
    label: align_reads_and_scaffold_prna_scaffolder
    'sbg:x': 1121.173828125
    'sbg:y': 6117.96875
  - id: align_reads_and_scaffold_prna_scaffolder_5
    in:
      - id: threads
        source: cpu
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: contig_filename
        source: generate_assemblies/abyss_assembly_k_95_kc_2
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: prna_scaffolder_output
    run: ../../p_rna_scaffolder/0.0.1/align_reads_and_scaffold_prna_scaffolder.cwl
    label: align_reads_and_scaffold_prna_scaffolder
    'sbg:x': 1121.173828125
    'sbg:y': 5968.75
  - id: align_reads_and_scaffold_prna_scaffolder_6
    in:
      - id: threads
        source: cpu
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: contig_filename
        source: generate_assemblies/abyss_assembly_k_90_kc_4
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: prna_scaffolder_output
    run: ../../p_rna_scaffolder/0.0.1/align_reads_and_scaffold_prna_scaffolder.cwl
    label: align_reads_and_scaffold_prna_scaffolder
    'sbg:x': 1121.173828125
    'sbg:y': 5819.53125
  - id: align_reads_and_scaffold_prna_scaffolder_7
    in:
      - id: threads
        source: cpu
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: contig_filename
        source: generate_assemblies/abyss_assembly_k_90_kc_3
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: prna_scaffolder_output
    run: ../../p_rna_scaffolder/0.0.1/align_reads_and_scaffold_prna_scaffolder.cwl
    label: align_reads_and_scaffold_prna_scaffolder
    'sbg:x': 1121.173828125
    'sbg:y': 5670.3125
  - id: align_reads_and_scaffold_prna_scaffolder_8
    in:
      - id: threads
        source: cpu
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: contig_filename
        source: generate_assemblies/abyss_assembly_k_90_kc_2
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: prna_scaffolder_output
    run: ../../p_rna_scaffolder/0.0.1/align_reads_and_scaffold_prna_scaffolder.cwl
    label: align_reads_and_scaffold_prna_scaffolder
    'sbg:x': 1121.173828125
    'sbg:y': 5521.09375
  - id: align_reads_and_scaffold_prna_scaffolder_9
    in:
      - id: threads
        source: cpu
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: contig_filename
        source: generate_assemblies/abyss_assembly_k_140_kc_4
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: prna_scaffolder_output
    run: ../../p_rna_scaffolder/0.0.1/align_reads_and_scaffold_prna_scaffolder.cwl
    label: align_reads_and_scaffold_prna_scaffolder
    'sbg:x': 1121.173828125
    'sbg:y': 5371.875
  - id: align_reads_and_scaffold_prna_scaffolder_10
    in:
      - id: threads
        source: cpu
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: contig_filename
        source: generate_assemblies/abyss_assembly_k_140_kc_3
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: prna_scaffolder_output
    run: ../../p_rna_scaffolder/0.0.1/align_reads_and_scaffold_prna_scaffolder.cwl
    label: align_reads_and_scaffold_prna_scaffolder
    'sbg:x': 1121.173828125
    'sbg:y': 10296.09375
  - id: align_reads_and_scaffold_prna_scaffolder_11
    in:
      - id: threads
        source: cpu
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: contig_filename
        source: generate_assemblies/abyss_assembly_k_140_kc_2
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: prna_scaffolder_output
    run: ../../p_rna_scaffolder/0.0.1/align_reads_and_scaffold_prna_scaffolder.cwl
    label: align_reads_and_scaffold_prna_scaffolder
    'sbg:x': 1121.173828125
    'sbg:y': 10146.875
  - id: align_reads_and_scaffold_prna_scaffolder_12
    in:
      - id: threads
        source: cpu
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: contig_filename
        source: generate_assemblies/abyss_assembly_k_135_kc_4
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: prna_scaffolder_output
    run: ../../p_rna_scaffolder/0.0.1/align_reads_and_scaffold_prna_scaffolder.cwl
    label: align_reads_and_scaffold_prna_scaffolder
    'sbg:x': 1121.173828125
    'sbg:y': 9997.65625
  - id: align_reads_and_scaffold_prna_scaffolder_13
    in:
      - id: threads
        source: cpu
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: contig_filename
        source: generate_assemblies/abyss_assembly_k_135_kc_3
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: prna_scaffolder_output
    run: ../../p_rna_scaffolder/0.0.1/align_reads_and_scaffold_prna_scaffolder.cwl
    label: align_reads_and_scaffold_prna_scaffolder
    'sbg:x': 1121.173828125
    'sbg:y': 9848.4375
  - id: align_reads_and_scaffold_prna_scaffolder_14
    in:
      - id: threads
        source: cpu
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: contig_filename
        source: generate_assemblies/abyss_assembly_k_135_kc_2
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: prna_scaffolder_output
    run: ../../p_rna_scaffolder/0.0.1/align_reads_and_scaffold_prna_scaffolder.cwl
    label: align_reads_and_scaffold_prna_scaffolder
    'sbg:x': 1121.173828125
    'sbg:y': 9699.21875
  - id: align_reads_and_scaffold_prna_scaffolder_15
    in:
      - id: threads
        source: cpu
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: contig_filename
        source: generate_assemblies/abyss_assembly_k_130_kc_4
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: prna_scaffolder_output
    run: ../../p_rna_scaffolder/0.0.1/align_reads_and_scaffold_prna_scaffolder.cwl
    label: align_reads_and_scaffold_prna_scaffolder
    'sbg:x': 1121.173828125
    'sbg:y': 9550
  - id: align_reads_and_scaffold_prna_scaffolder_16
    in:
      - id: threads
        source: cpu
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: contig_filename
        source: generate_assemblies/abyss_assembly_k_130_kc_3
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: prna_scaffolder_output
    run: ../../p_rna_scaffolder/0.0.1/align_reads_and_scaffold_prna_scaffolder.cwl
    label: align_reads_and_scaffold_prna_scaffolder
    'sbg:x': 1121.173828125
    'sbg:y': 9400.78125
  - id: align_reads_and_scaffold_prna_scaffolder_17
    in:
      - id: threads
        source: cpu
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: contig_filename
        source: generate_assemblies/abyss_assembly_k_130_kc_2
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: prna_scaffolder_output
    run: ../../p_rna_scaffolder/0.0.1/align_reads_and_scaffold_prna_scaffolder.cwl
    label: align_reads_and_scaffold_prna_scaffolder
    'sbg:x': 1121.173828125
    'sbg:y': 9251.5625
  - id: align_reads_and_scaffold_prna_scaffolder_18
    in:
      - id: threads
        source: cpu
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: contig_filename
        source: generate_assemblies/abyss_assembly_k_125_kc_4
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: prna_scaffolder_output
    run: ../../p_rna_scaffolder/0.0.1/align_reads_and_scaffold_prna_scaffolder.cwl
    label: align_reads_and_scaffold_prna_scaffolder
    'sbg:x': 1121.173828125
    'sbg:y': 9102.34375
  - id: align_reads_and_scaffold_prna_scaffolder_19
    in:
      - id: threads
        source: cpu
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: contig_filename
        source: generate_assemblies/abyss_assembly_k_125_kc_3
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: prna_scaffolder_output
    run: ../../p_rna_scaffolder/0.0.1/align_reads_and_scaffold_prna_scaffolder.cwl
    label: align_reads_and_scaffold_prna_scaffolder
    'sbg:x': 1121.173828125
    'sbg:y': 8953.125
  - id: align_reads_and_scaffold_prna_scaffolder_20
    in:
      - id: threads
        source: cpu
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: contig_filename
        source: generate_assemblies/abyss_assembly_k_125_kc_2
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: prna_scaffolder_output
    run: ../../p_rna_scaffolder/0.0.1/align_reads_and_scaffold_prna_scaffolder.cwl
    label: align_reads_and_scaffold_prna_scaffolder
    'sbg:x': 1121.173828125
    'sbg:y': 8654.6875
  - id: align_reads_and_scaffold_prna_scaffolder_21
    in:
      - id: threads
        source: cpu
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: contig_filename
        source: generate_assemblies/abyss_assembly_k_120_kc_4
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: prna_scaffolder_output
    run: ../../p_rna_scaffolder/0.0.1/align_reads_and_scaffold_prna_scaffolder.cwl
    label: align_reads_and_scaffold_prna_scaffolder
    'sbg:x': 1121.173828125
    'sbg:y': 8505.46875
  - id: align_reads_and_scaffold_prna_scaffolder_22
    in:
      - id: threads
        source: cpu
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: contig_filename
        source: generate_assemblies/abyss_assembly_k_120_kc_3
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: prna_scaffolder_output
    run: ../../p_rna_scaffolder/0.0.1/align_reads_and_scaffold_prna_scaffolder.cwl
    label: align_reads_and_scaffold_prna_scaffolder
    'sbg:x': 1121.173828125
    'sbg:y': 8356.25
  - id: align_reads_and_scaffold_prna_scaffolder_23
    in:
      - id: threads
        source: cpu
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: contig_filename
        source: generate_assemblies/abyss_assembly_k_120_kc_2
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: prna_scaffolder_output
    run: ../../p_rna_scaffolder/0.0.1/align_reads_and_scaffold_prna_scaffolder.cwl
    label: align_reads_and_scaffold_prna_scaffolder
    'sbg:x': 1121.173828125
    'sbg:y': 8207.03125
  - id: align_reads_and_scaffold_prna_scaffolder_24
    in:
      - id: threads
        source: cpu
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: contig_filename
        source: generate_assemblies/abyss_assembly_k_115_kc_4
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: prna_scaffolder_output
    run: ../../p_rna_scaffolder/0.0.1/align_reads_and_scaffold_prna_scaffolder.cwl
    label: align_reads_and_scaffold_prna_scaffolder
    'sbg:x': 1121.173828125
    'sbg:y': 8057.8125
  - id: align_reads_and_scaffold_prna_scaffolder_25
    in:
      - id: threads
        source: cpu
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: contig_filename
        source: generate_assemblies/abyss_assembly_k_115_kc_3
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: prna_scaffolder_output
    run: ../../p_rna_scaffolder/0.0.1/align_reads_and_scaffold_prna_scaffolder.cwl
    label: align_reads_and_scaffold_prna_scaffolder
    'sbg:x': 1121.173828125
    'sbg:y': 7908.59375
  - id: align_reads_and_scaffold_prna_scaffolder_26
    in:
      - id: threads
        source: cpu
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: contig_filename
        source: generate_assemblies/abyss_assembly_k_115_kc_2
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: prna_scaffolder_output
    run: ../../p_rna_scaffolder/0.0.1/align_reads_and_scaffold_prna_scaffolder.cwl
    label: align_reads_and_scaffold_prna_scaffolder
    'sbg:x': 1121.173828125
    'sbg:y': 7759.375
  - id: align_reads_and_scaffold_prna_scaffolder_27
    in:
      - id: threads
        source: cpu
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: contig_filename
        source: generate_assemblies/abyss_assembly_k_110_kc_4
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: prna_scaffolder_output
    run: ../../p_rna_scaffolder/0.0.1/align_reads_and_scaffold_prna_scaffolder.cwl
    label: align_reads_and_scaffold_prna_scaffolder
    'sbg:x': 1121.173828125
    'sbg:y': 7610.15625
  - id: align_reads_and_scaffold_prna_scaffolder_28
    in:
      - id: threads
        source: cpu
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: contig_filename
        source: generate_assemblies/abyss_assembly_k_110_kc_3
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: prna_scaffolder_output
    run: ../../p_rna_scaffolder/0.0.1/align_reads_and_scaffold_prna_scaffolder.cwl
    label: align_reads_and_scaffold_prna_scaffolder
    'sbg:x': 1121.173828125
    'sbg:y': 7460.9375
  - id: align_reads_and_scaffold_prna_scaffolder_29
    in:
      - id: threads
        source: cpu
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: contig_filename
        source: generate_assemblies/abyss_assembly_k_110_kc_2
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: prna_scaffolder_output
    run: ../../p_rna_scaffolder/0.0.1/align_reads_and_scaffold_prna_scaffolder.cwl
    label: align_reads_and_scaffold_prna_scaffolder
    'sbg:x': 1121.173828125
    'sbg:y': 7311.71875
  - id: align_reads_and_scaffold_prna_scaffolder_30
    in:
      - id: threads
        source: cpu
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: contig_filename
        source: generate_assemblies/abyss_assembly_k_105_kc_4
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: prna_scaffolder_output
    run: ../../p_rna_scaffolder/0.0.1/align_reads_and_scaffold_prna_scaffolder.cwl
    label: align_reads_and_scaffold_prna_scaffolder
    'sbg:x': 1121.173828125
    'sbg:y': 7013.28125
  - id: align_reads_and_scaffold_prna_scaffolder_31
    in:
      - id: threads
        source: cpu
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: contig_filename
        source: generate_assemblies/abyss_assembly_k_105_kc_3
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: prna_scaffolder_output
    run: ../../p_rna_scaffolder/0.0.1/align_reads_and_scaffold_prna_scaffolder.cwl
    label: align_reads_and_scaffold_prna_scaffolder
    'sbg:x': 1121.173828125
    'sbg:y': 6864.0625
  - id: align_reads_and_scaffold_prna_scaffolder_32
    in:
      - id: threads
        source: cpu
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: contig_filename
        source: generate_assemblies/abyss_assembly_k_105_kc_2
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: prna_scaffolder_output
    run: ../../p_rna_scaffolder/0.0.1/align_reads_and_scaffold_prna_scaffolder.cwl
    label: align_reads_and_scaffold_prna_scaffolder
    'sbg:x': 1121.173828125
    'sbg:y': 6714.84375
  - id: align_reads_and_scaffold_prna_scaffolder_33
    in:
      - id: threads
        source: cpu
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: contig_filename
        source: generate_assemblies/abyss_assembly_k_100_kc_4
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: prna_scaffolder_output
    run: ../../p_rna_scaffolder/0.0.1/align_reads_and_scaffold_prna_scaffolder.cwl
    label: align_reads_and_scaffold_prna_scaffolder
    'sbg:x': 1121.173828125
    'sbg:y': 6565.625
  - id: align_reads_and_scaffold_prna_scaffolder_34
    in:
      - id: threads
        source: cpu
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: contig_filename
        source: generate_assemblies/abyss_assembly_k_100_kc_3
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: prna_scaffolder_output
    run: ../../p_rna_scaffolder/0.0.1/align_reads_and_scaffold_prna_scaffolder.cwl
    label: align_reads_and_scaffold_prna_scaffolder
    'sbg:x': 1121.173828125
    'sbg:y': 6416.40625
  - id: align_reads_and_scaffold_prna_scaffolder_35
    in:
      - id: threads
        source: cpu
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: contig_filename
        source: generate_assemblies/abyss_assembly_k_100_kc_2
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: prna_scaffolder_output
    run: ../../p_rna_scaffolder/0.0.1/align_reads_and_scaffold_prna_scaffolder.cwl
    label: align_reads_and_scaffold_prna_scaffolder
    'sbg:x': 1121.173828125
    'sbg:y': 6267.1875
  - id: perform_scaffolding_rascaf
    in:
      - id: raw_assembly_filename
        source: generate_assemblies/soapdenovo2_assembly
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: threads
        source: cpu
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: rascaf_scaffold
    run: ../../rascaf/1.0.2/perform_scaffolding_rascaf.cwl
    label: perform_scaffolding_rascaf
    'sbg:x': 1121.173828125
    'sbg:y': 5222.65625
  - id: perform_scaffolding_rascaf_1
    in:
      - id: raw_assembly_filename
        source: generate_assemblies/megahit_assembly
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: threads
        source: cpu
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: rascaf_scaffold
    run: ../../rascaf/1.0.2/perform_scaffolding_rascaf.cwl
    label: perform_scaffolding_rascaf
    'sbg:x': 1121.173828125
    'sbg:y': 5073.4375
  - id: perform_scaffolding_rascaf_2
    in:
      - id: raw_assembly_filename
        source: generate_assemblies/masurca_assembly
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: threads
        source: cpu
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: rascaf_scaffold
    run: ../../rascaf/1.0.2/perform_scaffolding_rascaf.cwl
    label: perform_scaffolding_rascaf
    'sbg:x': 1121.173828125
    'sbg:y': 3432.03125
  - id: perform_scaffolding_rascaf_3
    in:
      - id: raw_assembly_filename
        source: generate_assemblies/masurca_assembly
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: threads
        source: cpu
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: rascaf_scaffold
    run: ../../rascaf/1.0.2/perform_scaffolding_rascaf.cwl
    label: perform_scaffolding_rascaf
    'sbg:x': 1121.173828125
    'sbg:y': 1790.625
  - id: perform_scaffolding_rascaf_4
    in:
      - id: raw_assembly_filename
        source: generate_assemblies/abyss_assembly_k_95_kc_3
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: threads
        source: cpu
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: rascaf_scaffold
    run: ../../rascaf/1.0.2/perform_scaffolding_rascaf.cwl
    label: perform_scaffolding_rascaf
    'sbg:x': 1121.173828125
    'sbg:y': 746.09375
  - id: perform_scaffolding_rascaf_5
    in:
      - id: raw_assembly_filename
        source: generate_assemblies/abyss_assembly_k_95_kc_2
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: threads
        source: cpu
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: rascaf_scaffold
    run: ../../rascaf/1.0.2/perform_scaffolding_rascaf.cwl
    label: perform_scaffolding_rascaf
    'sbg:x': 1121.173828125
    'sbg:y': 596.875
  - id: perform_scaffolding_rascaf_6
    in:
      - id: raw_assembly_filename
        source: generate_assemblies/abyss_assembly_k_90_kc_4
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: threads
        source: cpu
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: rascaf_scaffold
    run: ../../rascaf/1.0.2/perform_scaffolding_rascaf.cwl
    label: perform_scaffolding_rascaf
    'sbg:x': 1121.173828125
    'sbg:y': 447.65625
  - id: perform_scaffolding_rascaf_7
    in:
      - id: raw_assembly_filename
        source: generate_assemblies/abyss_assembly_k_90_kc_3
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: threads
        source: cpu
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: rascaf_scaffold
    run: ../../rascaf/1.0.2/perform_scaffolding_rascaf.cwl
    label: perform_scaffolding_rascaf
    'sbg:x': 1121.173828125
    'sbg:y': 298.4375
  - id: perform_scaffolding_rascaf_8
    in:
      - id: raw_assembly_filename
        source: generate_assemblies/abyss_assembly_k_90_kc_2
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: threads
        source: cpu
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: rascaf_scaffold
    run: ../../rascaf/1.0.2/perform_scaffolding_rascaf.cwl
    label: perform_scaffolding_rascaf
    'sbg:x': 1121.173828125
    'sbg:y': 149.21875
  - id: perform_scaffolding_rascaf_9
    in:
      - id: raw_assembly_filename
        source: generate_assemblies/abyss_assembly_k_140_kc_4
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: threads
        source: cpu
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: rascaf_scaffold
    run: ../../rascaf/1.0.2/perform_scaffolding_rascaf.cwl
    label: perform_scaffolding_rascaf
    'sbg:x': 1121.173828125
    'sbg:y': 0
  - id: perform_scaffolding_rascaf_10
    in:
      - id: raw_assembly_filename
        source: generate_assemblies/abyss_assembly_k_140_kc_3
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: threads
        source: cpu
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: rascaf_scaffold
    run: ../../rascaf/1.0.2/perform_scaffolding_rascaf.cwl
    label: perform_scaffolding_rascaf
    'sbg:x': 1121.173828125
    'sbg:y': 4924.21875
  - id: perform_scaffolding_rascaf_11
    in:
      - id: raw_assembly_filename
        source: generate_assemblies/abyss_assembly_k_140_kc_2
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: threads
        source: cpu
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: rascaf_scaffold
    run: ../../rascaf/1.0.2/perform_scaffolding_rascaf.cwl
    label: perform_scaffolding_rascaf
    'sbg:x': 1121.173828125
    'sbg:y': 4775
  - id: perform_scaffolding_rascaf_12
    in:
      - id: raw_assembly_filename
        source: generate_assemblies/abyss_assembly_k_135_kc_4
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: threads
        source: cpu
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: rascaf_scaffold
    run: ../../rascaf/1.0.2/perform_scaffolding_rascaf.cwl
    label: perform_scaffolding_rascaf
    'sbg:x': 1121.173828125
    'sbg:y': 4625.78125
  - id: perform_scaffolding_rascaf_13
    in:
      - id: raw_assembly_filename
        source: generate_assemblies/abyss_assembly_k_135_kc_3
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: threads
        source: cpu
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: rascaf_scaffold
    run: ../../rascaf/1.0.2/perform_scaffolding_rascaf.cwl
    label: perform_scaffolding_rascaf
    'sbg:x': 1121.173828125
    'sbg:y': 4476.5625
  - id: perform_scaffolding_rascaf_14
    in:
      - id: raw_assembly_filename
        source: generate_assemblies/abyss_assembly_k_135_kc_2
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: threads
        source: cpu
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: rascaf_scaffold
    run: ../../rascaf/1.0.2/perform_scaffolding_rascaf.cwl
    label: perform_scaffolding_rascaf
    'sbg:x': 1121.173828125
    'sbg:y': 4327.34375
  - id: perform_scaffolding_rascaf_15
    in:
      - id: raw_assembly_filename
        source: generate_assemblies/abyss_assembly_k_130_kc_4
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: threads
        source: cpu
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: rascaf_scaffold
    run: ../../rascaf/1.0.2/perform_scaffolding_rascaf.cwl
    label: perform_scaffolding_rascaf
    'sbg:x': 1121.173828125
    'sbg:y': 4178.125
  - id: perform_scaffolding_rascaf_16
    in:
      - id: raw_assembly_filename
        source: generate_assemblies/abyss_assembly_k_130_kc_3
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: threads
        source: cpu
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: rascaf_scaffold
    run: ../../rascaf/1.0.2/perform_scaffolding_rascaf.cwl
    label: perform_scaffolding_rascaf
    'sbg:x': 1121.173828125
    'sbg:y': 4028.90625
  - id: perform_scaffolding_rascaf_17
    in:
      - id: raw_assembly_filename
        source: generate_assemblies/abyss_assembly_k_130_kc_2
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: threads
        source: cpu
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: rascaf_scaffold
    run: ../../rascaf/1.0.2/perform_scaffolding_rascaf.cwl
    label: perform_scaffolding_rascaf
    'sbg:x': 1121.173828125
    'sbg:y': 3879.6875
  - id: perform_scaffolding_rascaf_18
    in:
      - id: raw_assembly_filename
        source: generate_assemblies/abyss_assembly_k_125_kc_4
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: threads
        source: cpu
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: rascaf_scaffold
    run: ../../rascaf/1.0.2/perform_scaffolding_rascaf.cwl
    label: perform_scaffolding_rascaf
    'sbg:x': 1121.173828125
    'sbg:y': 3730.46875
  - id: perform_scaffolding_rascaf_19
    in:
      - id: raw_assembly_filename
        source: generate_assemblies/abyss_assembly_k_125_kc_3
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: threads
        source: cpu
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: rascaf_scaffold
    run: ../../rascaf/1.0.2/perform_scaffolding_rascaf.cwl
    label: perform_scaffolding_rascaf
    'sbg:x': 1121.173828125
    'sbg:y': 3581.25
  - id: perform_scaffolding_rascaf_20
    in:
      - id: raw_assembly_filename
        source: generate_assemblies/abyss_assembly_k_125_kc_2
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: threads
        source: cpu
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: rascaf_scaffold
    run: ../../rascaf/1.0.2/perform_scaffolding_rascaf.cwl
    label: perform_scaffolding_rascaf
    'sbg:x': 1121.173828125
    'sbg:y': 3282.8125
  - id: perform_scaffolding_rascaf_21
    in:
      - id: raw_assembly_filename
        source: generate_assemblies/abyss_assembly_k_120_kc_4
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: threads
        source: cpu
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: rascaf_scaffold
    run: ../../rascaf/1.0.2/perform_scaffolding_rascaf.cwl
    label: perform_scaffolding_rascaf
    'sbg:x': 1121.173828125
    'sbg:y': 3133.59375
  - id: perform_scaffolding_rascaf_22
    in:
      - id: raw_assembly_filename
        source: generate_assemblies/abyss_assembly_k_120_kc_3
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: threads
        source: cpu
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: rascaf_scaffold
    run: ../../rascaf/1.0.2/perform_scaffolding_rascaf.cwl
    label: perform_scaffolding_rascaf
    'sbg:x': 1121.173828125
    'sbg:y': 2984.375
  - id: perform_scaffolding_rascaf_23
    in:
      - id: raw_assembly_filename
        source: generate_assemblies/abyss_assembly_k_120_kc_2
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: threads
        source: cpu
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: rascaf_scaffold
    run: ../../rascaf/1.0.2/perform_scaffolding_rascaf.cwl
    label: perform_scaffolding_rascaf
    'sbg:x': 1121.173828125
    'sbg:y': 2835.15625
  - id: perform_scaffolding_rascaf_24
    in:
      - id: raw_assembly_filename
        source: generate_assemblies/abyss_assembly_k_115_kc_4
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: threads
        source: cpu
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: rascaf_scaffold
    run: ../../rascaf/1.0.2/perform_scaffolding_rascaf.cwl
    label: perform_scaffolding_rascaf
    'sbg:x': 1121.173828125
    'sbg:y': 2685.9375
  - id: perform_scaffolding_rascaf_25
    in:
      - id: raw_assembly_filename
        source: generate_assemblies/abyss_assembly_k_115_kc_3
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: threads
        source: cpu
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: rascaf_scaffold
    run: ../../rascaf/1.0.2/perform_scaffolding_rascaf.cwl
    label: perform_scaffolding_rascaf
    'sbg:x': 1121.173828125
    'sbg:y': 2536.71875
  - id: perform_scaffolding_rascaf_26
    in:
      - id: raw_assembly_filename
        source: generate_assemblies/abyss_assembly_k_115_kc_2
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: threads
        source: cpu
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: rascaf_scaffold
    run: ../../rascaf/1.0.2/perform_scaffolding_rascaf.cwl
    label: perform_scaffolding_rascaf
    'sbg:x': 1121.173828125
    'sbg:y': 2387.5
  - id: perform_scaffolding_rascaf_27
    in:
      - id: raw_assembly_filename
        source: generate_assemblies/abyss_assembly_k_110_kc_4
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: threads
        source: cpu
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: rascaf_scaffold
    run: ../../rascaf/1.0.2/perform_scaffolding_rascaf.cwl
    label: perform_scaffolding_rascaf
    'sbg:x': 1121.173828125
    'sbg:y': 2238.28125
  - id: perform_scaffolding_rascaf_28
    in:
      - id: raw_assembly_filename
        source: generate_assemblies/abyss_assembly_k_110_kc_3
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: threads
        source: cpu
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: rascaf_scaffold
    run: ../../rascaf/1.0.2/perform_scaffolding_rascaf.cwl
    label: perform_scaffolding_rascaf
    'sbg:x': 1121.173828125
    'sbg:y': 2089.0625
  - id: perform_scaffolding_rascaf_29
    in:
      - id: raw_assembly_filename
        source: generate_assemblies/abyss_assembly_k_110_kc_2
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: threads
        source: cpu
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: rascaf_scaffold
    run: ../../rascaf/1.0.2/perform_scaffolding_rascaf.cwl
    label: perform_scaffolding_rascaf
    'sbg:x': 1121.173828125
    'sbg:y': 1939.84375
  - id: perform_scaffolding_rascaf_30
    in:
      - id: raw_assembly_filename
        source: generate_assemblies/abyss_assembly_k_105_kc_4
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: threads
        source: cpu
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: rascaf_scaffold
    run: ../../rascaf/1.0.2/perform_scaffolding_rascaf.cwl
    label: perform_scaffolding_rascaf
    'sbg:x': 1121.173828125
    'sbg:y': 1641.40625
  - id: perform_scaffolding_rascaf_31
    in:
      - id: raw_assembly_filename
        source: generate_assemblies/abyss_assembly_k_105_kc_3
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: threads
        source: cpu
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: rascaf_scaffold
    run: ../../rascaf/1.0.2/perform_scaffolding_rascaf.cwl
    label: perform_scaffolding_rascaf
    'sbg:x': 1121.173828125
    'sbg:y': 1492.1875
  - id: perform_scaffolding_rascaf_32
    in:
      - id: raw_assembly_filename
        source: generate_assemblies/abyss_assembly_k_105_kc_2
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: threads
        source: cpu
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: rascaf_scaffold
    run: ../../rascaf/1.0.2/perform_scaffolding_rascaf.cwl
    label: perform_scaffolding_rascaf
    'sbg:x': 1121.173828125
    'sbg:y': 1342.96875
  - id: perform_scaffolding_rascaf_33
    in:
      - id: raw_assembly_filename
        source: generate_assemblies/abyss_assembly_k_100_kc_4
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: threads
        source: cpu
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: rascaf_scaffold
    run: ../../rascaf/1.0.2/perform_scaffolding_rascaf.cwl
    label: perform_scaffolding_rascaf
    'sbg:x': 1121.173828125
    'sbg:y': 1193.75
  - id: perform_scaffolding_rascaf_34
    in:
      - id: raw_assembly_filename
        source: generate_assemblies/abyss_assembly_k_100_kc_3
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: threads
        source: cpu
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: rascaf_scaffold
    run: ../../rascaf/1.0.2/perform_scaffolding_rascaf.cwl
    label: perform_scaffolding_rascaf
    'sbg:x': 1121.173828125
    'sbg:y': 1044.53125
  - id: perform_scaffolding_rascaf_35
    in:
      - id: raw_assembly_filename
        source: generate_assemblies/abyss_assembly_k_100_kc_2
      - id: raw_input_files_pair1
        source: output_2_read_pair_files/left_reads
      - id: threads
        source: cpu
      - id: raw_input_files_pair2
        source: output_2_read_pair_files/right_reads
    out:
      - id: rascaf_scaffold
    run: ../../rascaf/1.0.2/perform_scaffolding_rascaf.cwl
    label: perform_scaffolding_rascaf
    'sbg:x': 1121.173828125
    'sbg:y': 895.3125
requirements:
  - class: SubworkflowFeatureRequirement
