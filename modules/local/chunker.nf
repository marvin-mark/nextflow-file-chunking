process RUN_CHUNKER {    
  input:
	  path input
	  val chunksize
	  val strategy
  output:
	path "*.txt"
	
	script:
	"""
		java -jar /opt/genomic-utils.jar file-chunking  ${input} --output Manifest${input.baseName}.txt --chunksize ${chunksize} --strategy ${strategy}
	"""
}