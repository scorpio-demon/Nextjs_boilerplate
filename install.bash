#!/bin/bash

GREEN='\033[0;32m'
BLUE='\033[0;34m' 
COLOR_OFF='\033[0m' 


echo -e "$GREEN Enter Project name: $COLOR_OFF"
read -r -p " " project_name


# install nextjs typescript
npx create-next-app@latest --ts --src-dir --eslint --example-path "$project_name"

cd "project_name"

# install deps
npm install @mui/material @emotion/react @emotion/styled axios dotenv-flow jsonwebtoken lodash @types/lodash next-seo nookies cookies-next randomstring @types/randomstring querystring sharp @prisma/client
npm  prisma --save-dev
npx prisma generate


#  you can add your other pakcages here







