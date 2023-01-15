class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: samtools_index
baseCommand:
  - ln
  - '-s'
inputs:
  - id: bamfilename
    type: File
    inputBinding:
      position: 1
    doc: Bam file name
  - 'sbg:toolDefaultValue': '1'
    id: threads
    type: int?
  - id: cai_index
    type: boolean?
outputs:
  - id: bai
    type: File?
    outputBinding:
      glob: '*.bai'
  - id: cai
    type: File?
    outputBinding:
      glob: '*cai'
  - id: stdout
    type: File?
    outputBinding:
      glob: '*.output'
  - id: stderr
    type: File?
    outputBinding:
      glob: '*.error'
label: samtools_index
arguments:
  - position: 2
    prefix: ''
    shellQuote: false
    valueFrom: $(inputs.bamfilename.basename)
  - position: 3
    prefix: ''
    shellQuote: false
    valueFrom: '&&'
  - position: 4
    prefix: ''
    shellQuote: false
    valueFrom: samtools
  - position: 5
    prefix: ''
    shellQuote: false
    valueFrom: index
  - position: 6
    prefix: '-@'
    shellQuote: false
    valueFrom: $(inputs.threads)
  - position: 7
    prefix: ''
    valueFrom: |-
      ${
          if(inputs.cai_index)
              return "-c"
      }
  - position: 8
    prefix: ''
    shellQuote: false
    valueFrom: $(inputs.bamfilename.basename)
  - position: 9
    prefix: ''
    shellQuote: false
    valueFrom: '&&'
  - position: 10
    prefix: ''
    shellQuote: false
    valueFrom: rm
  - position: 11
    prefix: ''
    shellQuote: false
    valueFrom: $(inputs.bamfilename.basename)
requirements:
  - class: ShellCommandRequirement
  - class: InlineJavascriptRequirement
hints:
  - class: DockerRequirement
    dockerPull: 'ghcr.io/sagnikbanerjee15/dockerized_tools_and_pipelines/samtools:1.15.1'
stdout: samtools_index.output
stderr: samtools_index.error
