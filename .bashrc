export PATH="/data/sora/sdbusplus/tools:$PATH"
alias ctags="/data/sora/ctags/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --exclude=bin --exclude=build"
alias grep="grep --exclude=tags"
alias ranger='python3 ~/ranger/ranger.py'
alias hal='ssh sora@192.168.248.37'
alias wytn='ssh syhann@10.245.13.4'
alias wyhq='ssh sora@10.248.40.219'
alias wytnpwd=FavaWylz01!

function fbmc() {
  case "$1" in 
    "work")
      ranger /data/sora/openbmc/build/yosemite4/tmp/work/armv7ahf-vfpv4d16-openbmc-linux-gnueabi
      ;;
    "src")
      ranger /data/sora/openbmc/build/yosemite4/workspace/sources
      ;;
    "rfs")
      ranger /data/sora/openbmc/build/yosemite4/tmp/work/yosemite4-openbmc-linux-gnueabi/obmc-phosphor-image/1.0/rootfs
      ;;
    "dep")
      ranger /data/sora/openbmc/build/yosemite4/tmp/deploy/images/yosemite4
      ;;
    "bbs")
      ranger /data/sora/openbmc/meta-phosphor/recipes-phosphor
      ;;
    "interface")
      ranger /data/sora/openbmc/build/yosemite4/tmp/work/armv7ahf-vfpv4d16-openbmc-linux-gnueabi/phosphor-dbus-interfaces/1.0+git/git
      ;;
    "mctp")
      ranger /data/sora/openbmc/build/yosemite4/tmp/work/armv7ahf-vfpv4d16-openbmc-linux-gnueabi/mctp/2.1/git
      ;;
      
    *)
  esac
}

function yv(){
	ssh root@192.168.0.$1
}

function scpimg() {
  scp /data/sora/openbmc/build/yosemite4/tmp/deploy/images/yosemite4/obmc*.static.mtd sora@10.248.40.219:/home/sora/obmc.mtd
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
  cp $HOME/ranger/ranger/config/rc.conf $HOME/ranger/ranger/config/rifle.conf $HOME/configures
  cp $HOME/.bashrc $HOME/.vimrc $HOME/.tmux.conf $HOME/configures
  scp $HOME/ranger/ranger/config/rc.conf $HOME/ranger/ranger/config/rifle.conf sora@wyhq:ranger/ranger/config
  scp $HOME/.bashrc $HOME/.vimrc $HOME/.tmux.conf sora@wyhq:
}
