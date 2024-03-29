# Aliases I have created so far
alias ll='ls -lhA'
alias clrscr='cat /dev/null > ~/.bash_history && history -c && history -w && clear'
alias resetscr='cat /dev/null > ~/.bash_history && history -c && history -w && clear'
alias dfdisk="df -Tha --total"
alias wgetc="wget -c"
alias ls='ls --color=auto'

replinallfiles() {
	find ./ -type f -readable -writable -exec sed -i "s/$1/$2/g" {} \;
}
alias replinfiles=replinallfiles

rendirs() {
	find . -depth -type d -not -name '.' -exec rename "s/$1/$2/" {} + \;
}

listfiles() {
	find . -type f -follow -print > modfiles.list;
	find . -type f -follow -print > files.txt;
}

makelistoffiles() {
	find . -type f -not -name '*~' > filenames.txt
}

deletebakfiles() {
	find . -type f -name '*~' -delete
}

cleardemo() {
	rm -rf /var/www/html/demo/var/cache/*
	rm -rf /var/www/html/demo/var/session/*
	rm -rf /var/www/html/demo/var/debug/*
	rm -rf /var/www/html/demo/var/log/*
}

clearlocal() {
	rm -rf /var/www/html/$1/var/cache/*
	rm -rf /var/www/html/$1/var/session/*
	rm -rf /var/www/html/$1/var/debug/*
	rm -rf /var/www/html/$1/var/log/*
}
