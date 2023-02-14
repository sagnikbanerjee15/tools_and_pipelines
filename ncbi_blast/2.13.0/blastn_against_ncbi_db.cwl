class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: blastn_against_ncbi_db
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
  - id: blast_db
    type: Directory
outputs:
  - id: blast_results
    type: File
    outputBinding:
      glob: '*blastn_results'
label: blastn_against_ncbi_db
arguments:
  - position: 1
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          if(inputs.blast_db=="nt")
              blast_db_loc = inputs.blast_db.path + "/nt"
          
          return "blastn -db "+blast_db_loc+" -out blastn_results -query "+inputs.query.path + " -outfmt '7 qseqid sseqid qlen qstart qend sstart send evalue bitscore length pident qcovs qlen slen' "
      }
requirements:
  - class: ShellCommandRequirement
  - class: DockerRequirement
    dockerPull: 'sagnikbanerjee15/ncbi-blast:2.13.0'
  - class: InlineJavascriptRequirement
