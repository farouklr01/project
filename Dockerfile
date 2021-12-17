FROM nginx:latest
COPY ./dist/project/ /usr/share/nginx/html
EXPOSE 4201
CMD ["nginx", "-g", "daemon off;"]

