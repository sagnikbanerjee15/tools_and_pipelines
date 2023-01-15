class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: rascaf
baseCommand:
  - rascaf
inputs:
  - id: position_sorted_alignment_bamfilename
    type: File
    inputBinding:
      position: 0
      prefix: '-b'
      shellQuote: false
  - id: raw_assembly_filename
    type: File
    inputBinding:
      position: 0
      prefix: '-f'
      shellQuote: false
outputs:
  - id: rascaf_output
    type: File
    outputBinding:
      glob: '*rascaf_*'
label: rascaf
arguments:
  - position: 0
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "-o rascaf_"+inputs.position_sorted_alignment_bamfilename.nameroot
      }
requirements:
  - class: ShellCommandRequirement
  - class: DockerRequirement
    dockerPull: 'ghcr.io/sagnikbanerjee15/dockerized_tools_and_pipelines/rascaf:1.0.2'
  - class: InlineJavascriptRequirement
stdout: rascaf.output
stderr: rascaf.error
