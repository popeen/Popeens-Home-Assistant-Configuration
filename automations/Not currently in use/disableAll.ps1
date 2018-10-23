Get-ChildItem "."| ForEach-Object{
    if(
        $_.FullName -notlike "*.disabled" -AND 
        $_.FullName -notlike "*.ps1" -AND
        $_ -isnot [System.IO.DirectoryInfo]
    ){
        Rename-Item $_.FullName "$($_.FullName).disabled"
    }
}