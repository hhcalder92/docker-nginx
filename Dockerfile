FROM nginx:latest

COPY nginx.conf /etc/nginx/nginx.conf

COPY  nginx_site_available /etc/nginx/site_available/default

# Deps 
RUN apt-get update && apt-get install -y \
        git \
        nodejs \
        npm 

CMD ["nginx"]
