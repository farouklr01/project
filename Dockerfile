FROM nginx:latest
COPY ./dist /usr/share/nginx/html
EXPOSE 4201
CMD ["nginx", "-g", "daemon off;"]

