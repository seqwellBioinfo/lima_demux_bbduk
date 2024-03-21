
# nextflow pipeline for pacbio lima bbduk demux

This is the work flow in nextflow pipeline using lima and bbduk to do demux on pacbio data for seqWell longplex kit. The output from this pipeline has lima output, bbduk output, and also a bbduk summary.

## Requirements: 
For the hifi bam file name, it requires pacbio barcode info (for example bc1003) in the third string separated by .
for example, SEQW102-002-01.hifi_reads.bc1003.bam  and SEQW102-002-01.hifi_reads.bc1003copy.bam.


## How to run the pipeline:
Download the code and put the files in this tree structure

```
$ tree
.
├── README.md
├── nextflow-pacbio-demux-bbduk
│   ├── bin
│   │   └── create_bbduk_summary.R
│   ├── nextflow.config
│   └── pacbio_demux_bbduk.nf
└── nextflow.sh
```
The pipeline can be run using the scripts in the nextflow.sh script, run as `bash nextflow.sh`.
The required inputs are hifi bam files, and seqWell LongPlex barcode.

```
#!/bin/bash


samples=*.bam
barcodes_i7=LongPlex_set3_i7_trimmed_adapters.fa
barcodes_i5=LongPlex_set3_i5_trimmed_adapters.fa

nextflow run \
nextflow-pacbio-demux-bbduk/pacbio_demux_bbduk.nf \
-c nextflow-pacbio-demux-bbduk/nextflow.config \
--samples $samples \
--barcodes_i7 $barcodes_i7 \
--barcodes_i5 $barcodes_i5 \
-bg -resume


```



