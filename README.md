# Prisma Course: Zero To Hero 🎯

<cite>by Sakura Dev</cite>
Check out the [tutorial on Youtube](https://www.youtube.com/watch?v=yW6HnMUAWNU)

## PACKAGES

```bash
npx create-next-app@latest
# options: typescript - use tailwind - app folder

Install Prisma extension from prisma
#useful extension

npm install prisma --save-dev
#install prisma - a dev dependency

npm install @prisma/client
#install prisma


npx prisma
#to see the available commands

npx prisma init
# Creates prisma folder and the .env file where connection string

```

## STEPS

### install all the packages

```bash
    npm install prisma
    npm install @prisma/client
    npx prisma init
```

### Setup the connection string

A .env file got created after npx prisma init. In the .env file modify the connection string to point to the desired database.

### Create a seed.ts

- In the prisma folder create a seed.ts file and create the functions to insert record in the tables
- In package.json in a prisma key:

```json
"prisma": {
  "seed": "ts-node --compiler-options {\"module\":\"CommonJS\"} prisma/seed.ts"
},
```

- Terminal run

```bash
npx prisma db seed
```
