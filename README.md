# Kite for Notepad++

User Defined Language (UDL) for [Kite](https://github.com/kite-language/kite) (`.ki`): keywords, types, built-in
functions, numbers, operators, `//` comments and `"strings"`. Notepad++ UDLs have no f-string interpolation or nested
scopes, so `{expr}` inside an f-string is coloured as part of the string.

## Install
`powershell -ExecutionPolicy Bypass -File install.ps1`, or copy `Kite.xml` to `%APPDATA%\Notepad++\userDefineLangs\`
and restart. Optional `autoCompletion.xml` → `<Notepad++>\autoCompletion\Kite.xml` (completion and call tips for the
built-ins; the file name must match the language name).

## Check
`scripts/check.sh` verifies that the XML files are well-formed.

## Official gallery
UDLs are submitted by pull request to
[notepad-plus-plus/userDefinedLanguages](https://github.com/notepad-plus-plus/userDefinedLanguages) (see its README).

## Versions
Versioned on its own, see `CHANGELOG.md`.
