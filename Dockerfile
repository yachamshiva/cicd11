FROM ubuntu

# Install required packages
RUN apt-get update && apt-get install -y apache2 unzip

# Download and extract content
WORKDIR /var/www/html
RUN wget -O photogenic.zip https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip
RUN unzip photogenic.zip
RUN rm photogenic.zip

# Start Apache in the foreground
CMD ["apache2ctl", "-D", "FOREGROUND"]

# Expose port
EXPOSE 80
