process RUN_MERGE {    
  publishDir "outputs", mode: 'symlink'
  input:
	  path manifests
  output:
    path "manifest.txt"
		
	"""
    awk 'NR == 1 || FNR > 1'  ${manifests} > manifest.txt
  """
}