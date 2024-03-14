FROM node:18

WORKDIR /usr/src/app

COPY . .

RUN npm install

RUN npm i -g prisma

# Copy Prisma files
COPY prisma ./prisma/

# Generate Prisma Client
RUN npx prisma generate

EXPOSE 3000
CMD ["npm" , "run" , "start:dev"]