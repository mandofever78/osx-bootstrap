brew tap caskroom/versions
    brew install caskroom/cask/brew-cask

    echo ""
    echo "Installing brew-cask apps"
    apps=(
  authy-bluetooth
  adapter
  anki
  airdisplay
  audacity
  alfred
  dropbox
  beamer
  brackets
  brow
  cloudup
  capo
  caustic
  cheasheet
  google-chrome
  qlcolorcode
  slack
  transmit
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

    )

    brew cask install --appdir="/Applications" ${apps[@]}
    brew cask cleanup
