FROM node:20

WORKDIR /usr/app
COPY . .
RUN npm i && npm run seed && npm run build

ENV POSTGRES_URL="postgres://default:VbpLasu2Jt6x@ep-misty-sun-a4h0y2tl-pooler.us-east-1.aws.neon.tech:5432/verceldb?sslmode=require"
ENV POSTGRES_PRISMA_URL="postgres://default:VbpLasu2Jt6x@ep-misty-sun-a4h0y2tl-pooler.us-east-1.aws.neon.tech:5432/verceldb?sslmode=require&pgbouncer=true&connect_timeout=15"
ENV POSTGRES_URL_NO_SSL="postgres://default:VbpLasu2Jt6x@ep-misty-sun-a4h0y2tl-pooler.us-east-1.aws.neon.tech:5432/verceldb"
ENV POSTGRES_URL_NON_POOLING="postgres://default:VbpLasu2Jt6x@ep-misty-sun-a4h0y2tl.us-east-1.aws.neon.tech:5432/verceldb?sslmode=require"
ENV POSTGRES_USER="default"
ENV POSTGRES_HOST="ep-misty-sun-a4h0y2tl-pooler.us-east-1.aws.neon.tech"
ENV POSTGRES_PASSWORD="VbpLasu2Jt6x"
ENV POSTGRES_DATABASE="verceldb"
ENV AUTH_SECRET="oTzWOtR4LxzxHyPrgaGazFyM4kBmE2GN9CZI9E3FyJU="
ENV AUTH_URL="http://localhost:3000/api/auth"

CMD [ "npm", "start" ]