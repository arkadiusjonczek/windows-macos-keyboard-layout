#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

; Switch between apps
LCtrl & Tab:: AltTab

; Switch between tabs
!Tab:: Send ^{Tab}
!+Tab:: Send ^+{Tab}

; Search
^Space:: Send ^{Esc}
Return

!<#Space::
    Send <#{.}
Return

;<^Backspace::
;    Send {Delete}
;Return

!<#Left::
    Send <#{Left}
Return

!<#Right::
    Send <#{Right}
Return

!<#Up::
    Send <#{Up}
Return

!<#Down::
    Send <#{Down}
Return

^Left::
    Send {Home}
Return

^Right::
    Send {End}	
Return

^+Left::
    Send +{Home}
Return

^+Right::
    Send +{End}
Return

^Up::
    Send ^{Home}
Return

^Down::
    Send ^{End}
Return

^+Up::
    Send ^+{Home}
Return

^+Down::
    Send ^+{End}
Return

<#Left::
    Send !{Left}
Return

<#Right::
    Send !{Right}
Return

<#+Left::
    Send !+{Left}
Return

<#+Right::
    Send !+{Right}
Return

^F12::
    Send {Media_Play_Pause}
Return

<#s::
    Send ß
Return

<#+2::
    Send €
Return

$a::
If (umlaut_modus = 1) {
  Send {U+00E4}
} Else {
  Send a
}
Return

$+a::
If (umlaut_modus = 1) {
  Send {U+00C4}
} Else {
  Send A
}
Return

$o::
If (umlaut_modus = 1) {
  Send {U+00F6}
} Else {
  Send o
}
Return

$+o::
If (umlaut_modus = 1) {
  Send {U+00D6}
} Else {
  Send O
}
Return

$u::
If (umlaut_modus = 1) {
  Send {U+00FC}
} Else {
  Send u
}
Return

$+u::
If (umlaut_modus = 1) {
  Send {U+00DC}
} Else {
  Send U
}
Return

<#u::
if (umlaut_modus = 1) {
    SetTimer, UmlautTimer, Delete
}
umlaut_modus := 1
SetTimer, UmlautTimer, -400
return

UmlautTimer:
umlaut_modus := 0
return
