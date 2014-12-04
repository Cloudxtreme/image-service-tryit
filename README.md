Official Tryit image on Online Labs
====================================

**Try it** images are available for 15 free minutes.

Scripts to build the official Tryit image on Online Labs

This image is built using [Image Tools](https://github.com/online-labs/image-tools) and depends on the official [Docker](https://github.com/online-labs/image-app-docker) image.

Contents
--------

- Based on the [Docker](https://github.com/online-labs/image-app-docker) image
- a TTY.js daemon instance listening on port 6969
- a startup script that creates a password for the ubuntu user, based on the server tags

---

Commands
--------

    # write the image to /dev/nbd1
        $ make install_on_disk

Full list of commands available at: https://github.com/online-labs/image-tools/tree/master#commands

Links
-----

- [Try-it (limited slots)](http://labs.online.net/try-it)
- [Online Labs' Documentation](https://doc.cloud.online.net)
