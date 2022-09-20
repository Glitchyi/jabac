filename=$(basename -- "$1")
extension="${filename##*.}"
filename="${filename%.*}"
c="c" 
java="java"
echo $filename $extension
if [ "$extension" = "$c" ];then
    gcc $1 && ./a.out && rm a.out
elif [ "$extension" = "$java" ]; then
    javac $1 && java $filename && rm $filename.class
fi