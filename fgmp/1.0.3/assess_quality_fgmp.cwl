class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: assess_quality_fgmp
baseCommand: []
inputs:
  - id: genome_fastafile
    type: File
  - 'sbg:toolDefaultValue': '1'
    id: threads
    type: int?
    inputBinding:
      position: 5
      prefix: '--threads'
      shellQuote: false
outputs:
  - id: report
    type: File
    outputBinding:
      glob: '*fgmp_report'
label: assess_quality_fgmp
arguments:
  - position: 5
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "--output " + inputs.genome_fastafile.nameroot + "_fgmp_report"
      }
  - position: 1
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "cp " + inputs.genome_fastafile.path + " . && "
      }
  - position: 3
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "cp -r /software/FGMP/data . && cp -r /software/FGMP/src . && "
      }
  - position: 4
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "fgmp.pl --genome "+inputs.genome_fastafile.basename 
      }
requirements:
  - class: ShellCommandRequirement
  - class: DockerRequirement
    dockerPull: 'ghcr.io/sagnikbanerjee15/dockerized_tools_and_pipelines/fgmp:1.0.3'
  - class: InlineJavascriptRequirement
