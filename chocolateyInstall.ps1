$ErrorActionPreference = 'Stop';
$packageName = 'salami'
$url = 'https://github.com/petrgazarov/salami/releases/download/0.0.2/salami-0.0.2-windows-x64'

Install-ChocolateyPackage -PackageName "$packageName" `
                          -Url "$url" `
                          -UnzipLocation "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"