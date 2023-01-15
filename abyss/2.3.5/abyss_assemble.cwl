class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: abyss_assemble
baseCommand: []
inputs:
  - id: directory_with_input_reads
    type: Directory
    inputBinding:
      position: 4
      prefix: '--directory_with_input_reads'
      shellQuote: false
  - id: threads
    type: int
outputs:
  - id: abyss_assembly_output
    type: File
    outputBinding:
      glob: '*abyss_assemblies.tar.gz'
label: abyss_assemble
arguments:
  - position: 1
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "git clone https://github.com/sagnikbanerjee15/fungal_genome_assemblies_and_annotation.git &&"
      }
  - position: 2
    prefix: ''
    shellQuote: false
    valueFrom: '${return "cp "+inputs.directory_with_input_reads.path+"/* /tmp/ && "}'
  - position: 3
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "fungal_genome_assemblies_and_annotation/src/execute_abyss_and_output_zipped_file --cpu "+inputs.threads+" --min_k_mer_for_bm 2 3 --k_mer_size 90 95 --output_filename abyss_assemblies.tar.gz"
      }
requirements:
  - class: ShellCommandRequirement
  - class: DockerRequirement
    dockerPull: 'ghcr.io/sagnikbanerjee15/dockerized_tools_and_pipelines/abyss:2.3.5'
  - class: InlineJavascriptRequirement
stdout: abyss_assemble.output
stderr: abyss_assemble.error
