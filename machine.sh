for i in tmux git bash-completion postgresql postgresql-contrib emacs \
	 python-dev libfreetype6 libfreetype6-dev libpng libpng-dev cmake qt4-qmake qt4-default; do
	apt-get install $i;
done;

wget https://bootstrap.pypa.io/get-pip.py && python get-pip.py && rm get-pip.py
alias pip="python ~/.local/lib/python2.7/site-packages/pip"
