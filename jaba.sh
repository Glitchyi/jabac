file=$(basename -- "$1")
extension="${file##*.}"
filename="${file%.*}"
count=0
total=34
pstr="[=============================]"
c="c" 
java="java"
echo --------------------------------------
printf "\033[96mCompiling $filename of type $extension \n\033[0m"


while [ $count -lt $total ]; do
  sleep 0.005 # this is work
  count=$(( $count + 1 ))
  pd=$(( $count * 73 / $total ))
  printf "\r%3d.%1d%% %.${pd}s" $(( $count * 100 / $total )) $(( ($count * 1000 / $total) % 10 )) $pstr
done
echo
echo --------------------------------------


if [ "$extension" = "$c" ];then
    gcc $1 && ./a.out && rm a.out
elif [ "$extension" = "$java" ]; then
    javac -d $filename $1 && cd $filename && java $filename && cd .. && rm -rf $filename
else
    echo "jabac <file-name>"
fi
