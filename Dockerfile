FROM nginx:alpine

# Set working directory for document root
WORKDIR /usr/share/nginx/html

# Cleanup unneeded files, relative to working directory
RUN rm -rf ./*

COPY build/ /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]