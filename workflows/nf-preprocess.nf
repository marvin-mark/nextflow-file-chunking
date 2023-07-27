vcf_files = "/home/marvin/Documents/nf-file-chunking/nextflow-file-chunking/test-data/dataSmall.vcf"

include { RUN_CHUNKER } from '../modules/local/chunker'

workflow NF_PREPROCESS {
        RUN_CHUNKER(vcf_files)
    }
