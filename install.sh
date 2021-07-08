#!/usr/bin/env bash

home_dir=$(eval echo ~$(whoami))

themes_dir="$home_dir/.local/share/gedit/styles/"

if [ -d "$themes_dir" ]
then
    echo "Found local Gedit themes directory..."
    cp ./ayu-dark.xml $themes_dir
    echo "Copied the theme file!"
else
    echo "Did not find local Gedit themes directory..."
    echo "Making one..."
    mkdir -p $themes_dir
    cp ./ayu-dark.xml $themes_dir
    echo "Copied the theme file!"
fi