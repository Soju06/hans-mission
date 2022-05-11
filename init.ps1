$bin_path = $PSScriptRoot + "/source/bin";
$jdk_path = $bin_path + "/jdk-17.zip"

if (-Not [System.IO.File]::Exists($jdk_path)) {
    Invoke-WebRequest -OutFile ($jdk_path) -Uri "https://download.oracle.com/java/17/archive/jdk-17.0.3.1_windows-x64_bin.zip"
}
