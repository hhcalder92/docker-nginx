FROM nginx:latest

RUN apt-get update && apt-get install -y \
	curl \
	sudo

COPY nginx.conf /etc/nginx/nginx.conf

COPY  nginx_site_available /etc/nginx/sites-available/default

COPY scripts /scripts 

RUN /scripts/configure.sh

# Deps 
RUN apt-get update && apt-get install -y \
        git \
	python-software-properties \
        nodejs \
        npm 

#RUN /scripts/deploy.sh

CMD ["nginx"]
