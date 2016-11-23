docker-sslocal
==================

This Dockerfile builds an image with the Python implementation of [shadowsocks](https://github.com/shadowsocks/shadowsocks) client `sslocal`. Based on Ubuntu 16.04 image.

Quick Start
-----------

This image uses ENTRYPOINT to run the containers as an executable. 

    # create
    docker run -d -p 1984:1984 --name sslocal zhenkyle/docker-sslocal -b 0.0.0.0 -s $YOUR_SERVER_IP -p $YOUR_SERVER_PORT -l 1984 -k $SSPASSWORD -m chacha20
    # start
    docker stop sslocal
    # stop
    docker start sslocal
    # remove
    docker rm sslocal

You can configure the service to run on a port of your choice. Just make sure the port number given to Docker is the same as the one given to shadowsocks. Also, it is  highly recommended that you store the shadowsocks password in an environment variable as shown above. This way the password will not show in plain text when you run `docker ps`.

For more command line options, refer to the [shadowsocks documentation](https://github.com/shadowsocks/shadowsocks/tree/master)

For all cipher options, refer to the [shadowsocks Cipher Spec](https://shadowsocks.org/en/spec/cipher.html), note that `chacha20` is prefered cipher, because it's faster and safer, accroding to this [artical](https://github.com/breakwa11/shadowsocks-rss/issues/38) in chinese.


