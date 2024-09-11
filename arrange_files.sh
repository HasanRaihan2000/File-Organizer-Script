#!/bin/bash

source_dir="C:/Users/hasan/Downloads"
image_dir="C:/Users/hasan/Desktop/Files/Media/Images"
audio_dir="C:/Users/hasan/Desktop/Files/Media/Audio"
video_dir="C:/Users/hasan/Desktop/Files/Media/Video"
doc_dir="C:\Users\hasan\Desktop\Files\Document Files\WOrd"
pdf_dir="C:\Users\hasan\Desktop\Files\Document Files\PDF"
ppt_dir="C:\Users\hasan\Desktop\Files\Document Files\PPT"
txt_dir="C:\Users\hasan\Desktop\Files\Document Files\TXT"
execl_dir="C:\Users\hasan\Desktop\Files\Document Files\EXCEL"
zip_dir="C:\Users\hasan\Desktop\Files\ZIP"

while true; do
    files_found=0
    for file in "$source_dir"/*; do
        if [ -f "$file" ]; then
            case "$file" in 
                *.jpg|*.jpeg|*.png|*.gif|*.bmp|*.svg|*.ico|*.tiff|*.webp|*.avif)
                    echo "Moving image file $file to $image_dir"
                    mv "$file" "$image_dir"
                    ;;
                *.mp3|*.wav|*.aac|*.flac)
                    echo "Moving audio file $file to $audio_dir"
                    mv "$file" "$audio_dir"
                    ;;
                *.mp4|*.avi|*.mov|*.wmv)
                    echo "Moving video file $file to $video_dir"
                    mv "$file" "$video_dir"
                    ;;
                *.doc|*.docx)
                    echo "Moving Document file $file to $doc_dir"
                    mv "$file" "$doc_dir"
                    ;;
                *.zip)
                    echo "Moving Zip fil $file to $zip_dir"
                    mv "$file" "$zip_dir"
                    ;;
                *.ppt|*.pptx)
                    echo "Moving ppt file $file to $ppt_dir"
                    mv "$file" "$ppt_dir"
                    ;;
                *.xls|*.xlsx|*.csv)
                    echo "Moving Excel file $file to $execl_dir"
                    mv "$file" "$execl_dir"
                    ;;
                *.pdf)
                    echo "Moving Pdf file $file to $pdf_dir"
                    mv "$file" "$pdf_dir"
                    ;;
            esac
        fi
    done
    if [[ $files_found -eq 0 ]]; then
        break
    fi

    sleep 30
done

echo "script finished executing"