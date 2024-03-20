#@/bin/bash


samples=*.bam
barcodes_i7=seqwell_UDI2_p7.fa
barcodes_i5=seqwell_UDI2_p5.fa


nextflow run \
nextflow-pacbio-demux-bbduk/pacbio_demux_bbduk.nf \
-c nextflow-pacbio-demux-bbduk/nextflow.config \
--samples $samples \
--barcodes_i7 $barcodes_i7 \
--barcodes_i5 $barcodes_i5 \
-bg -resume
