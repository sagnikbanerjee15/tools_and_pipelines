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
  - id: cpu
    type: int?
    inputBinding:
      position: 3
      prefix: '-p'
      shellQuote: false
outputs:
  - id: output_fasta
    type: File
    outputBinding:
      glob: soapdenovo127mer_output*scafSeq
label: assemble
arguments:
  - position: 1
    prefix: ''
    shellQuote: false
    valueFrom: '${     return "cp "+inputs.raw_fastq_directory.path+"/* /tmp &&" }'
  - position: 2
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${     
          return  "SOAPdenovo-127mer all -s "+inputs.config_file.path+ " -K 127  -R -o soapdenovo127mer_output " 
          
      }
requirements:
  - class: ShellCommandRequirement
  - class: DockerRequirement
    dockerPull: 'ghcr.io/sagnikbanerjee15/dockerized_tools_and_pipelines/soapdenovo2:2.04'
  - class: InlineJavascriptRequirement
