FROM nginx:latest
COPY ./node_modules/Myapp/dist /usr/share/nginx/html
EXPOSE 4201
CMD ["nginx", "-g", "daemon off;"]

