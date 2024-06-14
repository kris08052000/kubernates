FROM  node:16-alpine

WORKDIR app

COPY package.json package-lock.json ./

RUN npm install tsc -b

COPY . .

CMD ["node","index.js"]
