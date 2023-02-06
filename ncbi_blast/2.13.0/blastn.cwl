class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: blastn
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
      glob: '*blastn_results'
label: blastn
arguments:
  - position: 0
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "makeblastdb -dbtype nucl --out "+" blastdb -in "+inputs.reference.path + "&& blast -db blastdb -out blastn_results -query "+inputs.query.path + " -outfmt '6 qseqid sseqid qlen qstart qend sstart send evalue bitscore length pident qcovs qlen slen' "
      }
requirements:
  - class: ShellCommandRequirement
  - class: DockerRequirement
    dockerPull: 'sagnikbanerjee15/ncbi-blast:2.13.0'
  - class: InlineJavascriptRequirement
