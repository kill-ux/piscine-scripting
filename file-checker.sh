
if [[ $# > 1 ]]; then
		echo "Error: No file provided"
		exit 1
fi

if [[ -f $1 ]]; then
		echo "File is exists"
		if [[ -r $1 ]]; then
			echo "File is readable"
		else 
			echo "File is not readable"
		fi


		if [[ -w $1 ]]; then
			echo "File is writable"
		else 
			echo "File is not writable"
		fi


		if [[ -x $1 ]]; then
			echo "File is executable"
		else 
			echo "File is not executable"
		fi
else 
		echo "File is not exist"
fi
