class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: bowtie_build_index
baseCommand:
  - bowtie2-build
inputs:
  - id: reference
    type: File
    inputBinding:
      position: 99
      shellQuote: false
  - id: threads
    type: int?
    inputBinding:
      position: 0
      prefix: '--threads'
      shellQuote: false
outputs:
  - id: bowtie_index
    type:
      - File
      - type: array
        items: File
    outputBinding:
      glob: bowtie_index*
label: bowtie_build_index
arguments:
  - position: 100
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "bowtie_index"
      }
requirements:
  - class: ShellCommandRequirement
  - class: DockerRequirement
    dockerPull: 'sagnikbanerjee15/tools_and_pipelines/bowtie2:2.4.5'
  - class: InlineJavascriptRequirement
