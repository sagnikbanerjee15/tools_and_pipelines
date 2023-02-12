class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: annotate_longest_orf
baseCommand:
  - annotate_longest_ORF
inputs:
  - id: transcripts_fasta
    type: File
    inputBinding:
      position: 0
      prefix: '--transcripts_fasta'
      shellQuote: false
outputs:
  - id: output_longest_ORF
    type: File
    outputBinding:
      glob: '*longest_ORF.gtf'
label: annotate_longest_ORF
arguments:
  - position: 0
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "--transcripts_gtf_file_with_cds longest_ORF.gtf"
      }
requirements:
  - class: ShellCommandRequirement
  - class: DockerRequirement
    dockerPull: 'sagnikbanerjee15/fungal_genome_assemblies_and_annotation:0.0.1'
  - class: InlineJavascriptRequirement
