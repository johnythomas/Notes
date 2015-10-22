#I don't know what this is for
declare -x TEXINPUTS=.:./packages/extsizes:

#This is to make cd easier
alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."
alias cd.="gotoCurrentSVNBranchRoot"

#Set the brightness of screen
# you need to install xblacklight(sudo apt-get install xblacklight)
xbacklight -set 20

#Disable trackpad mouse
xinput set-prop 11 "Device Enabled" 0

#Set a fancy color prompt with last 2 dirs
function PWD_LAST_TWO_DIR
{
    pwd |rev| awk -F / '{print $1,$2}' | rev | sed s_\ _/_
}
export PS1="\[\033[0;32m\]\u@\h \[\033[33m\]\$(PWD_LAST_TWO_DIR)\[\033[0m\] \$ ";

#Make df smarter
alias df="df -h"

#Make ls smarter
alias ll="ls -alFh"

#reboot
alias reboot="sudo reboot"

#shutdown
alias off="sudo shutdown -h 0"

#Extras

#Find out about Linux Distribution Name and Version
alias systemInfo="cat /etc/*-release"
alias systemInfo1="lsb_release -a"

#Find out about kernel version
alias kernelVersion="uname -mrs"

#Find size of current folder
alias showSize="du -sh"

#Show directories and their sizes
alias showSizes="du -csh *"

#Show USB Devices
alias showUsbDevices="lsusb"

#Find and replace recursively first string with second string
#Eg: replaceAll yellow blue
replaceAll()
{
    find . -type f -print0 | xargs -0 sed -i "s/$1/$2/g"
}

#GITHUB ALIASES

#This is to make git push easier
alias gpom="git push origin master"

#This is to clone repos
gitClone()
{
    git clone git+ssh://git@github.com/$1/$2
}


#PRIVATE

#Sync files with remote aws
syncFiles()
{
    currentDirectory="$(pwd)"
    currentDirectoryShort=${currentDirectory:12}
    currentDirectoryShort=$currentDirectoryShort/
    rsync -uai . aws:$currentDirectoryShort
    #rsync Options
    #z Compression
    #a Archive
    #u Update
    #i Request itemized list
}


#Sync files with remote aws
syncFilesList()
{
    currentDirectory="$(pwd)"
    currentDirectoryShort=${currentDirectory:12}
    currentDirectoryShort=$currentDirectoryShort/
    rsync -uain . aws:$currentDirectoryShort
}

#goto the root of branch or trunk
gotoCurrentSVNBranchRoot()
{
    declare -a foldersArray=(`pwd |sed 's/\// /g'`)
    declare rootIndex=0
    declare newPath=""
    for i in "${foldersArray[@]}"
    do
        rootIndex=$((rootIndex+1))
        newPath=$newPath"/"$i
	if [ "$i" = "branches" ]
        then
            newPath=$newPath"/"${foldersArray[$rootIndex]}
            break
        elif [ "$i" = "trunk" ]
        then
            break
        fi
    done
    cd $newPath  
}

#build from anywhere in the svn project
buildSVN()
{
    declare currentPath=`pwd`
    gotoCurrentSVNBranchRoot
    if [ ! -d "build/" ] ; then
        mkdir build
    fi
    cd build
    cmake -D CMAKE_BUILD_TYPE="Debug" ..
    cd $currentPath
}

#make from any where in the svn project
makeSVN()
{
    declare currentPath=`pwd`
    gotoCurrentSVNBranchRoot
    if [ ! -d "build/" ] ; then
        mkdir build
    fi
    cd build
    make $1
    cd $currentPath 
}
