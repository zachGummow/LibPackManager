# Define Command-Line Parameters
param ([string]$libpack = $null)

# Begin Global Variables

$CurrentVersion = $null
$LatestVersion = $null
$active = $True 

# End Global Variables

# Begin Helper Functions

function Display-Header {
  Write-Output "Managing LibPack at: $libpack"
  Write-Output "Current Version: $CurrentVersion"
  Write-Output "Latest Version: $LatestVersion"
  Write-Output ""
}

function Display-Menu {

}

function Get-Input {
  $userInput = Read-Host "> "
  return $userInput
}

function Verify-Libpack {
  if(!(Test-Path "$libpack\plugins\imageformats\qsvg.dll")) {
    Write-Output "$libpack is not a valid LibPack. Please validate the directory and try again."
    $libpack = $null
  }
}

# End Helper Functions

# Begin Main

Verify-Libpack

while(!$libpack){
  $libpack = Read-Host "Please select a LibPack to manage:`n"
  Verify-Libpack
}

while($active) {

  #Clear-Host
  Display-Header
  Display-Menu
  $input = Get-Input
  if($input -eq 0) {
    $active = $False
  }
}

# End Main


#[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
#$WebResponse = Invoke-WebRequest "sourceforge.net/projects/swig/files/swigwin/"
#$Content = $WebResponse.Content
#$Content -match "swigwin-4.0.0"
