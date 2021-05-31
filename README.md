# Rscripts 
This a set of R scripts used in the processing of parliamentary open data. Their function has been verified under R version 3.4.0.

## ID_tagging (advanced)

This script is used to mark up strings that constitute the body text of parliamentary questions.   

It does so by identifing consecutive line breaks in text files. These are interpreted as the beginning of a new question’s body and tagged with the *universal registry number* of the question next in line. For doing so, the first element *firstqnr* and the text file *filename_org* are set right at the beginning.

The resulting file is named using the pre-fix "mod_" to the original text file.  

## generate list 

The script generates a list with the file names in a given directory and saves them in a file (*filename_org*).
