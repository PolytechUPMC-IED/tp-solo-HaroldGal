#!/bin/bash

fichier=`ls $1*.tgz`

for i in $fichier;do	
	tar xvzf $i
done
