#!/bin/bash

# define helpers
source_dir=~/.osx-bootstrap

# set hostname
if [[ ! -f $source_dir/.osx-bootstrap ]]; then
    echo ''
    echo '##### Setting Computer Name'
    # define hostname
    hostname=$1 && [ ! $1 ] && hostname='macpro'
    # set hostname
    sudo scutil --set ComputerName $hostname
    sudo scutil --set HostName $hostname
    sudo scutil --set LocalHostName $hostname
    sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string $hostname
fi



# setup workspace
if [[ ! -d ~/Library/LaunchAgents ]]; then
    mkdir -p ~/Library/LaunchAgents
fi


# update gem versions
echo ''
echo '##### Running Ruby Gem Updates...'
sudo gem update --system
