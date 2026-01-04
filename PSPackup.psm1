
$Public = @(Get-ChildItem -Type File -Path "$PSScriptRoot\Public\*.ps1")
$Private = @(Get-ChildItem -Type File -Path "$PSScriptRoot\Private\*.ps1")

foreach ($file in @($Public + $Private)) {
  . $file.Fullname
}

