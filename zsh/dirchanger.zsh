DIRSTACKSIZE=9
DIRSTACKFILE=~/.zdirs
if [[ -f $DIRSTACKFILE ]] && $#dirstack -eq 0 ]]; then
	dirstack=( ${(f)"$(< $DIRSTACKFILE)"} )
	[[ -d $dirstack[1] ]] && cd $dirstack[1] #&& cd $OLDPWD
fi

cd $DIRSTACKFILE[1]

chpwd() {
	print -l $PWD ${(u)dirstack}> $DIRSTACKFILE
}
