#!/bin/bash
# arguments
name_to_change="$1"
new_name="$2"
file_type="$3" # txt, jpg, png...

if [ "" = "$name_to_change" ]; then
    echo "Example on how to use:"
    echo "./multiple_filename_changer.sh Jonny John txt"
    echo "Will change all .txt files on the folder that contains the word Jonny to Jonh."
else
    for f in *.${file_type}; do
        echo "Renaming $f" 
        mv "$f" "`echo $f | sed s/${name_to_change}/${new_name}/`"; done
fi
