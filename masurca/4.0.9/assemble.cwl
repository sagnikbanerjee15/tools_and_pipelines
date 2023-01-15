class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: assemble
baseCommand: []
inputs:
  - id: raw_fastq_directory
    type: Directory
  - id: config_file
    type: File
outputs:
  - id: assemble_script
    type: File?
    outputBinding:
      glob: '*assemble.sh'
  - id: assembly_fasta
    type: File?
    outputBinding:
      glob: CA/*primary.genome.scf.fasta
label: assemble
arguments:
  - position: 1
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "cp "+inputs.raw_fastq_directory.path+"/* /tmp/ &&"
      }
  - position: 2
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return  "masurca "+inputs.config_file.path+ " && "
      }
  - position: 3
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return " ./assemble.sh"
      }
requirements:
  - class: ShellCommandRequirement
  - class: DockerRequirement
    dockerPull: 'ghcr.io/sagnikbanerjee15/dockerized_tools_and_pipelines/masurca:4.0.9'
  - class: InlineJavascriptRequirement
