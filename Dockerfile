### Build personal-website ###
FROM ruby:latest as jekyll
RUN gem install jekyll
RUN gem install jekyll-paginate

WORKDIR /srv/jekyll/personal-website
COPY personal-website ./
RUN jekyll build

### Main Server ###
FROM httpd:2.4
RUN apt-get update
RUN apt-get install -y python3 python3-distutils python3-pip libapr1 libapr1-dev libaprutil1-dev
RUN pip install --no-cache-dir mod-wsgi

### Copy personal-website ###
WORKDIR /usr/local/apache2/htdocs/personal-website/_site
COPY --from=jekyll /srv/jekyll/personal-website/_site ./

### Build dashboard ###
WORKDIR /usr/local/apache2/htdocs/dashboard_app/
COPY dashboard ./dashboard
COPY dashboard.wsgi ./
RUN pip install --no-cache-dir -r dashboard/requirements.txt

### Build 3d-particles ###
WORKDIR /usr/local/apache2/htdocs/particles
COPY 3d-particles ./

### Build 61a-website ###
WORKDIR /usr/local/apache2/htdocs/cs61a
COPY 61a-website ./

### Build coding-js ###
WORKDIR /usr/local/apache2/htdocs/coding-js
COPY coding-js ./

### Build lambdajs ###
WORKDIR /usr/local/apache2/htdocs/LambdaJS
COPY LambdaJS ./

### Copy http config
COPY httpd.conf /usr/local/apache2/conf/httpd.conf