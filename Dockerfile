FROM wordpress:php8.4

RUN apt-get update && \
	apt-get install -y  --no-install-recommends ssl-cert less gifsicle libjpeg-progs optipng && \
	rm -r /var/lib/apt/lists/* && \
	a2enmod ssl && \
	a2ensite default-ssl
EXPOSE 80
EXPOSE 443
