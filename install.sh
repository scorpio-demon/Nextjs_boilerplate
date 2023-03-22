#!/bin/bash

GREEN='\033[0;32m'
BLUE='\033[0;34m' 
COLOR_OFF='\033[0m' 


echo -e "$GREEN Enter Project name: $COLOR_OFF"
read -r -p " " project_name


echo -e "$BLUE Start to install.... $COLOR_OFF"


# install nextjs typescript
npx create-next-app@latest "$project_name" --ts --src-dir --eslint 

cd "$project_name"

# install deps
npm install @mui/material @emotion/react @emotion/styled @material-ui/icons axios dotenv-flow jsonwebtoken lodash @types/lodash next-seo nookies cookies-next randomstring @types/randomstring querystring sharp @prisma/client
npm  prisma --save-dev
npx prisma init


# create local env file
touch .env.local







#  you can add your other pakcages here




echo -e "$BLUE Installation done $COLOR_OFF"


