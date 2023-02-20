class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: generate_summary_statistics_from_peptides
baseCommand:
  - generate_summary_statistics_from_peptides
inputs:
  - id: peptide_fasta
    type: File
    inputBinding:
      position: 0
      prefix: '--peptide_fasta'
      shellQuote: false
outputs:
  - id: summary
    type: File
    outputBinding:
      glob: '*_summary'
label: generate_summary_statistics_from_peptides
arguments:
  - position: 0
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "--output_filename "+inputs.peptide_fasta.nameroot+"_summary"
      }
requirements:
  - class: ShellCommandRequirement
  - class: DockerRequirement
    dockerPull: 'sagnikbanerjee15/fungal_genome_assemblies_and_annotation:0.0.1'
