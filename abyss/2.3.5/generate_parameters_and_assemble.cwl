class: Workflow
cwlVersion: v1.0
id: generate_parameters_and_assemble
label: generate_parameters_and_assemble
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: cpu
    type: int?
    'sbg:x': 0
    'sbg:y': 2230.59375
  - id: directory_with_input_reads
    type: Directory
    'sbg:x': 0
    'sbg:y': 2123.40625
outputs:
  - id: abyss_assembly_k_90_kc_2
    outputSource:
      - ABYSS_k_90_kc_2/assembly
    type: File
    'sbg:x': 922.71875
    'sbg:y': 997.9375
  - id: abyss_assembly_k_90_kc_3
    outputSource:
      - ABYSS_k_90_kc_3/assembly
    type: File
    'sbg:x': 922.71875
    'sbg:y': 890.75
  - id: abyss_assembly_k_90_kc_4
    outputSource:
      - ABYSS_k_90_kc_4/assembly
    type: File
    'sbg:x': 922.71875
    'sbg:y': 783.5625
  - id: abyss_assembly_k_95_kc_2
    outputSource:
      - ABYSS_k_95_kc_2/assembly
    type: File
    'sbg:x': 922.71875
    'sbg:y': 676.375
  - id: abyss_assembly_k_95_kc_3
    outputSource:
      - ABYSS_k_95_kc_3/assembly
    type: File
    'sbg:x': 922.71875
    'sbg:y': 569.1875
  - id: abyss_assembly_k_95_kc_4
    outputSource:
      - ABYSS_k_95_kc_4/assembly
    type: File
    'sbg:x': 922.71875
    'sbg:y': 462
  - id: abyss_assembly_k_100_kc_2
    outputSource:
      - ABYSS_k_100_kc_2/assembly
    type: File
    'sbg:x': 922.71875
    'sbg:y': 3892
  - id: abyss_assembly_k_100_kc_3
    outputSource:
      - ABYSS_k_100_kc_3/assembly
    type: File
    'sbg:x': 922.71875
    'sbg:y': 3784.8125
  - id: abyss_assembly_k_100_kc_4
    outputSource:
      - ABYSS_k_100_kc_4/assembly
    type: File
    'sbg:x': 922.71875
    'sbg:y': 3677.625
  - id: abyss_assembly_k_105_kc_2
    outputSource:
      - ABYSS_k_105_kc_2/assembly
    type: File
    'sbg:x': 922.71875
    'sbg:y': 3570.4375
  - id: abyss_assembly_k_105_kc_3
    outputSource:
      - ABYSS_k_105_kc_3/assembly
    type: File
    'sbg:x': 922.71875
    'sbg:y': 3463.25
  - id: abyss_assembly_k_105_kc_4
    outputSource:
      - ABYSS_k_105_kc_4/assembly
    type: File
    'sbg:x': 922.71875
    'sbg:y': 3356.0625
  - id: abyss_assembly_k_110_kc_2
    outputSource:
      - ABYSS_k_110_kc_2/assembly
    type: File
    'sbg:x': 922.71875
    'sbg:y': 3248.875
  - id: abyss_assembly_k_110_kc_3
    outputSource:
      - ABYSS_k_110_kc_3/assembly
    type: File
    'sbg:x': 922.71875
    'sbg:y': 3141.6875
  - id: abyss_assembly_k_110_kc_4
    outputSource:
      - ABYSS_k_110_kc_4/assembly
    type: File
    'sbg:x': 922.71875
    'sbg:y': 3034.5
  - id: abyss_assembly_k_115_kc_2
    outputSource:
      - ABYSS_k_115_kc_2/assembly
    type: File
    'sbg:x': 922.71875
    'sbg:y': 2927.3125
  - id: abyss_assembly_k_115_kc_3
    outputSource:
      - ABYSS_k_115_kc_3/assembly
    type: File
    'sbg:x': 922.71875
    'sbg:y': 2820.125
  - id: abyss_assembly_k_115_kc_4
    outputSource:
      - ABYSS_k_115_kc_4/assembly
    type: File
    'sbg:x': 922.71875
    'sbg:y': 2712.9375
  - id: abyss_assembly_k_120_kc_2
    outputSource:
      - ABYSS_k_120_kc_2/assembly
    type: File
    'sbg:x': 922.71875
    'sbg:y': 2605.75
  - id: abyss_assembly_k_120_kc_3
    outputSource:
      - ABYSS_k_120_kc_3/assembly
    type: File
    'sbg:x': 922.71875
    'sbg:y': 2498.5625
  - id: abyss_assembly_k_120_kc_4
    outputSource:
      - ABYSS_k_120_kc_4/assembly
    type: File
    'sbg:x': 922.71875
    'sbg:y': 2391.375
  - id: abyss_assembly_k_125_kc_2
    outputSource:
      - ABYSS_k_125_kc_2/assembly
    type: File
    'sbg:x': 922.71875
    'sbg:y': 2284.1875
  - id: abyss_assembly_k_125_kc_3
    outputSource:
      - ABYSS_k_125_kc_3/assembly
    type: File
    'sbg:x': 922.71875
    'sbg:y': 2177
  - id: abyss_assembly_k_125_kc_4
    outputSource:
      - ABYSS_k_125_kc_4/assembly
    type: File
    'sbg:x': 922.71875
    'sbg:y': 2069.8125
  - id: abyss_assembly_k_130_kc_2
    outputSource:
      - ABYSS_k_130_kc_2/assembly
    type: File
    'sbg:x': 922.71875
    'sbg:y': 1962.625
  - id: abyss_assembly_k_130_kc_3
    outputSource:
      - ABYSS_k_130_kc_3/assembly
    type: File
    'sbg:x': 922.71875
    'sbg:y': 1855.4375
  - id: abyss_assembly_k_130_kc_4
    outputSource:
      - ABYSS_k_130_kc_4/assembly
    type: File
    'sbg:x': 922.71875
    'sbg:y': 1748.25
  - id: abyss_assembly_k_135_kc_2
    outputSource:
      - ABYSS_k_135_kc_2/assembly
    type: File
    'sbg:x': 922.71875
    'sbg:y': 1641.0625
  - id: abyss_assembly_k_135_kc_3
    outputSource:
      - ABYSS_k_135_kc_3/assembly
    type: File
    'sbg:x': 922.71875
    'sbg:y': 1533.875
  - id: abyss_assembly_k_135_kc_4
    outputSource:
      - ABYSS_k_135_kc_4/assembly
    type: File
    'sbg:x': 922.71875
    'sbg:y': 1426.6875
  - id: abyss_assembly_k_140_kc_2
    outputSource:
      - ABYSS_k_140_kc_2/assembly
    type: File
    'sbg:x': 922.71875
    'sbg:y': 1319.5
  - id: abyss_assembly_k_140_kc_3
    outputSource:
      - ABYSS_k_140_kc_3/assembly
    type: File
    'sbg:x': 922.71875
    'sbg:y': 1212.3125
  - id: abyss_assembly_k_140_kc_4
    outputSource:
      - ABYSS_k_140_kc_4/assembly
    type: File
    'sbg:x': 922.71875
    'sbg:y': 1105.125
steps:
  - id: ABYSS_k_90_kc_2
    in:
      - id: partial_command_filename
        source: prepare_abyss_configuration_file/abyss_command_line
      - id: cpu
        source: cpu
      - id: directory_with_input_reads
        source: directory_with_input_reads
      - id: k_mer_size
        default: 90
      - id: min_k_mer_for_bm
        default: 2
    out:
      - id: assembly
    run: ./assemble.cwl
    label: ABYSS_k_90_kc_2
    'sbg:x': 611.484375
    'sbg:y': 675.9375
  - id: ABYSS_k_90_kc_3
    in:
      - id: partial_command_filename
        source: prepare_abyss_configuration_file/abyss_command_line
      - id: cpu
        source: cpu
      - id: directory_with_input_reads
        source: directory_with_input_reads
      - id: k_mer_size
        default: 90
      - id: min_k_mer_for_bm
        default: 3
    out:
      - id: assembly
    run: ./assemble.cwl
    label: ABYSS_k_90_kc_3
    'sbg:x': 611.484375
    'sbg:y': 540.75
  - id: ABYSS_k_90_kc_4
    in:
      - id: partial_command_filename
        source: prepare_abyss_configuration_file/abyss_command_line
      - id: cpu
        source: cpu
      - id: directory_with_input_reads
        source: directory_with_input_reads
      - id: k_mer_size
        default: 90
      - id: min_k_mer_for_bm
        default: 4
    out:
      - id: assembly
    run: ./assemble.cwl
    label: ABYSS_k_90_kc_4
    'sbg:x': 611.484375
    'sbg:y': 405.5625
  - id: ABYSS_k_95_kc_2
    in:
      - id: partial_command_filename
        source: prepare_abyss_configuration_file/abyss_command_line
      - id: cpu
        source: cpu
      - id: directory_with_input_reads
        source: directory_with_input_reads
      - id: k_mer_size
        default: 95
      - id: min_k_mer_for_bm
        default: 2
    out:
      - id: assembly
    run: ./assemble.cwl
    label: ABYSS_k_95_kc_2
    'sbg:x': 611.484375
    'sbg:y': 270.375
  - id: ABYSS_k_95_kc_3
    in:
      - id: partial_command_filename
        source: prepare_abyss_configuration_file/abyss_command_line
      - id: cpu
        source: cpu
      - id: directory_with_input_reads
        source: directory_with_input_reads
      - id: k_mer_size
        default: 95
      - id: min_k_mer_for_bm
        default: 3
    out:
      - id: assembly
    run: ./assemble.cwl
    label: ABYSS_k_95_kc_3
    'sbg:x': 611.484375
    'sbg:y': 135.1875
  - id: ABYSS_k_95_kc_4
    in:
      - id: partial_command_filename
        source: prepare_abyss_configuration_file/abyss_command_line
      - id: cpu
        source: cpu
      - id: directory_with_input_reads
        source: directory_with_input_reads
      - id: k_mer_size
        default: 95
      - id: min_k_mer_for_bm
        default: 4
    out:
      - id: assembly
    run: ./assemble.cwl
    label: ABYSS_k_95_kc_4
    'sbg:x': 611.484375
    'sbg:y': 0
  - id: ABYSS_k_100_kc_2
    in:
      - id: partial_command_filename
        source: prepare_abyss_configuration_file/abyss_command_line
      - id: cpu
        source: cpu
      - id: directory_with_input_reads
        source: directory_with_input_reads
      - id: k_mer_size
        default: 100
      - id: min_k_mer_for_bm
        default: 2
    out:
      - id: assembly
    run: ./assemble.cwl
    label: ABYSS_k_100_kc_2
    'sbg:x': 611.484375
    'sbg:y': 4326
  - id: ABYSS_k_100_kc_3
    in:
      - id: partial_command_filename
        source: prepare_abyss_configuration_file/abyss_command_line
      - id: cpu
        source: cpu
      - id: directory_with_input_reads
        source: directory_with_input_reads
      - id: k_mer_size
        default: 100
      - id: min_k_mer_for_bm
        default: 3
    out:
      - id: assembly
    run: ./assemble.cwl
    label: ABYSS_k_100_kc_3
    'sbg:x': 611.484375
    'sbg:y': 4190.8125
  - id: ABYSS_k_100_kc_4
    in:
      - id: partial_command_filename
        source: prepare_abyss_configuration_file/abyss_command_line
      - id: cpu
        source: cpu
      - id: directory_with_input_reads
        source: directory_with_input_reads
      - id: k_mer_size
        default: 100
      - id: min_k_mer_for_bm
        default: 4
    out:
      - id: assembly
    run: ./assemble.cwl
    label: ABYSS_k_100_kc_4
    'sbg:x': 611.484375
    'sbg:y': 4055.625
  - id: ABYSS_k_105_kc_2
    in:
      - id: partial_command_filename
        source: prepare_abyss_configuration_file/abyss_command_line
      - id: cpu
        source: cpu
      - id: directory_with_input_reads
        source: directory_with_input_reads
      - id: k_mer_size
        default: 105
      - id: min_k_mer_for_bm
        default: 2
    out:
      - id: assembly
    run: ./assemble.cwl
    label: ABYSS_k_105_kc_2
    'sbg:x': 611.484375
    'sbg:y': 3920.4375
  - id: ABYSS_k_105_kc_3
    in:
      - id: partial_command_filename
        source: prepare_abyss_configuration_file/abyss_command_line
      - id: cpu
        source: cpu
      - id: directory_with_input_reads
        source: directory_with_input_reads
      - id: k_mer_size
        default: 105
      - id: min_k_mer_for_bm
        default: 3
    out:
      - id: assembly
    run: ./assemble.cwl
    label: ABYSS_k_105_kc_3
    'sbg:x': 611.484375
    'sbg:y': 3785.25
  - id: ABYSS_k_105_kc_4
    in:
      - id: partial_command_filename
        source: prepare_abyss_configuration_file/abyss_command_line
      - id: cpu
        source: cpu
      - id: directory_with_input_reads
        source: directory_with_input_reads
      - id: k_mer_size
        default: 105
      - id: min_k_mer_for_bm
        default: 4
    out:
      - id: assembly
    run: ./assemble.cwl
    label: ABYSS_k_105_kc_4
    'sbg:x': 611.484375
    'sbg:y': 3650.0625
  - id: ABYSS_k_110_kc_2
    in:
      - id: partial_command_filename
        source: prepare_abyss_configuration_file/abyss_command_line
      - id: cpu
        source: cpu
      - id: directory_with_input_reads
        source: directory_with_input_reads
      - id: k_mer_size
        default: 115
      - id: min_k_mer_for_bm
        default: 2
    out:
      - id: assembly
    run: ./assemble.cwl
    label: ABYSS_k_110_kc_2
    'sbg:x': 611.484375
    'sbg:y': 3514.875
  - id: ABYSS_k_110_kc_3
    in:
      - id: partial_command_filename
        source: prepare_abyss_configuration_file/abyss_command_line
      - id: cpu
        source: cpu
      - id: directory_with_input_reads
        source: directory_with_input_reads
      - id: k_mer_size
        default: 115
      - id: min_k_mer_for_bm
        default: 3
    out:
      - id: assembly
    run: ./assemble.cwl
    label: ABYSS_k_110_kc_3
    'sbg:x': 611.484375
    'sbg:y': 3379.6875
  - id: ABYSS_k_110_kc_4
    in:
      - id: partial_command_filename
        source: prepare_abyss_configuration_file/abyss_command_line
      - id: cpu
        source: cpu
      - id: directory_with_input_reads
        source: directory_with_input_reads
      - id: k_mer_size
        default: 115
      - id: min_k_mer_for_bm
        default: 4
    out:
      - id: assembly
    run: ./assemble.cwl
    label: ABYSS_k_110_kc_4
    'sbg:x': 611.484375
    'sbg:y': 3244.5
  - id: ABYSS_k_115_kc_2
    in:
      - id: partial_command_filename
        source: prepare_abyss_configuration_file/abyss_command_line
      - id: cpu
        source: cpu
      - id: directory_with_input_reads
        source: directory_with_input_reads
      - id: k_mer_size
        default: 115
      - id: min_k_mer_for_bm
        default: 2
    out:
      - id: assembly
    run: ./assemble.cwl
    label: ABYSS_k_115_kc_2
    'sbg:x': 611.484375
    'sbg:y': 3109.3125
  - id: ABYSS_k_115_kc_3
    in:
      - id: partial_command_filename
        source: prepare_abyss_configuration_file/abyss_command_line
      - id: cpu
        source: cpu
      - id: directory_with_input_reads
        source: directory_with_input_reads
      - id: k_mer_size
        default: 115
      - id: min_k_mer_for_bm
        default: 3
    out:
      - id: assembly
    run: ./assemble.cwl
    label: ABYSS_k_115_kc_3
    'sbg:x': 611.484375
    'sbg:y': 2974.125
  - id: ABYSS_k_115_kc_4
    in:
      - id: partial_command_filename
        source: prepare_abyss_configuration_file/abyss_command_line
      - id: cpu
        source: cpu
      - id: directory_with_input_reads
        source: directory_with_input_reads
      - id: k_mer_size
        default: 115
      - id: min_k_mer_for_bm
        default: 4
    out:
      - id: assembly
    run: ./assemble.cwl
    label: ABYSS_k_115_kc_4
    'sbg:x': 611.484375
    'sbg:y': 2838.9375
  - id: ABYSS_k_120_kc_2
    in:
      - id: partial_command_filename
        source: prepare_abyss_configuration_file/abyss_command_line
      - id: cpu
        source: cpu
      - id: directory_with_input_reads
        source: directory_with_input_reads
      - id: k_mer_size
        default: 120
      - id: min_k_mer_for_bm
        default: 2
    out:
      - id: assembly
    run: ./assemble.cwl
    label: ABYSS_k_120_kc_2
    'sbg:x': 611.484375
    'sbg:y': 2703.75
  - id: ABYSS_k_120_kc_3
    in:
      - id: partial_command_filename
        source: prepare_abyss_configuration_file/abyss_command_line
      - id: cpu
        source: cpu
      - id: directory_with_input_reads
        source: directory_with_input_reads
      - id: k_mer_size
        default: 120
      - id: min_k_mer_for_bm
        default: 3
    out:
      - id: assembly
    run: ./assemble.cwl
    label: ABYSS_k_120_kc_3
    'sbg:x': 611.484375
    'sbg:y': 2568.5625
  - id: ABYSS_k_120_kc_4
    in:
      - id: partial_command_filename
        source: prepare_abyss_configuration_file/abyss_command_line
      - id: cpu
        source: cpu
      - id: directory_with_input_reads
        source: directory_with_input_reads
      - id: k_mer_size
        default: 120
      - id: min_k_mer_for_bm
        default: 4
    out:
      - id: assembly
    run: ./assemble.cwl
    label: ABYSS_k_120_kc_4
    'sbg:x': 611.484375
    'sbg:y': 2433.375
  - id: ABYSS_k_125_kc_2
    in:
      - id: partial_command_filename
        source: prepare_abyss_configuration_file/abyss_command_line
      - id: cpu
        source: cpu
      - id: directory_with_input_reads
        source: directory_with_input_reads
      - id: k_mer_size
        default: 125
      - id: min_k_mer_for_bm
        default: 2
    out:
      - id: assembly
    run: ./assemble.cwl
    label: ABYSS_k_125_kc_2
    'sbg:x': 611.484375
    'sbg:y': 2298.1875
  - id: ABYSS_k_125_kc_3
    in:
      - id: partial_command_filename
        source: prepare_abyss_configuration_file/abyss_command_line
      - id: cpu
        source: cpu
      - id: directory_with_input_reads
        source: directory_with_input_reads
      - id: k_mer_size
        default: 125
      - id: min_k_mer_for_bm
        default: 3
    out:
      - id: assembly
    run: ./assemble.cwl
    label: ABYSS_k_125_kc_3
    'sbg:x': 611.484375
    'sbg:y': 2163
  - id: ABYSS_k_125_kc_4
    in:
      - id: partial_command_filename
        source: prepare_abyss_configuration_file/abyss_command_line
      - id: cpu
        source: cpu
      - id: directory_with_input_reads
        source: directory_with_input_reads
      - id: k_mer_size
        default: 125
      - id: min_k_mer_for_bm
        default: 4
    out:
      - id: assembly
    run: ./assemble.cwl
    label: ABYSS_k_125_kc_4
    'sbg:x': 611.484375
    'sbg:y': 2027.8125
  - id: ABYSS_k_130_kc_2
    in:
      - id: partial_command_filename
        source: prepare_abyss_configuration_file/abyss_command_line
      - id: cpu
        source: cpu
      - id: directory_with_input_reads
        source: directory_with_input_reads
      - id: k_mer_size
        default: 130
      - id: min_k_mer_for_bm
        default: 2
    out:
      - id: assembly
    run: ./assemble.cwl
    label: ABYSS_k_130_kc_2
    'sbg:x': 611.484375
    'sbg:y': 1892.625
  - id: ABYSS_k_130_kc_3
    in:
      - id: partial_command_filename
        source: prepare_abyss_configuration_file/abyss_command_line
      - id: cpu
        source: cpu
      - id: directory_with_input_reads
        source: directory_with_input_reads
      - id: k_mer_size
        default: 130
      - id: min_k_mer_for_bm
        default: 3
    out:
      - id: assembly
    run: ./assemble.cwl
    label: ABYSS_k_130_kc_3
    'sbg:x': 611.484375
    'sbg:y': 1757.4375
  - id: ABYSS_k_130_kc_4
    in:
      - id: partial_command_filename
        source: prepare_abyss_configuration_file/abyss_command_line
      - id: cpu
        source: cpu
      - id: directory_with_input_reads
        source: directory_with_input_reads
      - id: k_mer_size
        default: 130
      - id: min_k_mer_for_bm
        default: 4
    out:
      - id: assembly
    run: ./assemble.cwl
    label: ABYSS_k_130_kc_4
    'sbg:x': 611.484375
    'sbg:y': 1622.25
  - id: ABYSS_k_135_kc_2
    in:
      - id: partial_command_filename
        source: prepare_abyss_configuration_file/abyss_command_line
      - id: cpu
        source: cpu
      - id: directory_with_input_reads
        source: directory_with_input_reads
      - id: k_mer_size
        default: 135
      - id: min_k_mer_for_bm
        default: 2
    out:
      - id: assembly
    run: ./assemble.cwl
    label: ABYSS_k_135_kc_2
    'sbg:x': 611.484375
    'sbg:y': 1487.0625
  - id: ABYSS_k_135_kc_3
    in:
      - id: partial_command_filename
        source: prepare_abyss_configuration_file/abyss_command_line
      - id: cpu
        source: cpu
      - id: directory_with_input_reads
        source: directory_with_input_reads
      - id: k_mer_size
        default: 135
      - id: min_k_mer_for_bm
        default: 3
    out:
      - id: assembly
    run: ./assemble.cwl
    label: ABYSS_k_135_kc_3
    'sbg:x': 611.484375
    'sbg:y': 1351.875
  - id: ABYSS_k_135_kc_4
    in:
      - id: partial_command_filename
        source: prepare_abyss_configuration_file/abyss_command_line
      - id: cpu
        source: cpu
      - id: directory_with_input_reads
        source: directory_with_input_reads
      - id: k_mer_size
        default: 135
      - id: min_k_mer_for_bm
        default: 4
    out:
      - id: assembly
    run: ./assemble.cwl
    label: ABYSS_k_135_kc_4
    'sbg:x': 611.484375
    'sbg:y': 1216.6875
  - id: ABYSS_k_140_kc_2
    in:
      - id: partial_command_filename
        source: prepare_abyss_configuration_file/abyss_command_line
      - id: cpu
        source: cpu
      - id: directory_with_input_reads
        source: directory_with_input_reads
      - id: k_mer_size
        default: 140
      - id: min_k_mer_for_bm
        default: 2
    out:
      - id: assembly
    run: ./assemble.cwl
    label: ABYSS_k_140_kc_2
    'sbg:x': 611.484375
    'sbg:y': 1081.5
  - id: ABYSS_k_140_kc_3
    in:
      - id: partial_command_filename
        source: prepare_abyss_configuration_file/abyss_command_line
      - id: cpu
        source: cpu
      - id: directory_with_input_reads
        source: directory_with_input_reads
      - id: k_mer_size
        default: 140
      - id: min_k_mer_for_bm
        default: 3
    out:
      - id: assembly
    run: ./assemble.cwl
    label: ABYSS_k_140_kc_3
    'sbg:x': 611.484375
    'sbg:y': 946.3125
  - id: ABYSS_k_140_kc_4
    in:
      - id: partial_command_filename
        source: prepare_abyss_configuration_file/abyss_command_line
      - id: cpu
        source: cpu
      - id: directory_with_input_reads
        source: directory_with_input_reads
      - id: k_mer_size
        default: 140
      - id: min_k_mer_for_bm
        default: 4
    out:
      - id: assembly
    run: ./assemble.cwl
    label: ABYSS_k_140_kc_4
    'sbg:x': 611.484375
    'sbg:y': 811.125
  - id: prepare_abyss_configuration_file
    in:
      - id: directory_with_input_reads
        source: directory_with_input_reads
    out:
      - id: abyss_command_line
    run: >-
      ../../fungal_genome_assemblies_and_annotation/0.0.1/prepare_abyss_configuration_file.cwl
    label: prepare_abyss_configuration_file
    'sbg:x': 264.4999694824219
    'sbg:y': 2177
requirements: []
