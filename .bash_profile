# .bash_profile

# Set normal user account home directory for chroot
HOME="/$LOGNAME"
HISTFILE="$HOME/.bash_history"
colors="$HOME/.dircolors"

# Get the aliases and functions
if [ -f /etc/userbashrc ]; then
    . /etc/userbashrc
fi

# User specific environment and startup programs
if [ -f /etc/userbashenv/ladalico ];then
        . /etc/userbashenv/ladalico
fi

# User specific environment and startup programs
JAVA_HOME=/usr/local/jdk8
export JAVA_HOME

CATALINA_HOME=/home/hosting_users/ladalico/tomcat
export CATALINA_HOME

CATALINA_BASE=/ladalico/tomcat
export CATALINA_BASE

PATH=$PATH:$HOME/bin:$JAVA_HOME/bin
export PATH

LANG=ko_KR.UTF-8
export LANG

unset USERNAME

cd
