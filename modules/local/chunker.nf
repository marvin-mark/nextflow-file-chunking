process RUN_CHUNKER {    
  input:
	  path input
	  val chunksize
	  val strategy
  output:
		
	"""
	mkdir test
	 java -jar /home/marvin/Desktop/genomic-utils.jar file-chunking  --output ${input.baseName}_out --chunksize ${chunksize} --strategy ${strategy} --output-dir test ${input}
	"""
}