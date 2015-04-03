Try-it image on Scaleway
========================

**Try it** images are available for 15 free minutes.

Scripts to build the official **Try-it image** on Scaleway

This image is built using [Image Tools](https://github.com/scaleway/image-tools) and depends on the official [Docker](https://github.com/scaleway/image-app-docker) image.

---

**This image is meant to be used on a C1 server.**

We use the Docker's building system and convert it at the end to a disk image that will boot on real servers without Docker. Note that the image is still runnable as a Docker container for debug or for inheritance.**

[More info](https://github.com/scaleway/image-tools#docker-based-builder)

Contents
--------

- Based on the [Docker](https://github.com/scaleway/image-app-docker) image
- a TTY.js daemon instance listening on port 6969
- a startup script that creates a password for the ubuntu user, based on the server tags

---

Install
-------

Build and write the image to /dev/nbd1 (see [documentation](https://www.scaleway.com/docs/create_an_image_with_docker))

    $ make install

Full list of commands available at: [scaleway/image-tools](https://github.com/scaleway/image-tools/tree/master/scripts#commands)


---

Links
-----

- [Try-it](http://labs.online.net/try-it) (limited slots)
- [Online Labs' Documentation](https://doc.cloud.online.net)


---

A project by [![Scaleway](https://avatars1.githubusercontent.com/u/5185491?v=3&s=42)](https://www.scaleway.com/)