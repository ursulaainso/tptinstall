$name = Read-Host -prompt 'Input your git name'
$email = Read-host -prompt 'Input your git email'
winget install Microsoft.VisualStudioCode
winget install OpenJS.NodeJS
winget install Git.Git
if (Test-Path  -Path "$($env:USERPROFILE) \AppData\Local\Programs\Git"  -PathType Container) {
    $env:path += ";$env:userprofile\AppData\Local\Programs\Git\mingw64\bin\"
}
if (Test-Path  -Path C:\'Program Files'\Git -PathType Container) {
    $env:path += ";C:\Program Files\Git\mingw64\bin"
}

git config --global user.name $name
git config --global user.email $email
git config --global core.editor "code --wait"