class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: execute_fgmp_and_compile_single_output_file
baseCommand:
  - execute_FGMP_and_compile_single_output_file
inputs:
  - id: masurca_with_rascaf
    type: File
    inputBinding:
      position: 0
      prefix: '--masurca_with_rascaf'
      shellQuote: false
  - id: masurca_with_prna_scaffolder
    type: Directory
    inputBinding:
      position: 0
      prefix: '--masurca_with_prna_scaffolder'
      shellQuote: false
  - id: megahit_with_rascaf
    type: File
    inputBinding:
      position: 0
      prefix: '--megahit_with_rascaf'
      shellQuote: false
  - id: megahit_with_prna_scaffolder
    type: Directory
    inputBinding:
      position: 0
      prefix: '--megahit_with_prna_scaffolder'
      shellQuote: false
  - id: soapdenovo2_with_rascaf
    type: File
    inputBinding:
      position: 0
      prefix: '--soapdenovo2_with_rascaf'
      shellQuote: false
  - id: soapdenovo2_with_prna_scaffolder
    type: Directory
    inputBinding:
      position: 0
      prefix: '--soapdenovo2_with_prna_scaffolder'
      shellQuote: false
  - id: abyss_with_rascaf
    type: File
    inputBinding:
      position: 0
      prefix: '--abyss_with_rascaf'
      shellQuote: false
  - id: abyss_with_prna_scaffolder
    type: File
    inputBinding:
      position: 0
      prefix: '--abyss_with_prna_scaffolder'
      shellQuote: false
  - id: threads
    type: int
    inputBinding:
      position: 0
      shellQuote: false
outputs:
  - id: consolidated_fgmp
    type: File
    outputBinding:
      glob: '*consolidated_fgmp.output'
label: execute_FGMP_and_compile_single_output_file
arguments:
  - position: 0
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "--output_filename consolidated_fgmp.output"
      }
requirements:
  - class: ShellCommandRequirement
  - class: DockerRequirement
    dockerPull: >-
      ghcr.io/sagnikbanerjee15/dockerized_tools_and_pipelines/fungal_genome_assemblies_and_annotation:0.0.1
  - class: InlineJavascriptRequirement
stdout: execute_FGMP_and_compile_single_output_file.output
stderr: execute_FGMP_and_compile_single_output_file.error
