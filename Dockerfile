FROM wordpress:php8.4

RUN apt-get update && \
	apt-get install -y  --no-install-recommends ssl-cert less gifsicle libjpeg-progs optipng && \
	rm -r /var/lib/apt/lists/* && \
	a2enmod ssl && \
	a2ensite default-ssl

RUN rm -rf /usr/src/wordpress/wp-content/plugins/hello.php \
           /usr/src/wordpress/wp-content/plugins/akismet || true && \
    rm -rf /usr/src/wordpress/wp-content/themes/twenty* || true

EXPOSE 80
EXPOSE 443
