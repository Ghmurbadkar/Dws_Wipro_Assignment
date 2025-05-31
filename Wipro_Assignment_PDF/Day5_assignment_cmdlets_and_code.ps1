Show-Command
Get-Service
Get-Command
Get-ComputerInfo
Get-Process
Start-Service -Name wuauserv
Start-Service -Name wscsvc -Verbose
Restart-Service -Name wuauserv
Get-EventLog
Get-Service -Name Appinfo
Start-Service -Name Wecsvc -Verbose
Get-Process | Where-Object{$_.Id -gt 10} | Sort-Object Id -Descending
#-----------------------------------------------------------------in wiprofiles folder-----------------------------------


Get-Process | Out-File E:\wiprofiles\processfile

Get-NetIPConfiguration | Out-File E:\wiprofiles\configfile

Get-Service | Out-File E:\wiprofiles\configfile -Append

Get-PSDrive -PSProvider FileSystem | Out-File E:\wiprofiles\datafile.txt

Get-Command | Out-File E:\wiprofiles\datafile.txt -Append

#-----------------------------------------------------------------in demo folder-----------------------------------
Get-Command |Out-File E:\demo\commandsfile.txt

Get-PSDrive -PSProvider FileSystem | Out-File E:\demo\datafile.txt

Get-NetIPConfiguration | Out-File E:\demo\datafile.txt -Append

Get-ChildItem | Out-File E:\demo\datafile.txt -Append

Get-Service | Out-File E:\demo\opencommands.txt -Append

#_---------------------------------------------------formatting-----------------------
#Format-Table
Get-Process | Format-Table -Property Name , CPU 

Get-Process | Format-Table -Property Name , CPU , StartTime

#Format-List
Get-Service | Format-List -Property Name , Status , DisplayName

#format-Wide
Get-ChildItem | Format-Wide -Column 3

#------------------------------------------------get content---------
$con=Get-Content -Path "E:\demo\commandsfile.txt"
Write-Host "$con"

#-----------------------------------------------descending-----------
Get-Process | Where-Object {$_.WS -gt 1}| Sort-Object WS -Descending |Select-Object NAME ,WS

 
#------------------------------------------------------operations---------------------------------

[int]$num1= Read-Host "number 1"
[int]$num2= Read-Host "number 2"
$sum=$num1+$num2
Write-Host "sum is $sum"

#-------------------Array--------------------
$arr=@(1,"gh",3,4,5)
$n=$arr[1]

Write-Host " array second element $n"

Write-Host "entire array $arr"

#---------------------------for--------------------
for($i=-5;$i -le 0  ; $i++)
{
Write-Host "$i"
}


#-------------------------------switch--------------------
$day="sun"
switch($day)
{
"mon" {Write-Host "start week"}
"sun" {Write-Host "holi day"}
"fri" {Write-Host "end week "}
default {Write-Host "nothing .. .."}
}

#-----------------------------------function---------------
function greet{
param($name )
Write-Host "Hello, $name"
}

function greet2{
param($name , $age )
Write-Host "Hello, $name your age is $age "
}


greet -name "gh"
greet2 -name "noob" -age "2"

#--------------------timepass(take i/p and print o/p)-------------
$tparr=@()

for($i=0;$i -le 3; $i++){
$a = Read-host "enter anything "
$tparr+=$a
}


Write-Host "---------------"
foreach($ele in $tparr)
{
Write-Host "$ele"
}


Write-Host "---------------"
Write-host "first element is $($tparr[0])"

#-----------------------------------------------------------------
$valid = $true

Write-host "$valid"


















