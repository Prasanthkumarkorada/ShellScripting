nf=4
f=( default 4 2 1 3 )
a=( text.txt text1.txt a.txt)
for i in "${a[@]}"
 do 
 for j in "${f[@]}"
 do
	 FILE=/home/ec2-user/${f[$j]}/a{a[$i]}
 	 if test -f "$FILE"; then
	 echo "$FILE exist"
	 break
 	fi
 done
done