; Disable Win key when it's pressed on its own
;------------------------------------------------------------------------------;
; Rationale
;   The Win key is often pressed accidentially which unnecessarily opens the
;   start menu.
; TODO: the below solution disturbs the Task Switcher behaviour
;~LWin::Send "{Blind}{vkE8}"

; Swap CapsLock and Ctrl keys
;------------------------------------------------------------------------------;
; Rationale
;   Makes Ctrl key easier to press.
; Notes
;   CapsLock is assigned to the right instead of left Ctrl key. This is because
;   for some reason assigning it to the left Ctrl key also assigns CapsLock to
;   the right Alt key (Alt Gr).
CapsLock::LControl
RControl::CapsLock

; Swap Win-Tab (Task View) and Alt-Tab (Task Switcher)
;------------------------------------------------------------------------------;
; Rationale
;   Makes triggering the Task Switcher more similar to macOS (Cmd-Tab).
<!Tab::<#Tab
<#Tab::AltTab

; Map common Ctrl-* combinations to Win-*
;------------------------------------------------------------------------------;
; Rationale
;   Makes these key combinations more similar to the correspondoing Cmd-*
;   combinations on macOS.
#c::^c
#v::^v
#x::^x
#a::^a
#f::^f
#z::^z
#u::^u
#d::^d
#i::^i
#b::^b
#k::^k
#s::^s
#r::^r

; Map Win-* combinations to Alt-*
;------------------------------------------------------------------------------;
; Rationale
;   Some native Win-* combinations get overwritten by the above remappings of
;   Ctrl-* to Win-* combinations. Therefore, remap these combinations to Alt-*
;   combinations. Also remap some other useful Win-* combinations to Alt-* for
;   consistency.
; Notes
;   These mappings use SendEvent in order to send the keystrokes to the OS
;   rather than the active window. This is necessary because all the remapped
;   functions below are system functions and must be handled by the OS.
!s::SendEvent "#s"  ; Open Windows Search
!r::SendEvent "#r"  ; Open Run dialog box
!d::SendEvent "#d"  ; Show desktop
!e::SendEvent "#e"  ; Open File Explorer 
!l::SendEvent "#l"  ; Lock screen
