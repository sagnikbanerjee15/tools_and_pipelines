class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: fasta_to_fastq
baseCommand: []
inputs:
  - id: fasta_filename
    type: File
outputs:
  - id: fastq
    type: File
    outputBinding:
      glob: '*fastq'
label: fasta_to_fastq
arguments:
  - position: 0
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "perl -pe '/^>/ ? print \"\\n\" : chomp' "+inputs.fasta_filename.path+" | tail -n +2 > out.fasta  &&"
      }
  - position: 0
    prefix: ''
    shellQuote: false
    valueFrom: |-
      ${
          return "cat out.fasta | paste - - | perl -ne 'chomp; s/^>/@/; @v = split /\t/; printf(\"%s\\n%s\\n+\\n%s\\n\", $v[0], $v[1], \"B\"x length($v[1]))' > out.fastq"
      }
requirements:
  - class: InlineJavascriptRequirement
  - class: ShellCommandRequirement
  - class: DockerRequirement
    dockerPull: 'sagnikbanerjee15/samtools:1.16.1'
