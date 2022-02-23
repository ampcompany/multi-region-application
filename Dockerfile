FROM public.ecr.aws/docker/library/node:16.13.1-alpine3.14

RUN mkdir /app/

WORKDIR /app/

COPY ./ /app/

#COPY src /app/
#COPY package.json /app/
#COPY package-lock.json /app/
#COPY tsconfig.json /app/

RUN npm install --only=prod

ENTRYPOINT ["npm", "run", "prod"]
