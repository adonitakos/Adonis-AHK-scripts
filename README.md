# Adonis-AHK-scripts
## About
These are my personal AutoHotkey macro scripts that I use on a daily basis to speed up my computing a bit. Although these are for personal use, I figured I make this repository public.

FULL DISCLOSURE: A decent chunk of these scripts were sections borrowed from Taran VH.  
Here is the exact GitHub directory where you can find those scripts: https://github.com/TaranVH/2nd-keyboard/blob/master/Almost_All_Windows_Functions.ahk. <br>
Here is a video on his YouTube channel overviewing those scripts (at least their prototypes): https://youtu.be/OqyQABySV8k <br>
They are essentially basic macros for Chrome and Firefox, but using Windows Spy, you should be able to change it to work with other browsers like Edge, Opera, OperaGX, Vivaldi, etc. I use these in conjuction with the macro keys on my Corsair K95 Platinum keyboard and the companion iCUE software.

The rest are very basic, but pretty functional (in my opinion) scripts that I myself wrote.

Feel free to check them out if you want.

## How To Run
1. Download and install AutoHotkey --> https://www.autohotkey.com/ (I recommend *Downlaod Current Version*)
    - You can also install it via the official Windows Package Manager, ***winget***. It's present in Windows 11 out of the box and for Windows 10 you might have it with the most  up to date version or might have refer to this page: https://github.com/microsoft/winget-cli. 
    Open up a terminal (Run as Administrator to skip the Yes or No prompt) and type `winget source update` to make sure the package source is up to date, then type `winget install ahk`.
    However, winget isn't perfect right now, so the official website might be a better option.

2. Download the AHK script from this repository in one of two ways
   - Simplest way for most of you is to click the green **Code** button, and then **Download ZIP**
   - Assuming you have Git installed on your PC, open up a terminal (Command Prompt or Powershell) and type `git clone https://github.com/adonitakos/Adonis-AHK-scripts.git`.

3. Move the AHK script (you can delete the README file and ZIP/repo folder) to a directory of your choosing. Double click it to run and you will see an **H** icon appear on the      left of your taskbar. 

4. Create a Shortcut of the .AHK file and place it in your Startup folder so it will run whenever you boot your system. This is the directory to look for: C:\Users\{USER}\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup . You can also just press Windows key + R, then type `shell:startup` and it will bring you right to that directory (that's a lot simpler).

5. Open up a text editor of your choosing (Notepad, Notepad++, Visual Studio Code, Atom, Sublime, etc.) to view the script and make any desired modifications.
