Origins Start Server Script
============

Requirements:
- MySQL
- Strawberry Perl


Installation:
- Download the files, and extract the zip.
- Copy the files into your root game server folder.
- Edit the mybanz.txt, and add your own personal bans.
- Edit the @START_SERVER.bat in Notepad++ preferably.<br>
--- Edit line 15 inside the quotes and put your folder location for your mysql.exe application (eg.  "C:\MYSQL\bin")<br>
--- Edit line 16,17,18,19,20 and 21 and replace <PASSWORD> with your db password (NOTE: Lines 17-21 only seem to spawn 1 vehicle per line)<br>
--- Edit line 27 and replace C:\YOUR\BEC\FOLDER\LOCATION with your BEC folder location (eg c:\Gameservers\BEC)<br>
--- Edit line 34 inside the quotes and put your folder loaction for your game server (eg.  "C:\Gameservers\Origins")<br>
--- Edit line 35 and replace C:\YOUR\GAMESERVER\FOLDER\LOCATION with what you put between the quotes on line 16.<br>
--- In line 35, you can remove --cbl or --dwarden options if you don't want to use these ban lists, but more makes for a safer server.<br>
- Edit line 41 and replace <SERVER IP> with your own server ip.


NOTE:  You can remove any portion you don't want to use.
