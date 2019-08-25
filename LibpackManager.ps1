[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$WebResponse = Invoke-WebRequest "sourceforge.net/projects/swig/files/swigwin/"
$Content = $WebResponse.Content
$Content -match "swig-4.0.0"
