export PATH="$HOME/sdbusplus/tools:$PATH"
alias ctags="/home/baxiche/ctags/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --exclude=bin --exclude=build"
alias grep="grep --exclude=tags"
alias hal='ssh sora@192.168.248.37'
alias wytn='ssh syhann@10.245.13.4'
alias wyhq='ssh sora@10.248.40.219'
alias wytnpwd=FavaWylz01!

function fbmc() {
  case "$1" in 
    "work")
      ranger $HOME/openbmc/build/yosemite4/tmp/work/armv7ahf-vfpv4d16-openbmc-linux-gnueabi ;;
    "src")
      ranger $HOME/openbmc/build/yosemite4/workspace/sources
      ;;
    "rfs")
      ranger $HOME/openbmc/build/yosemite4/tmp/work/yosemite4-openbmc-linux-gnueabi/obmc-phosphor-image/1.0/rootfs
      ;;
    "dep")
      ranger $HOME/openbmc/build/yosemite4/tmp/deploy/images/yosemite4
      ;;
    "bbs")
      ranger $HOME/openbmc/meta-phosphor/recipes-phosphor
      ;;
    "interface")
      ranger $HOME/openbmc/build/yosemite4/tmp/work/armv7ahf-vfpv4d16-openbmc-linux-gnueabi/phosphor-dbus-interfaces/1.0+git/git
      ;;
    "mctp")
      ranger $HOME/openbmc/build/yosemite4/tmp/work/armv7ahf-vfpv4d16-openbmc-linux-gnueabi/mctp/2.1/git
      ;;
      
    *)
  esac
}

function yv(){
	ssh root@192.168.0.$1
}

function scpimg() {
  scp $HOME/openbmc/build/yosemite4/tmp/deploy/images/yosemite4/obmc*.static.mtd sora@10.248.40.219:/home/sora/obmc.mtd
}

function scpbmc() {
  scp obmc.mtd root@192.168.0.$1:/tmp/
}

function tat() {
  tmux attach -t $1
}

function tns() {
  tmux new -s $1
}

function tls() {
  tmux ls
}

function syncconf() {
  cp $HOME/ranger/ranger/config/rc.conf    $HOME/configures
	cp $HOME/ranger/ranger/config/rifle.conf $HOME/configures
  cp $HOME/.bashrc                         $HOME/configures
	cp $HOME/.vimrc                          $HOME/configures
	cp $HOME/.tmux.conf                      $HOME/configures
	cp $HOME/.ssh/config                     $HOME/configures
	cp $HOME/.gitconfig                      $HOME/configures
}

function apyconf() {
	cd $HOME/configures
	git pull
  cp $HOME/configures/rc.conf     $HOME/ranger/ranger/config/rc.conf
	cp $HOME/configures/rifle.conf  $HOME/ranger/ranger/config/rifle.conf
	cp $HOME/configures/.ssh/config $HOME/.ssh
  cp $HOME/configures/.bashrc     $HOME
	cp $HOME/configures/.vimrc      $HOME
	cp $HOME/configures/.tmux.conf  $HOME
	cp $HOME/configures/.gitconfig  $HOME
}

function pushconf() {
	syncconf
	cd $HOME/configures
	git add .
	git commit -a -m "update conf"
	git push
}
