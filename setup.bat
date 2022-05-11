set "desktop_path=C:\Users\%username%\Desktop"
set "source_path=./source"
set "bin_path=%desktop_path%/bin"

xcopy "%source_path%" "%desktop_path%" /s /y

"%bin_path%/unzip.exe" "%bin_path%/jdk-17.zip" -d "%bin_path%"

del "%bin_path%\jdk-17.zip"
ren "%bin_path%\jdk-17.0.3.1" "jdk-17"

mklink "%desktop_path%/HxD" "%bin_path%/hxd/HxD64.exe"