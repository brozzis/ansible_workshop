echo "## Workshop " > README.md
echo >> README.md
for i in 0?? ; do S=$(head -n1 $i/README.md | cut -c4-) ; printf  " - [%s]($i/README.md)\n" $S; done >> README.md
