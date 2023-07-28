process RUN_BCFTOOLS {    
  publishDir "output", mode: 'symlink'
  input:
	  path manifests
  output:
    path "manifest.txt"
		
	"""
    
    """
}