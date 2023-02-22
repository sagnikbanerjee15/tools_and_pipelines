class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: blastp_against_ncbi_db
baseCommand: []
inputs:
  - id: query
    type: File
  - id: threads
    type: int?
    inputBinding:
      position: 2
      prefix: '-num_threads'
      shellQuote: false
  - id: blast_db_directory
    type: Directory
  - id: blast_db_database
    type: string
outputs:
  - id: blast_results
    type: File
    outputBinding:
      glob: '*blastn_results'
label: blastp_against_ncbi_db
arguments:
  - position: 1
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          
          return "blastp -db "+inputs.blast_db_directory.path+"/"+inputs.blast_db_database+" -out blastn_results -query "+inputs.query.path + " -outfmt '7 qseqid sseqid qlen qstart qend sstart send evalue bitscore length pident qcovs qlen slen' "
      }
requirements:
  - class: ShellCommandRequirement
  - class: DockerRequirement
    dockerPull: 'sagnikbanerjee15/ncbi-blast:2.13.0'
  - class: InlineJavascriptRequirement
