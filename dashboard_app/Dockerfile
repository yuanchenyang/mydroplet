### Install wsgi ###
FROM httpd:2.4
RUN apt-get update
RUN apt-get install -y python3 python3-distutils python3-pip libapr1 libapr1-dev libaprutil1-dev
RUN pip install --no-cache-dir mod-wsgi

### Build dashboard ###
WORKDIR /usr/local/apache2/htdocs/dashboard_app/
COPY dashboard ./dashboard
COPY dashboard.wsgi ./
RUN pip install --no-cache-dir -r dashboard/requirements.txt

### Copy http config
COPY httpd.conf /usr/local/apache2/conf/httpd.conf