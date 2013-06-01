@echo off
echo Stopping game server...
taskkill /F /IM arma2oaserver.exe
ping 127.0.0.1 -n 5 >NUL
echo.
echo.
echo.
echo Stopping BEC...
taskkill /F /IM Bec.exe
ping 127.0.0.1 -n 5 >NUL
echo.
echo.
echo.
echo Cleanup and respawn vehicles in the Origins DB hive...
cd /D "C:\YOUR\MYSQL\FOLDER\LOCATION"
mysql.exe --user=dayz --password=<PASSWORD> --execute="call pCleanup()" dayz_origins
mysql.exe --user=dayz --password=<PASSWORD> --execute="call pMain()" dayz_origins
mysql.exe --user=dayz --password=<PASSWORD> --execute="call pMain()" dayz_origins
mysql.exe --user=dayz --password=<PASSWORD> --execute="call pMain()" dayz_origins
mysql.exe --user=dayz --password=<PASSWORD> --execute="call pMain()" dayz_origins
mysql.exe --user=dayz --password=<PASSWORD> --execute="call pMain()" dayz_origins
ping 127.0.0.1 -n 5 >NUL
echo.
echo.
echo.
echo Starting BEC...
cd /D "C:\YOUR\BEC\FOLDER\LOCATION"
start Bec.exe -f Config_Origins.cfg
ping 127.0.0.1 -n 5 >NUL
echo.
echo.
echo.
echo Updating Origins banlist...
cd /D "C:\YOUR\GAMESERVER\FOLDER\LOCATION"
perl update_bans.pl --save "C:\YOUR\GAMESERVER\FOLDER\LOCATION\dayz_1.origins.tavi\BattlEye\bans.txt" --banz --cbl --dwarden --mybans "C:\YOUR\GAMESERVER\FOLDER\LOCATION\mybanz.txt" --verbose
ping 127.0.0.1 -n 5 >NUL
echo.
echo.
echo.
echo Starting server...
start .\Expansion\beta\arma2oaserver.exe -ip=<SERVER IP> -beta=Expansion\beta;Expansion\beta\Expansion -nosplash -cpuCount=6 -name=Origins -profiles=dayz_1.origins.tavi -cfg=dayz_1.origins.tavi\basic.cfg -config=dayz_1.origins.tavi\config.cfg -mod=expansion;expansion\beta;expansion\beta\expansion;@DayzOrigins;@dayz_1.origins.tavi
ping 127.0.0.1 -n 5 >NUL
echo.
echo.
echo.
echo Leaving the launcher...
ping 127.0.0.1 -n 5 >NUL
echo.
echo.
echo.
exit