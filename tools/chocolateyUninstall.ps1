$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$bindir   = Join-Path -Path $toolsDir -ChildPath "salami\bin"

$unPath = Join-Path $toolsDir 'Uninstall-ChocolateyPath.psm1'
Import-Module $unPath

$salamiDir = Join-Path -Path $toolsDir -ChildPath "salami"

if (Test-Path $salamiDir) {
    Remove-Item $salamiDir -Recurse -Force
}

Update-SessionEnvironment