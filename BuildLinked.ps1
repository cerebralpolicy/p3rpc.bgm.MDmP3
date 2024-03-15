# Set Working Directory
Split-Path $MyInvocation.MyCommand.Path | Push-Location
[Environment]::CurrentDirectory = $PWD

Remove-Item "$env:RELOADEDIIMODS/P3R.bgm.MakotoMP3.battle-themes/*" -Force -Recurse
dotnet publish "./P3R.bgm.MakotoMP3.battlethemes.Template.csproj" -c Release -o "$env:RELOADEDIIMODS/P3R.bgm.MakotoMP3.battlethemes" /p:OutputPath="./bin/Release" /p:ReloadedILLink="true"

# Restore Working Directory
Pop-Location