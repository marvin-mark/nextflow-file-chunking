process RUN_CHUNKER {    
  input:
	  path input
	  val chunksize
	  val strategy
  output:
	path "*.txt"
	
	script:
	"""
		java -jar /home/marvin/Desktop/genomic-utils.jar file-chunking  ${input} --output Manifest${input.baseName}.txt --chunksize ${chunksize} --strategy ${strategy}
	"""
}