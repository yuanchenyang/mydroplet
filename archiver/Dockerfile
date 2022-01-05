### Install wsgi ###
FROM httpd:2.4
RUN apt-get update
RUN apt-get install -y python3 python3-distutils python3-pip libapr1 libapr1-dev libaprutil1-dev
RUN pip install --no-cache-dir mod-wsgi

### Build archiver ###
WORKDIR /usr/local/apache2/htdocs/archiver/
COPY facebook-group-archiver ./facebook-group-archiver
COPY archiver.wsgi rig.wsgi ./

RUN pip install --no-cache-dir -r facebook-group-archiver/requirements.txt

### Copy http config
COPY httpd.conf /usr/local/apache2/conf/httpd.conf