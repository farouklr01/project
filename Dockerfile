FROM nginx:latest
COPY ./Myapp/dist/ /usr/share/nginx/html
EXPOSE 4201
CMD ["nginx", "-g", "daemon off;"]

