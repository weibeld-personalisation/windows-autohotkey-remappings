; Documentation: https://www.autohotkey.com/docs/v2/
; Tutorial:      https://www.autohotkey.com/docs/v2/Tutorial.htm
; Key names:     https://www.autohotkey.com/docs/v2/lib/Send.htm
; Remapping:     https://www.autohotkey.com/docs/v2/misc/Remap.htm
; Special keys:
;   ^: Ctrl
;   +: Shift
;   !: Alt
;   #: Win
;------------------------------------------------------------------------------;

;------------------------------------------------------------------------------;
; Swap CapsLock and Ctrl keys
;------------------------------------------------------------------------------;
; Rationale:
;   Make Ctrl key easier to press.
; Notes:
;   CapsLock is assigned to the right instead of left Ctrl key. This is because
;   for some reason assigning it to the left Ctrl key also assigns CapsLock to
;   the right Alt key (Alt Gr).
CapsLock::LControl
RControl::CapsLock

;------------------------------------------------------------------------------;
; Swap Win-Tab (Task View) and Alt-Tab (Task Switcher)
;------------------------------------------------------------------------------;
; Rationale:
;   Make triggering the Task Switcher more similar to macOS (Cmd-Tab).
<!Tab::<#Tab
<#Tab::AltTab

;------------------------------------------------------------------------------;
; Map common Ctrl-* combinations to Win-*
;------------------------------------------------------------------------------;
; Rationale:
;   Make these key combinations more similar to the corresponding Cmd-*
;   combinations on macOS.
#c::^c
#v::^v
#x::^x
#a::^a
#f::^f
#u::^u
#d::^d
#i::^i
#b::^b
#k::^k
#s::^s
#r::^r
; Undo is Ctrl-Y on a QWERTZ keyboard, map it to Win-Z (like Cmd-Z on macOS)
#z::^y

;------------------------------------------------------------------------------;
; Map Win-* combinations to Alt-*
;------------------------------------------------------------------------------;
; Rationale:
;   Some native Win-* combinations get overwritten by the above remappings of
;   Ctrl-* to Win-* combinations. Therefore, remap these combinations to Alt-*
;   combinations. Also remap some other useful Win-* combinations to Alt-* for
;   consistency.
; Notes:
;   These mappings use SendEvent to make sure that the keystrokes are sent to
;   the OS rather than the active window. This is necessary because all the
;   remapped functions below are system functions and must be handled by the OS.
!s::SendEvent "#s"  ; Open Windows Search
!r::SendEvent "#r"  ; Open Run dialog box
!d::SendEvent "#d"  ; Toggle show desktop
!e::SendEvent "#e"  ; Open File Explorer 
!l::SendEvent "#l"  ; Lock screen
!i::SendEvent "#i"  ; Open Settings
!m::SendEvent "#m"  ; Minimise all windows

; TODO: make the below feature work.Currently, it provokes undeterministic
; behaviour of the Task Switcher and Task View combinations.
;------------------------------------------------------------------------------;
; Disable Win key when it's pressed on its own
;------------------------------------------------------------------------------;
; Rationale
;   The Win key is often pressed accidentially which unnecessarily opens the
;   start menu.
;~LWin::Send "{Blind}{vkE8}"
