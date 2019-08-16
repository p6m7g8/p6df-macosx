p6df::modules::macosx::version() { echo "0.0.1" }
p6df::modules::macosx::deps()    {
	ModuleDeps=()
}

p6df::modules::macosx::external::brew() {

   brew tap caskroom/cask
   brew tap caskroom/versions

   brew cask install xquartz
   brew install freerdp

   brew cask install alfred
#   brew cask install amazon-drive
   brew cask install amazon-workspaces
   brew cask install amazon-chime
   brew cask install bartender
   brew cask install dash
   brew cask install dropbox
   brew cask install evernote
   brew cask install firefox
   brew cask install gitx
   brew cask install google-chrome
   # Although google-backup-and-sync may be installed alongside google-drive-file-stream, you should not use the same account with both.
   # https://support.google.com/a/answer/7496409#allowboth
   # brew cask install google-drive-file-stream
   brew cask install google-backup-and-sync

   brew cask install google-hangouts
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

  p6df::modules::macosx::aliases::init
}

p6df::modules::macosx::aliases::init() {

  alias mssh='p6df::modules::macosx::ssh'
}

p6df::modules::macosx::ssh() {

  p6_GLOBAL_macosx_ssh
}

p6_GLOBAL_macosx_ssh() {

  p6_macosx_ssh_do ${1}.p6m7g8.net
}
