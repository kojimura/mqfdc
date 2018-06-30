<#
Simplify all MQ FDC files in spesified directory
usage: .\mqfdc.ps1 /var/mqm/errors/
#>
Param( $p1 )

$f = Get-ChildItem $p1 -Filter *.FDC

foreach ($i in $f){
 echo $i.Name
 cat $i.FullName | %{ 
  if($_.Contains("Probe Id") -Or 
  $_.Contains("Date/Time") -Or 
  ($_.Split(' ')[1] -eq "Component") -Or 
  $_.Contains("Process Name") -Or 
  $_.Contains("Major Errorcode")) 
  { $_; } }
}