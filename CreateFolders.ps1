$files = Get-ChildItem -File
foreach ($file in $files) {
    $folderName = $file.BaseName
    $folderPath = Join-Path -Path $file.DirectoryName -ChildPath $folderName
    New-Item -Path $folderPath -ItemType Directory -Force
    Move-Item -Path $file.FullName -Destination $folderPath
}
