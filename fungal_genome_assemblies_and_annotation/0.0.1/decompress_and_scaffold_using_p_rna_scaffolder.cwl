class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: decompress_and_scaffold_using_p_rna_scaffolder
baseCommand: []
inputs:
  - id: threads
    type: int
    inputBinding:
      position: 2
      prefix: '--threads'
      shellQuote: false
  - id: compressed_assembly_file_from_abyss
    type: File
    inputBinding:
      position: 2
      prefix: '--compressed_assembly_file_from_abyss'
      shellQuote: false
  - id: left_fastq
    type: File
    inputBinding:
      position: 2
      prefix: '--left_fastq'
      shellQuote: false
  - id: right_fastq
    type: File
    inputBinding:
      position: 2
      prefix: '--right_fastq'
      shellQuote: false
outputs:
  - id: abyss_assembled_prna_scaffolded_output
    type: File
    outputBinding:
      glob: '*tar.gz'
label: decompress_and_scaffold_using_p_rna_scaffolder
arguments:
  - position: 0
    prefix: ''
    shellQuote: false
    valueFrom: >-
      ${     return "git clone
      https://github.com/sagnikbanerjee15/fungal_genome_assemblies_and_annotation.git
      &&" }
  - position: 1
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "fungal_genome_assemblies_and_annotation/src/decompress_and_scaffold_using_p_rna_scaffolder "
      }
  - position: 3
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "--output_filename abyss_prna_scaffolder.tar.gz"
      }
requirements:
  - class: ShellCommandRequirement
  - class: DockerRequirement
    dockerPull: >-
      ghcr.io/sagnikbanerjee15/dockerized_tools_and_pipelines/p_rna_scaffolder:0.0.1
  - class: InlineJavascriptRequirement
stdout: decompress_and_scaffold_using_p_rna_scaffolder.output
stderr: decompress_and_scaffold_using_p_rna_scaffolder.error
