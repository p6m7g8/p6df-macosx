
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

  brew tap homebrew/cask
  brew tap homebrew/cask-versions

  ## Remote Desktop Compat
  brew install --cask xquartz
  brew install freerdp

  ## Amazon
  brew install --cask amazon-workspaces
  brew install --cask amazon-chime
#  brew install --cask amazon-drive

  ## Google
  brew install --cask google-chrome
  brew install --cask google-hangouts
  # https://support.google.com/a/answer/7496409#allowboth: brew install --cask google-drive-file-stream
#  brew install --cask google-backup-and-sync
  
  ## Microsoft
  brew install --cask microsoft-edge
#  brew install --cask microsoft-excel
  brew install --cask microsoft-lync
  brew install --cask microsoft-office
#  brew install --cask onedrive
  brew install --cask evernote
  brew install --cask skype
  brew install --cask skype-for-business

  ## Mac
  brew install --cask alfred
  brew install --cask dash
  brew install --cask iterm2
  brew install --cask skitch

  ## Other 
  brew install --cask bartender
  brew install --cask dropbox  
  brew install --cask firefox
  brew install --cask gitx
#  brew install --cask gitter

  # brew install --cask openoffice
  # brew install --cask omnigraffle
  brew install --cask slack
  brew install --cask squidman
  brew install --cask vagrant
  brew install --cask virtualbox
  brew install --cask vlc
  brew install --cask vmware-fusion
  brew install --cask wireshark
#  brew install --cask zoomus
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
