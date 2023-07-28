input_files = Channel.fromPath(params.input, checkIfExists:true)
chunksize = params.chunksize
strategy = params.strategy

include { RUN_CHUNKER } from '../modules/local/chunker'
include { RUN_MERGE } from '../modules/local/merge'

workflow NF_PREPROCESS {
     

        RUN_CHUNKER(input_files, chunksize, strategy)
        output = RUN_MERGE(RUN_CHUNKER.out.collect())
    }
