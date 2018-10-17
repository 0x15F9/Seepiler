`find -name '*.cpp' -exec g++ {} -o {}.out \;`

for bin in $(find -name ${1:-'*.cpp'} | sed "s|^\./||");
do
	name=${bin::-4}.out
	name=${name,}
	g++ ${bin} -o ${name}
done
