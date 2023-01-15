class: Workflow
cwlVersion: v1.0
id: validate_scaffold_fgmp
label: validate_scaffold_fgmp
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: directory_with_input_reads_DNA
    type: Directory
    'sbg:x': -642.1257934570312
    'sbg:y': 2414.2197265625
  - id: cpu
    type: int?
    'sbg:x': -897.8006591796875
    'sbg:y': 1636.74609375
  - id: directory_with_input_reads_RNA
    type: Directory
    'sbg:x': -832.7218627929688
    'sbg:y': 1976.928955078125
outputs:
  - id: consolidated_fgmp
    outputSource:
      - execute_fgmp_and_compile_single_output_file/consolidated_fgmp
    type: File
    'sbg:x': 2201.06982421875
    'sbg:y': 2032.3203125
  - id: soapdenovo2_rascaf_scaffold
    outputSource:
      - assemble_and_scaffold/soapdenovo2_rascaf_scaffold
    type: File
    'sbg:x': 1723.237060546875
    'sbg:y': 0
  - id: soap_denovo2_prna_scaffolder_output
    outputSource:
      - assemble_and_scaffold/soap_denovo2_prna_scaffolder_output
    type: Directory
    'sbg:x': 1723.237060546875
    'sbg:y': 106.828125
  - id: megahit_prna_scaffolder_output
    outputSource:
      - assemble_and_scaffold/megahit_prna_scaffolder_output
    type: Directory
    'sbg:x': 1723.237060546875
    'sbg:y': 213.65625
  - id: masurca_prna_scaffolder_output
    outputSource:
      - assemble_and_scaffold/masurca_prna_scaffolder_output
    type: Directory
    'sbg:x': 1723.237060546875
    'sbg:y': 320.484375
  - id: abyss_k_95_kc_4_prna_scaffolder_output
    outputSource:
      - assemble_and_scaffold/abyss_k_95_kc_4_prna_scaffolder_output
    type: Directory
    'sbg:x': 1723.237060546875
    'sbg:y': 646.140625
  - id: abyss_k_95_kc_3_prna_scaffolder_output
    outputSource:
      - assemble_and_scaffold/abyss_k_95_kc_3_prna_scaffolder_output
    type: Directory
    'sbg:x': 1723.237060546875
    'sbg:y': 752.96875
  - id: abyss_k_95_kc_2_prna_scaffolder_output
    outputSource:
      - assemble_and_scaffold/abyss_k_95_kc_2_prna_scaffolder_output
    type: Directory
    'sbg:x': 1723.237060546875
    'sbg:y': 859.796875
  - id: abyss_k_90_kc_4_prna_scaffolder_output
    outputSource:
      - assemble_and_scaffold/abyss_k_90_kc_4_prna_scaffolder_output
    type: Directory
    'sbg:x': 1723.237060546875
    'sbg:y': 966.625
  - id: abyss_k_90_kc_3_prna_scaffolder_output
    outputSource:
      - assemble_and_scaffold/abyss_k_90_kc_3_prna_scaffolder_output
    type: Directory
    'sbg:x': 1723.237060546875
    'sbg:y': 1073.453125
  - id: abyss_k_90_kc_2_prna_scaffolder_output
    outputSource:
      - assemble_and_scaffold/abyss_k_90_kc_2_prna_scaffolder_output
    type: Directory
    'sbg:x': 1723.237060546875
    'sbg:y': 1180.28125
  - id: abyss_k_100_kc_4_prna_scaffolder_output
    outputSource:
      - assemble_and_scaffold/abyss_k_100_kc_4_prna_scaffolder_output
    type: Directory
    'sbg:x': 1723.237060546875
    'sbg:y': 3850.984375
  - id: abyss_k_100_kc_3_prna_scaffolder_output
    outputSource:
      - assemble_and_scaffold/abyss_k_100_kc_3_prna_scaffolder_output
    type: Directory
    'sbg:x': 1723.237060546875
    'sbg:y': 3957.8125
  - id: abyss_k_100_kc_2_prna_scaffolder_output
    outputSource:
      - assemble_and_scaffold/abyss_k_100_kc_2_prna_scaffolder_output
    type: Directory
    'sbg:x': 1723.237060546875
    'sbg:y': 4064.640625
  - id: abyss_k_105_kc_4_prna_scaffolder_output
    outputSource:
      - assemble_and_scaffold/abyss_k_105_kc_4_prna_scaffolder_output
    type: Directory
    'sbg:x': 1723.237060546875
    'sbg:y': 3530.5
  - id: abyss_k_105_kc_3_prna_scaffolder_output
    outputSource:
      - assemble_and_scaffold/abyss_k_105_kc_3_prna_scaffolder_output
    type: Directory
    'sbg:x': 1723.237060546875
    'sbg:y': 3637.328125
  - id: abyss_k_105_kc_2_prna_scaffolder_output
    outputSource:
      - assemble_and_scaffold/abyss_k_105_kc_2_prna_scaffolder_output
    type: Directory
    'sbg:x': 1723.237060546875
    'sbg:y': 3744.15625
  - id: abyss_k_110_kc_4_prna_scaffolder_output
    outputSource:
      - assemble_and_scaffold/abyss_k_110_kc_4_prna_scaffolder_output
    type: Directory
    'sbg:x': 1723.237060546875
    'sbg:y': 3210.015625
  - id: abyss_k_110_kc_3_prna_scaffolder_output
    outputSource:
      - assemble_and_scaffold/abyss_k_110_kc_3_prna_scaffolder_output
    type: Directory
    'sbg:x': 1723.237060546875
    'sbg:y': 3316.84375
  - id: abyss_k_110_kc_2_prna_scaffolder_output
    outputSource:
      - assemble_and_scaffold/abyss_k_110_kc_2_prna_scaffolder_output
    type: Directory
    'sbg:x': 1723.237060546875
    'sbg:y': 3423.671875
  - id: abyss_k_115_kc_4_prna_scaffolder_output
    outputSource:
      - assemble_and_scaffold/abyss_k_115_kc_4_prna_scaffolder_output
    type: Directory
    'sbg:x': 1723.237060546875
    'sbg:y': 2889.53125
  - id: abyss_k_115_kc_3_prna_scaffolder_output
    outputSource:
      - assemble_and_scaffold/abyss_k_115_kc_3_prna_scaffolder_output
    type: Directory
    'sbg:x': 1723.237060546875
    'sbg:y': 2996.359375
  - id: abyss_k_115_kc_2_prna_scaffolder_output
    outputSource:
      - assemble_and_scaffold/abyss_k_115_kc_2_prna_scaffolder_output
    type: Directory
    'sbg:x': 1723.237060546875
    'sbg:y': 3103.1875
  - id: abyss_k_120_kc_4_prna_scaffolder_output
    outputSource:
      - assemble_and_scaffold/abyss_k_120_kc_4_prna_scaffolder_output
    type: Directory
    'sbg:x': 1723.237060546875
    'sbg:y': 2569.046875
  - id: abyss_k_120_kc_3_prna_scaffolder_output
    outputSource:
      - assemble_and_scaffold/abyss_k_120_kc_3_prna_scaffolder_output
    type: Directory
    'sbg:x': 1723.237060546875
    'sbg:y': 2675.875
  - id: abyss_k_120_kc_2_prna_scaffolder_output
    outputSource:
      - assemble_and_scaffold/abyss_k_120_kc_2_prna_scaffolder_output
    type: Directory
    'sbg:x': 1723.237060546875
    'sbg:y': 2782.703125
  - id: abyss_k_125_kc_4_prna_scaffolder_output
    outputSource:
      - assemble_and_scaffold/abyss_k_125_kc_4_prna_scaffolder_output
    type: Directory
    'sbg:x': 1723.237060546875
    'sbg:y': 2248.5625
  - id: abyss_k_125_kc_3_prna_scaffolder_output
    outputSource:
      - assemble_and_scaffold/abyss_k_125_kc_3_prna_scaffolder_output
    type: Directory
    'sbg:x': 1723.237060546875
    'sbg:y': 2355.390625
  - id: abyss_k_125_kc_2_prna_scaffolder_output
    outputSource:
      - assemble_and_scaffold/abyss_k_125_kc_2_prna_scaffolder_output
    type: Directory
    'sbg:x': 1723.237060546875
    'sbg:y': 2462.21875
  - id: abyss_k_130_kc_4_prna_scaffolder_output
    outputSource:
      - assemble_and_scaffold/abyss_k_130_kc_4_prna_scaffolder_output
    type: Directory
    'sbg:x': 1723.237060546875
    'sbg:y': 1928.078125
  - id: abyss_k_130_kc_3_prna_scaffolder_output
    outputSource:
      - assemble_and_scaffold/abyss_k_130_kc_3_prna_scaffolder_output
    type: Directory
    'sbg:x': 1723.237060546875
    'sbg:y': 2034.90625
  - id: abyss_k_130_kc_2_prna_scaffolder_output
    outputSource:
      - assemble_and_scaffold/abyss_k_130_kc_2_prna_scaffolder_output
    type: Directory
    'sbg:x': 1723.237060546875
    'sbg:y': 2141.734375
  - id: abyss_k_135_kc_4_prna_scaffolder_output
    outputSource:
      - assemble_and_scaffold/abyss_k_135_kc_4_prna_scaffolder_output
    type: Directory
    'sbg:x': 1723.237060546875
    'sbg:y': 1607.59375
  - id: abyss_k_135_kc_3_prna_scaffolder_output
    outputSource:
      - assemble_and_scaffold/abyss_k_135_kc_3_prna_scaffolder_output
    type: Directory
    'sbg:x': 1723.237060546875
    'sbg:y': 1714.421875
  - id: abyss_k_135_kc_2_prna_scaffolder_output
    outputSource:
      - assemble_and_scaffold/abyss_k_135_kc_2_prna_scaffolder_output
    type: Directory
    'sbg:x': 1723.237060546875
    'sbg:y': 1821.25
  - id: abyss_k_140_kc_4_prna_scaffolder_output
    outputSource:
      - assemble_and_scaffold/abyss_k_140_kc_4_prna_scaffolder_output
    type: Directory
    'sbg:x': 1723.237060546875
    'sbg:y': 1287.109375
  - id: abyss_k_140_kc_3_prna_scaffolder_output
    outputSource:
      - assemble_and_scaffold/abyss_k_140_kc_3_prna_scaffolder_output
    type: Directory
    'sbg:x': 1723.237060546875
    'sbg:y': 1393.9375
  - id: abyss_k_140_kc_2_prna_scaffolder_output
    outputSource:
      - assemble_and_scaffold/abyss_k_140_kc_2_prna_scaffolder_output
    type: Directory
    'sbg:x': 1723.237060546875
    'sbg:y': 1500.765625
steps:
  - id: assemble_and_scaffold
    in:
      - id: directory_with_input_reads_DNA
        source: directory_with_input_reads_DNA
      - id: cpu
        source: cpu
      - id: directory_with_input_reads_RNA
        source: directory_with_input_reads_RNA
    out:
      - id: soap_denovo2_prna_scaffolder_output
      - id: megahit_prna_scaffolder_output
      - id: masurca_prna_scaffolder_output
      - id: abyss_k_95_kc_4_prna_scaffolder_output
      - id: abyss_k_95_kc_3_prna_scaffolder_output
      - id: abyss_k_95_kc_2_prna_scaffolder_output
      - id: abyss_k_90_kc_4_prna_scaffolder_output
      - id: abyss_k_90_kc_3_prna_scaffolder_output
      - id: abyss_k_90_kc_2_prna_scaffolder_output
      - id: abyss_k_140_kc_4_prna_scaffolder_output
      - id: abyss_k_140_kc_3_prna_scaffolder_output
      - id: abyss_k_140_kc_2_prna_scaffolder_output
      - id: abyss_k_135_kc_4_prna_scaffolder_output
      - id: abyss_k_135_kc_3_prna_scaffolder_output
      - id: abyss_k_135_kc_2_prna_scaffolder_output
      - id: abyss_k_130_kc_4_prna_scaffolder_output
      - id: abyss_k_130_kc_3_prna_scaffolder_output
      - id: abyss_k_130_kc_2_prna_scaffolder_output
      - id: abyss_k_125_kc_4_prna_scaffolder_output
      - id: abyss_k_125_kc_3_prna_scaffolder_output
      - id: abyss_k_125_kc_2_prna_scaffolder_output
      - id: abyss_k_120_kc_4_prna_scaffolder_output
      - id: abyss_k_120_kc_3_prna_scaffolder_output
      - id: abyss_k_120_kc_2_prna_scaffolder_output
      - id: abyss_k_115_kc_4_prna_scaffolder_output
      - id: abyss_k_115_kc_3_prna_scaffolder_output
      - id: abyss_k_115_kc_2_prna_scaffolder_output
      - id: abyss_k_110_kc_4_prna_scaffolder_output
      - id: abyss_k_110_kc_3_prna_scaffolder_output
      - id: abyss_k_110_kc_2_prna_scaffolder_output
      - id: abyss_k_105_kc_4_prna_scaffolder_output
      - id: abyss_k_105_kc_3_prna_scaffolder_output
      - id: abyss_k_105_kc_2_prna_scaffolder_output
      - id: abyss_k_100_kc_4_prna_scaffolder_output
      - id: abyss_k_100_kc_3_prna_scaffolder_output
      - id: abyss_k_100_kc_2_prna_scaffolder_output
      - id: soapdenovo2_rascaf_scaffold
      - id: rmegahit_rascaf_scaffold
      - id: masurca_rascaf_scaffold
      - id: abyss_k_95_kc_4_rascaf_output
      - id: abyss_k_95_kc_3_rascaf_output
      - id: abyss_k_95_kc_2_rascaf_output
      - id: abyss_k_90_kc_4_rascaf_output
      - id: abyss_k_90_kc_3_rascaf_output
      - id: abyss_k_90_kc_2_rascaf_output
      - id: abyss_k_140_kc_4_rascaf_output
      - id: abyss_k_140_kc_3_rascaf_output
      - id: abyss_k_140_kc_2_rascaf_output
      - id: abyss_k_135_kc_4_rascaf_output
      - id: abyss_k_135_kc_3_rascaf_output
      - id: abyss_k_135_kc_2_rascaf_output
      - id: abyss_k_130_kc_4_rascaf_output
      - id: abyss_k_130_kc_3_rascaf_output
      - id: abyss_k_130_kc_2_rascaf_output
      - id: abyss_k_125_kc_4_rascaf_output
      - id: abyss_k_125_kc_3_rascaf_output
      - id: abyss_k_125_kc_2_rascaf_output
      - id: abyss_k_120_kc_4_rascaf_output
      - id: abyss_k_120_kc_3_rascaf_output
      - id: abyss_k_120_kc_2_rascaf_output
      - id: abyss_k_115_kc_4_rascaf_output
      - id: abyss_k_115_kc_3_rascaf_output
      - id: abyss_k_115_kc_2_rascaf_output
      - id: abyss_k_110_kc_4_rascaf_output
      - id: abyss_k_110_kc_3_rascaf_output
      - id: abyss_k_110_kc_2_rascaf_output
      - id: abyss_k_105_kc_4_rascaf_output
      - id: abyss_k_105_kc_3_rascaf_output
      - id: abyss_k_105_kc_2_rascaf_output
      - id: abyss_k_100_kc_4_rascaf_output
      - id: abyss_k_100_kc_3_rascaf_output
      - id: abyss_k_100_kc_2_rascaf_output
    run: ./assemble_and_scaffold.cwl
    label: assemble_and_scaffold
    'sbg:x': 443.6258239746094
    'sbg:y': 2185.4814453125
  - id: execute_fgmp_and_compile_single_output_file
    in:
      - id: masurca_with_rascaf
        source: assemble_and_scaffold/masurca_rascaf_scaffold
      - id: masurca_with_prna_scaffolder
        source: assemble_and_scaffold/masurca_prna_scaffolder_output
      - id: megahit_with_rascaf
        source: assemble_and_scaffold/rmegahit_rascaf_scaffold
      - id: megahit_with_prna_scaffolder
        source: assemble_and_scaffold/megahit_prna_scaffolder_output
      - id: soapdenovo2_with_rascaf
        source: assemble_and_scaffold/soapdenovo2_rascaf_scaffold
      - id: soapdenovo2_with_prna_scaffolder
        source: assemble_and_scaffold/soap_denovo2_prna_scaffolder_output
      - id: abyss_with_rascaf
        source:
          - assemble_and_scaffold/abyss_k_90_kc_2_rascaf_output
          - assemble_and_scaffold/abyss_k_90_kc_3_rascaf_output
          - assemble_and_scaffold/abyss_k_90_kc_4_rascaf_output
          - assemble_and_scaffold/abyss_k_95_kc_2_rascaf_output
          - assemble_and_scaffold/abyss_k_95_kc_3_rascaf_output
          - assemble_and_scaffold/abyss_k_95_kc_4_rascaf_output
          - assemble_and_scaffold/abyss_k_100_kc_2_rascaf_output
          - assemble_and_scaffold/abyss_k_100_kc_3_rascaf_output
          - assemble_and_scaffold/abyss_k_100_kc_4_rascaf_output
          - assemble_and_scaffold/abyss_k_105_kc_2_rascaf_output
          - assemble_and_scaffold/abyss_k_105_kc_3_rascaf_output
          - assemble_and_scaffold/abyss_k_105_kc_4_rascaf_output
          - assemble_and_scaffold/abyss_k_110_kc_2_rascaf_output
          - assemble_and_scaffold/abyss_k_110_kc_3_rascaf_output
          - assemble_and_scaffold/abyss_k_110_kc_4_rascaf_output
          - assemble_and_scaffold/abyss_k_115_kc_2_rascaf_output
          - assemble_and_scaffold/abyss_k_115_kc_3_rascaf_output
          - assemble_and_scaffold/abyss_k_115_kc_4_rascaf_output
          - assemble_and_scaffold/abyss_k_120_kc_2_rascaf_output
          - assemble_and_scaffold/abyss_k_120_kc_3_rascaf_output
          - assemble_and_scaffold/abyss_k_120_kc_4_rascaf_output
          - assemble_and_scaffold/abyss_k_125_kc_2_rascaf_output
          - assemble_and_scaffold/abyss_k_125_kc_3_rascaf_output
          - assemble_and_scaffold/abyss_k_125_kc_4_rascaf_output
          - assemble_and_scaffold/abyss_k_130_kc_2_rascaf_output
          - assemble_and_scaffold/abyss_k_130_kc_3_rascaf_output
          - assemble_and_scaffold/abyss_k_130_kc_4_rascaf_output
          - assemble_and_scaffold/abyss_k_135_kc_2_rascaf_output
          - assemble_and_scaffold/abyss_k_135_kc_3_rascaf_output
          - assemble_and_scaffold/abyss_k_135_kc_4_rascaf_output
          - assemble_and_scaffold/abyss_k_140_kc_2_rascaf_output
          - assemble_and_scaffold/abyss_k_140_kc_3_rascaf_output
          - assemble_and_scaffold/abyss_k_140_kc_4_rascaf_output
      - id: abyss_with_prna_scaffolder
        source:
          - assemble_and_scaffold/abyss_k_90_kc_2_prna_scaffolder_output
          - assemble_and_scaffold/abyss_k_90_kc_3_prna_scaffolder_output
          - assemble_and_scaffold/abyss_k_90_kc_4_prna_scaffolder_output
          - assemble_and_scaffold/abyss_k_95_kc_2_prna_scaffolder_output
          - assemble_and_scaffold/abyss_k_95_kc_3_prna_scaffolder_output
          - assemble_and_scaffold/abyss_k_95_kc_4_prna_scaffolder_output
          - assemble_and_scaffold/abyss_k_100_kc_2_prna_scaffolder_output
          - assemble_and_scaffold/abyss_k_100_kc_3_prna_scaffolder_output
          - assemble_and_scaffold/abyss_k_100_kc_4_prna_scaffolder_output
          - assemble_and_scaffold/abyss_k_105_kc_2_prna_scaffolder_output
          - assemble_and_scaffold/abyss_k_105_kc_3_prna_scaffolder_output
          - assemble_and_scaffold/abyss_k_105_kc_4_prna_scaffolder_output
          - assemble_and_scaffold/abyss_k_110_kc_2_prna_scaffolder_output
          - assemble_and_scaffold/abyss_k_110_kc_3_prna_scaffolder_output
          - assemble_and_scaffold/abyss_k_110_kc_4_prna_scaffolder_output
          - assemble_and_scaffold/abyss_k_115_kc_2_prna_scaffolder_output
          - assemble_and_scaffold/abyss_k_115_kc_3_prna_scaffolder_output
          - assemble_and_scaffold/abyss_k_115_kc_4_prna_scaffolder_output
          - assemble_and_scaffold/abyss_k_120_kc_2_prna_scaffolder_output
          - assemble_and_scaffold/abyss_k_120_kc_3_prna_scaffolder_output
          - assemble_and_scaffold/abyss_k_120_kc_4_prna_scaffolder_output
          - assemble_and_scaffold/abyss_k_125_kc_2_prna_scaffolder_output
          - assemble_and_scaffold/abyss_k_125_kc_3_prna_scaffolder_output
          - assemble_and_scaffold/abyss_k_125_kc_4_prna_scaffolder_output
          - assemble_and_scaffold/abyss_k_130_kc_2_prna_scaffolder_output
          - assemble_and_scaffold/abyss_k_130_kc_3_prna_scaffolder_output
          - assemble_and_scaffold/abyss_k_130_kc_4_prna_scaffolder_output
          - assemble_and_scaffold/abyss_k_135_kc_2_prna_scaffolder_output
          - assemble_and_scaffold/abyss_k_135_kc_3_prna_scaffolder_output
          - assemble_and_scaffold/abyss_k_135_kc_4_prna_scaffolder_output
          - assemble_and_scaffold/abyss_k_140_kc_2_prna_scaffolder_output
          - assemble_and_scaffold/abyss_k_140_kc_3_prna_scaffolder_output
          - assemble_and_scaffold/abyss_k_140_kc_4_prna_scaffolder_output
      - id: threads
        source: cpu
    out:
      - id: consolidated_fgmp
    run: ./execute_fgmp_and_compile_single_output_file.cwl
    label: execute_FGMP_and_compile_single_output_file
    'sbg:x': 1723.237060546875
    'sbg:y': 483.3125
requirements:
  - class: SubworkflowFeatureRequirement
  - class: MultipleInputFeatureRequirement
