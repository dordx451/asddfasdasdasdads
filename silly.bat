REM Ersinware Perm
REM UD since 1960

@echo off
setlocal EnableDelayedExpansion

REM Function to generate a random 5-character alphanumeric string
set RAND_STR=
for /L %%n in (1,1,5) do (
    set /A RAND=!RANDOM! %% 36
    if !RAND! LSS 10 (
        set CHAR=!RAND!
    ) else (
        set /A CHAR=!RAND! + 55
        for %%A in (!CHAR!) do set CHAR=%%A
    )
    set RAND_STR=!RAND_STR!!CHAR!
)

REM Set BIOS Release Date
AMIDEWINx64 /ID "08/03/2021"

REM Set BIOS Vendor
AMIDEWINx64 /IVN "Medion"

REM Set BIOS Version
AMIDEWINx64 /IV "1.0"

REM Set System Family
AMIDEWINx64 /SF "To Be Filled By O.E.M."

REM Set Product Name
AMIDEWINx64 /SP "System Product Name"

REM Set SKU Number
AMIDEWINx64 /SK "SKU"

REM Set System Serial Number
AMIDEWINx64 /SS "To Be Filled By O.E.M."

REM Set System Manufacturer
AMIDEWINx64 /SM "To Be Filled By O.E.M."

REM Set System Version
AMIDEWINx64 /SV "System Version"

REM Auto-generate System UUID
AMIDEWINx64 /SU AUTO

REM Set Baseboard Asset Tag
AMIDEWINx64 /BT "Default string"

REM Set Baseboard Manufacturer
AMIDEWINx64 /BM "Medion"

REM Set Location in Chassis
AMIDEWINx64 /BLC "Default string"

REM Set Baseboard Product Name
AMIDEWINx64 /BP "B460H6-EM"

set BASE_SERIAL="MV710G1!RAND_STR!"
AMIDEWINx64 /BS %BASE_SERIAL%

REM Set Baseboard Version
AMIDEWINx64 /BV "Default string"

REM Set Chassis Asset Tag
AMIDEWINx64 /CA "Default string"

REM Set Chassis Manufacturer
AMIDEWINx64 /CM "Default string"

REM Set Chassis Serial Number
AMIDEWINx64 /CS "Default string"

REM Set Chassis Version
AMIDEWINx64 /CV "Default string"

REM Set Processor Asset Tag
AMIDEWINx64 /PAT "Default string"

REM Set Processor Part Number
AMIDEWINx64 /PPN "Default string"

REM Set Processor Serial Number
AMIDEWINx64 /PSN "Unknown"

echo Spoof completed.
pause

