
######################################################################
#<
#
# Function: p6df::modules::macosx::deps()
#
#>
######################################################################
p6df::modules::macosx::deps()    {
	ModuleDeps=(
    p6m7g8/p6macosx
  )
}

######################################################################
#<
#
# Function: p6df::modules::macosx::external::brew()
#
#>
######################################################################
p6df::modules::macosx::external::brew() {

  brew tap caskroom/cask
  brew tap caskroom/versions

  ## Remote Desktop Compat
  brew cask install xquartz
  brew install freerdp

  ## Amazon
  brew cask install amazon-workspaces
  brew cask install amazon-chime
  brew cask install amazon-drive

  ## Google
  brew cask install google-chrome
  brew cask install google-hangouts
  # https://support.google.com/a/answer/7496409#allowboth: brew cask install google-drive-file-stream
  brew cask install google-backup-and-sync
  
  ## Microsoft
  brew cask install microsoft-edge
  brew cask install microsoft-excel
  brew cask install microsoft-lync
  brew cask install microsoft-office
  brew cask install onedrive
  brew cask install evernote
  brew cask install skype
  brew cask install skype-for-business

  ## Mac
  brew cask install alfred
  brew cask install dash
  brew cask install iterm2
  brew cask install skitch

  ## Other 
  brew cask install bartender
  brew cask install dropbox  
  brew cask install firefox
  brew cask install gitx
  brew cask install gitter

  # brew cask install openoffice
  # brew cask install omnigraffle
  brew cask install slack
  brew cask install squidman
  brew cask install vagrant
  brew cask install virtualbox
  brew cask install vlc
  brew cask install vmware-fusion
  brew cask install wireshark
  brew cask install zoomus
}

######################################################################
#<
#
# Function: p6df::modules::macosx::init()
#
#>
######################################################################
p6df::modules::macosx::init() {

  p6df::modules::macosx::aliases::init
}

######################################################################
#<
#
# Function: p6df::modules::macosx::aliases::init()
#
#>
######################################################################
p6df::modules::macosx::aliases::init() {

  alias mssh='p6df::modules::macosx::ssh'
}

# p6df::modules::macosx::ssh
#  p6_GLOBAL_macosx_ssh
#    p6_macosx_ssh_do
#      p6_aws_ssh_svc_do
#        p6_remote_ssh_do
#          ssh
#      p6_remote_ssh_do
#        ssh
#
# p6_GLOBAL_aws_ssh_svc_do
#  p6_aws_ssh_svc_do
#    p6_remote_ssh_do
#      ssh
######################################################################
#<
#
# Function: p6df::modules::macosx::ssh()
#
#>
######################################################################
p6df::modules::macosx::ssh() {

    p6_GLOBAL_macosx_ssh "$@"
}

######################################################################
#<
#
# Function: p6_GLOBAL_macosx_ssh(host)
#
#  Args:
#	host - 
#
#>
######################################################################
p6_GLOBAL_macosx_ssh() {
    local host="$1"

    p6_macosx_ssh_do $host.p6m7g8.net
}