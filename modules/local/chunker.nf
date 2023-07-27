process RUN_CHUNKER {    
  input:
	  path dataSmall
  output:
		

	"""
	 java -jar /home/marvin/Desktop/genomic-utils.jar file-chunking  --output /home/marvin/Desktop/nextflowOutput/output --chunksize 100 ${dataSmall}
	"""
}