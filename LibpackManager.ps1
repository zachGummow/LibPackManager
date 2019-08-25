param ([string]$libpack = $null)

function Display-Header {
  Write-Output "Managing LibPack at: $libpack"
  Write-Output "Current Version: "
  Write-Output "Latest Version: "
  Write-Output ""
}

function Display-Menu {

}

function Get-Input {
  $userInput = Read-Host "> "
  return $userInput
}

while(!$libpack){
  $libpack = Read-Host "Please select a LibPack to manage:`n"
  if(!(Test-Path "$libpack\plugins\imageformats\qsvg.dll")) {
    Write-Output "That is not a valid LibPack. Please validate the directory and try again."
    $libpack = $null
  }
}

$active = $True 

while($active) {

  #Clear-Host
  Display-Header
  Display-Menu
  $input = Get-Input
  if($input -eq 0) {
    $active = $False
  }
}




#[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
#$WebResponse = Invoke-WebRequest "sourceforge.net/projects/swig/files/swigwin/"
#$Content = $WebResponse.Content
#$Content -match "swigwin-4.0.0"
