### Build personal-website ###
FROM ruby:latest as jekyll
RUN gem install jekyll
RUN gem install jekyll-paginate
RUN gem install jekyll-sitemap

WORKDIR /srv/jekyll/personal-website
COPY personal-website ./
RUN jekyll build

### Main Server ###
FROM httpd:2.4

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

### Copy personal-website ###
WORKDIR /usr/local/apache2/htdocs/personal-website/_site
COPY --from=jekyll /srv/jekyll/personal-website/_site ./

### Copy http config
COPY httpd.conf /usr/local/apache2/conf/httpd.conf