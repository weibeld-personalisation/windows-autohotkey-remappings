# AutHotkey Windows Key Remappings

Custom key remappings for Windows created with [AutoHotkey v2.0](https://www.autohotkey.com/).

## Goal

The goal of these remappings to make a Windows keyboard more similar to a macOS keyboard.

## Remappings

| Remapping                        | Description                                                                                               | Example                                           |
|----------------------------------|-----------------------------------------------------------------------------------------------------------|---------------------------------------------------|
| Swap `Caps Lock` and `Ctrl`      | Not macOS-specific, but a generally useful remapping.                                                     |
| Swap `Win-Tab` and `Alt-Tab`     | Use `Win-Tab` instead of `Alt-Tab` for _Task Switcher_ which makes it more similar to `Cmd-Tab` on macOS. |
| Map specific `Ctrl-*` to `Win-*` | Makes these key combinations equivalent to `Cmd-*` on macOS.                                              | Use `Win-C` instead of `Ctrl-C` for copying       |
| Map specific `Win-*` to `Alt-*`  | Resort to `Alt-*` for the `Win-*` combinations overwritten by above remappings.                           | Use `Alt-S` instead of `Win-S` for Windows Search |

For more details, directly consult [`autohotkey.ahk`](autohotkey.ahk).

## Installation

1. Install AutoHotkey v2.0 from the [official website](https://www.autohotkey.com/)
1. Open the Run dialog box with _Win-R_ and type `shell:startup`
   - This opens the Windows startup folder whose content is automatically executed at boot time
1. Copy [`autohotkey.ahk`](autohotkey.ahk) into this startup folder
1. Sign out of Windows and sign in again
1. Verify that an AutoHotkey icon appears in the notification area of the taskbar:
   ![](taskbar-icon.png)

The AutoHotkey remappings are now active and should be automatically applied at every boot of the machine.
