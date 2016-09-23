Debian Apache2 image with SSL support (self signed certificate created on startup), mod_rewrite and mod_proxy. This build is as provided by the debian repositories for the wheezy release.

**Development only, not suitable for production environments.**

mod_rewrite, mod_proxy and all proxy submodules have been enabled.

| Directories | |
|---|---|
| Apache config directory | /etc/apache2 |
| Enabled sites | /etc/apache2/sites-enabled |
| Enabled modules | /etc/apache2/mods-enabled |
| Website root | /var/www/html/ |

To run the container:
docker run -d -p 80:80 -p 443:443 -v /my/html/source/:/var/www/html tcsoftware/apache2:latest

Extending the container / enabling other modules:

```
FROM tcsoftware/apache2:latest
RUN a2enmod alias  # enable alias module
```
