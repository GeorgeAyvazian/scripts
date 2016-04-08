for i in `git status  | grep -oP "modified:\S*?\K.*"`; do 
	if [[ $i != *.properties ]] && [[ $i != */Test*java ]] 
	then 
		git add $i 
	fi
done

git stash -q --keep-index

cd cpt && cd cpt-admin && mvn test -T4 && cd .. && mvn test -T4

RESULT1=$?

git stash pop -q

[ "${RESULT1:-1}" -ne 0 ] && exit 1

exit 0
