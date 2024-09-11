# File Organizer Script

This is a simple Bash script that automatically moves files from a source directory ( `Downloads`) to designated directories based on their file extensions (e.g., images, audio, video, documents). The script runs in a loop and moves any new files to their respective directories every 30 seconds.

## Features

- **Automatic File Organization**: Files are moved based on their type (e.g., images, audio, video, documents).
- **Supports Multiple File Types**:
  - **Images**: `.jpg`, `.jpeg`, `.png`, `.gif`, `.bmp`, `.svg`, `.ico`, `.tiff`, `.webp`, `.avif`
  - **Audio**: `.mp3`, `.wav`, `.aac`, `.flac`
  - **Video**: `.mp4`, `.avi`, `.mov`, `.wmv`
  - **Documents**: `.doc`, `.docx`, `.ppt`, `.pptx`, `.xls`, `.xlsx`, `.csv`, `.pdf`
  - **Archives**: `.zip`
  - **Executables**: `.exe`
- **Continuous Monitoring**: The script runs indefinitely, checking the `Downloads` folder every 30 seconds.
  
## How It Works

The script monitors the `Downloads` folder (`source_dir`) and moves files into specific folders based on their extensions:

- **Images**: Moves to `Images` folder.
- **Audio**: Moves to `Audio` folder.
- **Video**: Moves to `Video` folder.
- **Documents**: Moves to `Word`, `PDF`, `PPT`, `TXT`, `EXCEL` folders.
- **ZIP files**: Moves to the `ZIP` folder.
- **Executables**: Moves `.exe` files to the `Installation` folder.

## Prerequisites

- **Bash Shell**: This script is designed to run in a bash-compatible environment, such as Git Bash or WSL on Windows.
- **File Paths**: Update the directory paths in the script as needed based on your system.

## How to Run

1. Download or clone this repository to your local machine.
2. Update the directory paths in the script according to your system.
3. Run the script using the following command:

   ```bash
   ./file_organizer.sh
