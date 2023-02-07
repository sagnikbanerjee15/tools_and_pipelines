class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: stringtie_assemble_short_and_long_reads
baseCommand:
  - stringtie
inputs:
  - id: reference_aligned_short_reads_file
    type: File
    inputBinding:
      position: 1
      shellQuote: false
  - id: threads
    type: int?
    inputBinding:
      position: 2
      prefix: '-p'
  - id: reference
    type: File
    inputBinding:
      position: 3
      prefix: '--ref'
      shellQuote: false
  - id: reference_aligned_long_reads_file
    type: File
    inputBinding:
      position: 2
      shellQuote: false
outputs:
  - id: stringtie_assembly
    type: File
    outputBinding:
      glob: '*gtf'
label: stringtie_assemble_short_and_long_reads
arguments:
  - position: 4
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "-o stringtie_assembled_short_and_long_reads.gtf"
      }
  - position: 5
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "--mix"
      }
requirements:
  - class: ShellCommandRequirement
  - class: DockerRequirement
    dockerPull: 'sagnikbanerjee15/stringtie:2.2.1'
  - class: InlineJavascriptRequirement
