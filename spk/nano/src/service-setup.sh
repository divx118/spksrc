service_postinst ()
{
    # Put nano in the PATH
    mkdir -p /usr/local/bin
    ln -sf /var/packages/${SYNOPKG_PKGNAME}/target/bin/nano /usr/local/bin/nano
    echo 'include /var/packages/nano/target/share/nano/*.nanorc' > /root/.nanorc
}

service_postuninst ()
{
    # Remove link
    rm -f /usr/local/bin/nano
    rm -f /root/.nanorc
}
