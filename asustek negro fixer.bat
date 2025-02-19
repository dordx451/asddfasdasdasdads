@echo off
setlocal EnableDelayedExpansion

set "RAND_STR="
for /L %%n in (1,1,5) do (
    set /A RAND=!RANDOM! %% 36
    if !RAND! LSS 10 (
        set "CHAR=!RAND!"
    ) else (
        set /A CHAR=!RAND! + 55
        for %%A in (!CHAR!) do set "CHAR=%%A"
    )
    set "RAND_STR=!RAND_STR!!CHAR!"
)

AMIDEWINx64 /ID "09/21/2023"
AMIDEWINx64 /IVN "ASUSTeK COMPUTER INC."
AMIDEWINx64 /IV "2001"
AMIDEWINx64 /SF "ASUSTeK COMPUTER INC."
AMIDEWINx64 /SP "System Product Name"
AMIDEWINx64 /SK "SKU"
AMIDEWINx64 /SS "To Be Filled By O.E.M."
AMIDEWINx64 /SM "ASUSTeK COMPUTER INC."
AMIDEWINx64 /SV "System Version"
AMIDEWINx64 /SU AUTO
AMIDEWINx64 /BT "Default string"
AMIDEWINx64 /BM "ASUSTeK COMPUTER INC."
AMIDEWINx64 /BLC "Default string"
AMIDEWINx64 /BP "PRIME B660M-A D4"
set "BASE_SERIAL=MV710G1!RAND_STR!"
AMIDEWINx64 /BS %BASE_SERIAL%
AMIDEWINx64 /BV "Default string"
AMIDEWINx64 /CA "Default string"
AMIDEWINx64 /CM "Default string"
AMIDEWINx64 /CS "Default string"
AMIDEWINx64 /CV "Default string"
AMIDEWINx64 /PAT "Default string"
AMIDEWINx64 /PPN "Default string"
AMIDEWINx64 /PSN "Unknown"

echo DMI update completed.
pause
