input_files = Channel.fromPath(params.input, checkIfExists:true)
input_files.view()
chunksize = Channel.from(params.chunksize)
strategy = Channel.from(params.strategy)

include { RUN_CHUNKER } from '../modules/local/chunker'

workflow NF_PREPROCESS {
        RUN_CHUNKER(input_files, chunksize, strategy)
        //RUN_MERGE(RUN_CHUNKER.out.collect())
    }
