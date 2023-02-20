class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: blastp
baseCommand: []
inputs:
  - id: reference
    type: File
  - id: query
    type: File
  - id: threads
    type: int?
    inputBinding:
      position: 0
      prefix: '-num_threads'
      shellQuote: false
outputs:
  - id: blast_results
    type: File
    outputBinding:
      glob: '*blastp_results'
label: blastp
arguments:
  - position: 0
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "makeblastdb -dbtype prot -out "+" blastdb -in "+inputs.reference.path + " && blastp -db blastdb -out blastp_results -query "+inputs.query.path + " -outfmt '7 qseqid sseqid qlen qstart qend sstart send evalue bitscore length pident qcovs qlen slen' "
      }
requirements:
  - class: ShellCommandRequirement
  - class: DockerRequirement
    dockerPull: 'sagnikbanerjee15/ncbi-blast:2.13.0'
  - class: InlineJavascriptRequirement
