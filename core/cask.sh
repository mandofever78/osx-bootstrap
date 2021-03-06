
#!/bin/bash

# define helpers
source_dir=~/.osx-bootstrap

# Install Caskroom
brew tap caskroom/versions
    brew install caskroom/cask/brew-cask

    echo ""
    echo "Installing brew-cask apps"
    apps=(
    authy-bluetooth
    adapter
    anki
    audacity
    alfred
    dropbox
    beamer
    brackets
    brow
    burn
    cloudup
    capo
    caustic
    cheatsheet
    google-chrome
    qlcolorcode
    slack
    transmit
    handbrake
    picasa
    the-unarchiver
    torbrowser
    appcleaner
    evernote-beta
    firefox
    firefoxdeveloperedition
    qlmarkdown
    seil
    lastpass-universal
    spotify
    vagrant
    flash
    fairmount
    flow 
    geekbench
    iterm2
    shiori
    sublime-text3
    virtualbox
    atom
    flux
    qlstephen
    vlc
    quicklook-json
    skype
    transmission
    slack
    webstorm
    )

    brew cask install --appdir="/Applications" ${apps[@]}
    brew cask cleanup
    
    #Install fonts
    brew tap caskroom/fonts
    fonts=(
      font-comic-neue
      font-droid-sans
      font-droid-sans-mono
      font-fira-sans
      font-meslo-lg
      font-open-sans
      font-open-sans-condensed
      font-roboto
      font-source-code-pro
    )

    brew cask install ${fonts[@]}
