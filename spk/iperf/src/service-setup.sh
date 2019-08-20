service_postinst ()
{
    # Put nano in the PATH
    mkdir -p /usr/local/bin
    ln -s /var/packages/${SYNOPKG_PKGNAME}/target/bin/iperf3 /usr/local/bin/iperf3
}

service_postuninst ()
{
    # Remove link
    rm -f /usr/local/bin/iperf3
}
