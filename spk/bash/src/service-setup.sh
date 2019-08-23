service_postinst ()
{
    # Put nano in the PATH
    mkdir -p /bin
    ln -sf /var/packages/${SYNOPKG_PKGNAME}/target/bin/bash /bin/bash
    cp /root/.profile /root/.profile.backup
    echo '/bin/bash' >> /root/.profile
    cat <<'EOF' >/root/.bashrc
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
alias ls='ls --color=auto'
alias grep='grep --color=auto'

HISTFILE=/root/.bash_history
HISTFILESIZE=100
HISTSIZE=100

bind '"\e[1~": beginning-of-line' &> /dev/null
bind '"\e[4~": end-of-line' &> /dev/null
EOF
}

service_postuninst ()
{
    # Remove link
    rm -f /bin/bash
    cp /root/.profile.backup /root/.profile
    rm -f /root/.bashrc
    rm -f /root/.bash_history
}
