p6df::modules::macosx::version() { echo "0.0.1" }
p6df::modules::macosx::deps()    { 
	ModuleDeps=()
}

p6df::modules::macosx::external::brew() {

  brew install freerdp

  brew tap caskroom/cask
  brew tap caskroom/versions

  brew cask install xquartz 

  brew cask install alfred
  brew cask install amazon-drive
  brew cask install amazon-workspaces
  brew cask install bartender
  brew cask install dash
  brew cask install dropbox
  brew cask install evernote
  brew cask install firefox
  brew cask install gitx
  brew cask install google-chrome
  brew cask install google-backup-and-sync
  brew cask install google-hangouts
  brew cask install hipchat
  brew cask install iterm2
  brew cask install onedrive
  brew cask install openoffice
  brew cask install omnigraffle
  brew cask install slack
  brew cask install skitch
  brew cask install skype
  brew cask install squidman
  brew cask install vagrant
  brew cask install virtualbox
  brew cask install vlc
  brew cask install vmware-fusion
  brew cask install wireshark
  brew cask install zoomus
}

p6df::modules::macosx::init() {

}
