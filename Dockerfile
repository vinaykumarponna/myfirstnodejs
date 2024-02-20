FROM node:14-alpine
WORKDIR /usr/app
COPY package.json ./
COPY index.js ./
RUN npm install
CMD ["npm", "start", "index.js"]
# FROM nginx
# COPY --from=step1 /usr/app/index.js /usr/share/nginx/html
