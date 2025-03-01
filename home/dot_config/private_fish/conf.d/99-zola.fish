#!/usr/bin/env fish

if command -v flatpak > /dev/null
    if flatpak list --user | grep -q "org.getzola.zola" > /dev/null
        alias zola="flatpak run org.getzola.zola"
    end
end
