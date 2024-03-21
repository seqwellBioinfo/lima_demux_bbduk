
#pacbio lima bbduk demux

this is the work flow using lima and bbduk to do demux on pacbio data for seqwell kit.

requirements: 
for the hifi bam file name, it requires pacbio barcode info (for example bc1003) in the third string separated by .
for example, SEQW102-002-01.hifi_reads.bc1003.bam  and SEQW102-002-01.hifi_reads.bc1003copy.bam.

The output from this pipeline has lima output, bbduk output, and also a bbduk summary.

The pipeline can be run using the scripts in the nextflow.sh script, run as bash nextflow.sh.

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



