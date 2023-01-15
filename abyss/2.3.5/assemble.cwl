class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: assemble
baseCommand: []
inputs:
  - id: partial_command_filename
    type: File
  - 'sbg:toolDefaultValue': '1'
    id: cpu
    type: int?
  - id: directory_with_input_reads
    type: Directory
  - 'sbg:toolDefaultValue': '100'
    id: k_mer_size
    type: int
  - 'sbg:toolDefaultValue': '2'
    id: min_k_mer_for_bm
    type: int
outputs:
  - id: assembly
    type: File
    outputBinding:
      glob: '*contigs.fa'
label: assemble
arguments:
  - position: 2
    prefix: ''
    shellQuote: false
    valueFrom: '${return "k="+inputs.k_mer_size}'
  - position: 3
    prefix: ''
    shellQuote: false
    valueFrom: '${return "B=2G"}'
  - position: 4
    prefix: ''
    shellQuote: false
    valueFrom: '${return "name=reference_assembly"}'
  - position: 5
    prefix: ''
    shellQuote: false
    valueFrom: '${return "j="+inputs.cpu}'
  - position: 1
    prefix: ''
    shellQuote: false
    valueFrom: '${return "cat "+inputs.partial_command_filename.path+" | xargs abyss-pe"}'
  - position: -1
    prefix: ''
    shellQuote: false
    valueFrom: '${return "cp "+inputs.directory_with_input_reads.path+"/* /tmp/ && "}'
  - position: 6
    prefix: ''
    shellQuote: false
    valueFrom: '${return "kc="+inputs.min_k_mer_for_bm}'
  - position: 7
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return " && mv reference_assembly-contigs.fa k_"+inputs.k_mer_size+"_kc_"+inputs.min_k_mer_for_bm+"_contigs.fa"
      }
requirements:
  - class: ShellCommandRequirement
  - class: DockerRequirement
    dockerPull: 'ghcr.io/sagnikbanerjee15/dockerized_tools_and_pipelines/abyss:2.3.5'
  - class: InlineJavascriptRequirement
stdout: abyss_assemble.output
stderr: abyss_assemble.error
