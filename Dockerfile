FROM hugomods/hugo:exts-0.124.1 AS builder

WORKDIR /src

COPY . .

ENV HUGO_ENV=production
ENV HUGO_ENABLEGITINFO=false

RUN hugo --minify --gc

FROM nginx:1.27-alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /src/public /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
