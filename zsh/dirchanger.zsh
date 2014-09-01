echo "loaded dirstack!"

DIRSTACKSIZE=9
DIRSTACKFILE=~/.zdirs
if [[ -f $DIRSTACKFILE ]] && $#dirstack -eq 0 ]]; then
	dirstack=( ${(f)"$(< $DIRSTACKFILE)"} )
	[[ -d $dirstack[1] ]] && cd $dirstack[1] && cd $OLDPWD
fi

cd $DIRSTACKFILE[1]

chpwd() {
	print -l $PWD ${(u)dirstack}> $DIRSTACKFILE
}

jump() {
    i=1
    for dir in $dirstack
    do
        print \[$i\] $dir
        let i+=1
    done
    printf "jump to directory: "
    read dir
    cd $dirstack[$dir]
}
