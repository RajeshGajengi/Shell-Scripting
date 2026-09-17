#!/bin/bash

# ==============================================================================
# Script Name   : install_git.sh
# Description   : This script checks the operating system and installs Git.
#                 It supports Linux and macOS systems.
#
# Author        : Rajesh
# Version       : v0.0.1
#
# Supported OS  :
#   - Linux
#   - macOS (Darwin)
#
# Usage         :
#   ./install_git.sh
#
# Arguments     :
#   None
#
# Requirements  :
#   - Bash shell
#   - apt package manager for Linux
#   - Homebrew (brew) for macOS
#   - Appropriate privileges to install packages
#
# What this script does:
#   1. Identifies the operating system using uname.
#   2. If the system is Linux, installs Git using apt.
#   3. If the system is macOS, installs Git using Homebrew.
#   4. If the operating system is unsupported, it skips installation.
#
# ==============================================================================

echo "Script to install git"
echo "Installation Started"

if [ "$(uname)" == "Linux" ];
then
    echo "this is linux box, installing git"
    apt install git
elif [ "$(uname)" == "Darwin" ]
then
    echo "this is not linux box"
    echo "this is MacOS"
    brew install git
else 
    echo "not installing"
fi
