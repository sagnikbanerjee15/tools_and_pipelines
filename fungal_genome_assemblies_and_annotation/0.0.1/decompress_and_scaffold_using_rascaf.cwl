class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: decompress_and_scaffold_using_rascaf
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
  - id: abyss_assembled_rascaf_output
    type: File
    outputBinding:
      glob: '*tar.gz'
label: decompress_and_scaffold_using_rascaf
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
          return "fungal_genome_assemblies_and_annotation/src/decompress_and_scaffold_using_rascaf "
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
    dockerPull: 'ghcr.io/sagnikbanerjee15/dockerized_tools_and_pipelines/rascaf:1.0.2'
  - class: InlineJavascriptRequirement
stdout: decompress_and_scaffold_using_rascaf.output
stderr: decompress_and_scaffold_using_rascaf.error
