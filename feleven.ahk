#SingleInstance Force
#NoTrayIcon
#NoEnv
SetTitleMatchMode, 2

param1 = %1%
param2 = %2%
param3 = %3%

if (param1 = "--firefox")
{
    IniRead, window, firefox.ini, feleven, window
    IniRead, target, firefox.ini, feleven, target
    target := target . " " . param2
    IniRead, startin, firefox.ini, feleven, startin
}
else if (param1 = "--gchrome")
{
    IniRead, window, gchrome.ini, feleven, window
    IniRead, target, gchrome.ini, feleven, target
    target := target . " " . param2
    IniRead, startin, gchrome.ini, feleven, startin
}
else ; manual configuration
{
    window := param1
    target := param2
    startin := param3
}

Run, %target%, %startin%

WinWaitActive, %window%

WinGetPos, X, Y, Width, Height, A
if (Width = A_ScreenWidth && Height = A_ScreenHeight)
{
    ; window is alread fullscreen
}
else
{
    SendInput, {F11}
}

ExitApp
