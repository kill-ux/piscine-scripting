find . -iname "*.txt" | grep -o '[^/]*\.txt$' | cut -d "." -f 1
