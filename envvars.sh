
#dynamically reference an env var
export FOO_HELLO="HELLO"
export BAR_HELLO="goodbye"

export myvar=BAR
export newvar=${myvar}_HELLO; 
echo ${!newvar}

