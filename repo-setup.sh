for i in justmath algo sentire sleepsnear dotfiles tedious snips taradayo lagas karasa curo sicp-redux psex endo chow math-notes vaporwhere; do 
	git clone git@github.com:aequanimitas/$i.git;
done

for i in $(ls); do
	if [ -e  "$i/package.json" ];
	then 
		echo "Installing $i dependencies..."
		cd $i
		npm install
		cd ..
	fi
done
