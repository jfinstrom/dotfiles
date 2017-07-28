# .bashrc

# User specific aliases and functions
#Installs framework then goes back to the originating dir
installfw() {
 cd /usr/src/freepbx/framework
 ./install --dev-links -n
 cd -
}
#Create new branch
newbranch() {
 git checkout -b $1/$2
}
#Go to src directory
gotosrc() {
 cd /usr/src/freepbx/$1
}
#Switch to branch
switchbranch() {
 git checkout $1/$2
}
#built in centos
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
#checkout branch in current folder
alias git12='git checkout release/12.0'
alias git13='git checkout release/13.0'
alias git14='git checkout release/14.0'
#installs whatever directory you are in
alias installpwd='fwconsole ma install $(basename $(pwd))'
#uses new branch function nb bugfix FREEPBX-XXXX
alias nb=newbranch
#Goes to src directory src core
alias src=gotosrc
#switches to branch sb bugfix FREEPBX-XXXX
alias sb=switchbranch
#first push of new branch with tracking
alias fp='git push -u origin $(git symbolic-ref HEAD | cut -d/ -f3-)'
#installs framework
alias ifw=installfw
# Source global definitions
if [ -f /etc/bashrc ]; then
       	. /etc/bashrc
fi
