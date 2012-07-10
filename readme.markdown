#FEleven

##About

**FEleven** is a command line tool written in [AutoHotkey_L](http://l.autohotkey.net/).

If an application does not have it's own `fullscreen` command line argument and if it supports pressing <kbd>F11</kbd> to enter fullscreen mode, then **FEleven** can open the target application and simulate <kbd>F11</kbd> upon launch.

The result is being able to launch that application in fullscreen when it wasn't possible before.

##Compatibility

- Windows XP

- Windows Vista

- Windows 7

##Instructions

1. **Download** the latest version of [`feleven.exe`](https://github.com/iglvzx/FEleven/downloads).

2. Launch the "F11-able" target application by calling `feleven` with a `target` and `window-title` parameter.

        feleven "path\to\target.exe" "Window Title"

---

**Notes:**

The `window-title` string parameter can be any substring in the application's window title.

All additional parameters relating to the target application should be included in **FEleven**'s first parameter:

    feleven "path\to\target.exe parameter1 ..." "Window Title"

##Tips

- Place `feleven` in a [%Path%](https://en.wikipedia.org/wiki/PATH_%28variable%29) directory!

- Use `feleven` in the **target** field of a shortcut (`.lnk`) file!

##Built-in Support

Currently, **FEleven** has built-in support for the following popular browsers, allowing you to omit the 2nd,  `window-title` parameter:

- Mozilla Firefox

        feleven "path\to\firefox.exe ..."

- Google Chrome

        feleven "path\to\chrome.exe ..."

- Opera

        feleven "path\to\opera.exe ..."

- Internet Explorer

        feleven "path\to\iexplore.exe ..."

##Copyright

&copy;2012 Izzy Galvez. All rights reserved.

##License

[GNU Generic Public License (v3)](https://www.gnu.org/licenses/gpl-3.0.txt)
