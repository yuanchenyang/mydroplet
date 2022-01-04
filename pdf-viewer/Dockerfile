FROM httpd:2.4

### Copy pdf files ###
WORKDIR /usr/local/apache2/htdocs/
ADD https://github.com/yuanchenyang/pdf.js/releases/download/web-1.0/webviewer.tar.gz ./

RUN tar -xzf webviewer.tar.gz && mv webviewer pdf && rm webviewer.tar.gz

### Copy http config
COPY httpd.conf /usr/local/apache2/conf/httpd.conf