MY_MESSAGE="Hello World"
export MY_MESSAGE
MY_NUM=100
export MY_NUM
MY_PI=3.142
export MY_PI
printenv | grep -e MY_MESSAGE -e MY_NUM -e MY_PI
