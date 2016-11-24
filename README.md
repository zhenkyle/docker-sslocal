docker-sslocal
==================

This Dockerfile builds an image with the Python implementation of [shadowsocks](https://github.com/shadowsocks/shadowsocks/tree/master) client `sslocal`. Based on Ubuntu 16.04 image.

Quick Start
-----------

This image uses ENTRYPOINT to run the containers as an executable. 

    docker run -d -p 1984:1984 --name sslocal zhenkyle/docker-sslocal -b 0.0.0.0 -s $YOUR_SERVER_IP -p $YOUR_SERVER_PORT -l 1984 -k $SSPASSWORD -m chacha20

You can configure the service to run on a port of your choice. Just make sure the port number given to Docker is the same as the one given to shadowsocks. Also, it is  highly recommended that you store the shadowsocks password in an environment variable as shown above. This way the password will not show in plain text when you run `docker ps`.

For more command line options, refer to the [shadowsocks](https://github.com/shadowsocks/shadowsocks/tree/master) documentation.

Changelog
-----------
- `2.9.0`: shadowsocks-python 2.9.0. This version comes with `-a ONE_TIME_AUTH` (2016-11-24)
- `2.8.2.1`: shadowsocks-python 2.8.2 with salsa20, chacha20. Note that `chacha20` is now prefered cipher, because it's safer and faster, accroding to [this comment](https://github.com/breakwa11/shadowsocks-rss/issues/38). (2016-11-23)
- `2.8.2`: shadowsocks-python 2.8.2 without salsa20, chacha20 (2015-9-21)

