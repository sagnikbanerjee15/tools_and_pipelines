class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: merge_multiple_paired_ended_reads
baseCommand: []
inputs:
  - id: directory_of_input_reads
    type: Directory
outputs:
  - id: pair1
    type: File
    outputBinding:
      glob: '*merged_1.fastq'
  - id: pair2
    type: File
    outputBinding:
      glob: '*merged_2.fastq'
label: merge_multiple_paired_ended_reads
arguments:
  - position: 0
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "cat " + inputs.directory_of_input_reads.path + "/*_1.fastq > merged_1.fastq && " + "cat " + inputs.directory_of_input_reads.path + "/*_2.fastq > merged_2.fastq && "
      }
requirements:
  - class: ShellCommandRequirement
  - class: DockerRequirement
    dockerPull: 'ghcr.io/sagnikbanerjee15/dockerized_tools_and_pipelines/star:2.7.10a'
  - class: InlineJavascriptRequirement
