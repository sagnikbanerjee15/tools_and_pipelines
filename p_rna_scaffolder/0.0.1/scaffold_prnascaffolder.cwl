class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: scaffold_prnascaffolder
baseCommand:
  - p_rna_scaffolder
inputs:
  - id: alignment_samfilename
    type: File
    inputBinding:
      position: 1
      prefix: '-i'
      shellQuote: false
  - id: contigs_filename
    type: File
    inputBinding:
      position: 2
      prefix: '-j'
      shellQuote: false
  - id: left_fastq
    type: File
    inputBinding:
      position: 3
      prefix: '-F'
      shellQuote: false
  - id: right_fastq
    type: File
    inputBinding:
      position: 4
      prefix: '-R'
      shellQuote: false
  - id: eukaryote
    type: boolean?
  - id: threads
    type: int?
    inputBinding:
      position: 6
      prefix: '-t'
      shellQuote: false
outputs:
  - id: prna_scaffolder_output
    type: Directory
    outputBinding:
      glob: output_folder_p_rna_scaffolder_*
label: scaffold_prnascaffolder
arguments:
  - position: 0
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "-d /P_RNA_scaffolder"
      }
  - position: 0
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return " -o output_folder_p_rna_scaffolder_"+inputs.contigs_filename.nameroot
      }
  - position: 5
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          if(inputs.eukaryote == undefined)
          {
              return "-s no"
          }
          else
          {
              return "-s yes"
          }
      }
requirements:
  - class: ShellCommandRequirement
  - class: DockerRequirement
    dockerPull: >-
      ghcr.io/sagnikbanerjee15/dockerized_tools_and_pipelines/p_rna_scaffolder:0.0.1
  - class: InlineJavascriptRequirement
stdout: p_rna_scaffolder.output
stderr: p_rna_scaffolder.error
