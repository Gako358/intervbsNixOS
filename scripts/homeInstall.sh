#!/usr/bin/env bash

# Check if profile exists
if [ -d ~/.local/state/nix/profiles ]; then
    echo "Profile exists"
else
    echo "Profile does not exist"
    mkdir -p ~/.local/state/nix/profiles
fi

home_name="intervbs@legion"

# Install Home-manager
nix run github:nix-community/home-manager#home-manager -- switch --flake .#$home_name;

echo "Home-manager installed"
