#!/bin/bash
# Made by Pinaki Bhattacharjee
echo "Competitive Programming BOT"
echo ""
echo "============================"
echo "Made by PINAKI BHATTACHARJEE"
echo "============================"
echo ""
echo "Enter Language (only extension without dot(.)) : "
read prog
echo ""
echo "Enter the name of the Folder : "
read name
echo ""
echo "Enter the number of Problems : "
read prob
echo ""
if [ $prob -le 26 ]
then
echo "Logs : "
mkdir "$name"
cd "$name"
touch "info.txt"
cat > info.txt <<EOF

Competitive Programming BOT

============================
Made by PINAKI BHATTACHARJEE
============================

Generated $prob Folders on : $(date +"%d-%m-%Y %r")
Language Used : .$prog

Happy Coding !!
EOF

chars=( {A..Z} )
for ((i=0;i<$prob;i++))
do
    echo "Generating Folder ${chars[i]}"
    mkdir "${chars[i]}"
    cd "${chars[i]}"
    echo "Generating Files in Folder ${chars[i]}"
    cp "P:\cpp\templates\basic.cpp" "${chars[i]}.$prog"
    cd ..
done
echo ""
echo "Process Completed Successfully !!"
echo ""
else
echo "Enter a value between 1-26"
echo ""
fi
echo "Thank You for using Competitive Programming BOT"