#!/bin/bash
# made on an Arch System
# I think it should work on any linux system with steam though
# I am pretty sure the path for steam is the same for every distro
# either way fix is simple enough
# just change $lethal_company_path to where it is located on your system

lethal_company_path="$HOME/.local/share/Steam/steamapps/common/Lethal Company"
beporg="$lethal_company_path/BepInEx"
bepbak="$lethal_company_path/BepInEx.bak"

# if statement that checks for BepInEx.bak file
if [ -d "$bepbak" ]; then
    # rename to BepInEx if found
    mv "$bepbak" "$beporg"
else # rename BepInEx to BepInEx.bak
    mv "$beporg" "$bepbak"
fi
