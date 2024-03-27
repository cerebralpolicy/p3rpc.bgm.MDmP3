# Set Working Directory
Split-Path $MyInvocation.MyCommand.Path | Push-Location
[Environment]::CurrentDirectory = $PWD

Remove-Item "$env:RELOADEDIIMODS/p3rpc.bgm.MDmp3/*" -Force -Recurse
dotnet publish "./p3rpc.bgm.MDmp3.csproj" -c Release -o "$env:RELOADEDIIMODS/p3rpc.bgm.MDmp3" /p:OutputPath="./bin/Release" /p:ReloadedILLink="true"

# Restore Working Directory
Pop-Location