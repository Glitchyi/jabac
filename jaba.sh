filename=$(basename -- "$1")
extension="${filename##*.}"
filename="${filename%.*}"
c="c" 
java="java"
if [ "$extension" = "$c" ];then
    echo compiling $filename of type $extension
    echo --------------------------------------
    gcc $1 && ./a.out && rm a.out
elif [ "$extension" = "$java" ]; then
    echo compiling $filename of type $extension
    echo --------------------------------------
    javac -d $filename $1 && cd $filename && java $filename && cd .. && sudo rm -rf $filename
else
    echo "jabac <file-name>"
fi
