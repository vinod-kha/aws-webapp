# Our node app is based on `18-alpine` image 
FROM node:18-alpine

# Setting up the environment variables needed:
ENV DOMAIN="http://localhost:3000" \
PORT=3000 \
STATIC_DIR="./client" \
PUBLISHABLE_KEY="pk_test_51OtXkwSGtt6II70Gztkm4r6LYomVH0Z251ZnnUQJiuR0n3VnZ8F7gsdgb2MX88ckcEGoij1flSqLS0GsfIKQ1Zhw003QnJ2xYE" \
SECRET_KEY="sk_test_51OtXkwSGtt6II70GJ5md6URe1Br2QFEhHeibraBKUo05pISEtiKu5ldMp4k5tSPjj2h9d4SqhF23suTclZHaGzZf001pzpzL8r"

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["node", "server.js"]
