#!/bin/bash

 find $1 -depth | while read file
 do
   file_clean=${file//[ ()&\'\,]/-}
   mv "$file" "$file_clean"
done
