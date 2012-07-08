#SingleInstance Force
#NoTrayIcon
#NoEnv
SetTitleMatchMode, 2
StringCaseSense, Off

target = %1%
window = %2%

if (window = "")
{
    IfInString, target, % "firefox.exe"
    {
        window := "ahk_class MozillaWindowClass"
    }
    IfInString, target, % "chrome.exe"
    {
        window := "ahk_class Chrome_WidgetWin_1"
    }
    IfInString, target, % "opera.exe"
    {
        window := "ahk_class OperaWindowClass"
    }
    IfInString, target, % "iexplore.exe"
    {
        window := "ahk_class IEFrame"
    }
}

Run, %target%

WinWaitActive, %window%

WinGetPos, X, Y, Width, Height, A
if (Width = A_ScreenWidth && Height = A_ScreenHeight)
{
    ; window is already fullscreen
}
else
{
    SendInput, {F11}
}

ExitApp
