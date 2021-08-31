FROM alpine as build
ARG WEBSITE
RUN apk add --no-cache wget
WORKDIR /app
RUN wget -r -l 1 -k -p -H --domains=web.archive.org $WEBSITE
RUN mv * new


FROM nginx as website
COPY --from=build /app/new /usr/share/nginx/html

