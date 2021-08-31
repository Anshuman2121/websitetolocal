FROM alpine as build
RUN apk add --no-cache wget
WORKDIR /app
RUN wget -r -l 1 -k -p -H --domains=web.archive.org https://blog.12min.com
RUN mv * new


FROM nginx:alpine
COPY --from=build /app/new /usr/share/nginx/html

