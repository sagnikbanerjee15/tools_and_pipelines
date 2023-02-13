class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: annotate_gtf_with_cds
baseCommand:
  - annotate_gtf_with_CDS
inputs:
  - id: gtf_file_without_cds
    type: File
    inputBinding:
      position: 0
      prefix: '--gtf_file_without_cds'
      shellQuote: false
  - id: gtf_from_cds_prediction_program
    type: File
    inputBinding:
      position: 0
      prefix: '--gtf_from_CDS_prediction'
      shellQuote: false
  - id: prepend_string_to_filename
    type: string?
outputs:
  - id: output_with_cds
    type: File
    outputBinding:
      glob: '*with_cds.gtf'
label: annotate_gtf_with_CDS
arguments:
  - position: 0
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "--gtf_file_with_cds "+inputs.prepend_string_to_filename+"_with_cds.gtf"
      }
requirements:
  - class: ShellCommandRequirement
  - class: DockerRequirement
    dockerPull: 'sagnikbanerjee15/fungal_genome_assemblies_and_annotation:0.0.1'
  - class: InlineJavascriptRequirement
