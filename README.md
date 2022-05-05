# Compressor

A Powershell script written to compress video files. This is done by using FFmpeg.

 It is currently hard-coded to output a video file around a size of 8MB.

## Getting Started

### Prerequisites

- Powershell 7
    
    It is recommended to use PowerShell 7.0.X

    Powershell 7.0.X can be downloaded at https://github.com/PowerShell/powershell/releases

    NOTE:
    - The script was formally tested using **PowerShell 7.0.3**.
    - The script will **definitely** not work with PowerShell 5 and older. Powershell 6 may work but has not been tested.

- FFmpeg  

    **NOTE: Since release 0.2.0, the GitHub release will now contain two separate .zip releases, where one .zip file will contain FFmpeg executables from the GPL variant, and the other .zip file only contains the program.**

    FFmpeg builds for Windows can be downloaded at https://github.com/BtbN/FFmpeg-Builds/releases

    FFmpeg will need to be set up in PATH if you are using `Compress_without_FFmpeg_X.X.X`. Instructions can be found here: https://video.stackexchange.com/questions/20495/how-do-i-set-up-and-use-ffmpeg-in-windows


## Execution

Enable execution of PowerShell scripts (Replace `CurrentUser` with your username):

```powershell
PS> Set-ExecutionPolicy Unrestricted -Scope CurrentUser
```

##Usage
 - Set path, place videos, run the script vc_ps.ps1 using PowerShell 7
 - Find compressed video with "old videoname + _compressed"

## Licenses

This project uses the following project:

- [FFmpeg, licensed under GPLv2.0](https://github.com/FFmpeg/FFmpeg)

## Known Issues

### Maximum Path Length Limitation

On Windows 10, Version 1607 and older, there is a MAX_PATH limitation of 260 characters.

The script currently does not take this into account. If the MAX_PATH limit is active, it is highly likely that the script will fail when dealing with paths that approach the character limit.

### Output file's file size is greater than the specified threshold

For most videos, the output compressed file will be below the specified filesize threhold. However, there are some cases where this is not the case. I am still currently investigating a better formula to accurately calculate the required average bitrate.
