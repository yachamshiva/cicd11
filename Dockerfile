FROM ubuntu
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip  /var/www/html/
WORKDIR /var/www/html
RUN apt-get update && apt-get install -y unzip
RUN unzip photogenic.zip
RUN cp -rf photogenic/*  .
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
EXPOSE 8000
