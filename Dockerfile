FROM node:18-alpine
WORKDIR /app

COPY ..
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
RUN . ~/.nvm.sh
RUN nvm install 18

COPY ..
RUN npm run build
EXPOSE 1337

ENV NODE_ENV production

CMD ["npm", "run", "develop"]
