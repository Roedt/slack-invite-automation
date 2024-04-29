FROM busybox:1.36.1
RUN adduser -D static
USER static
WORKDIR /home/static
EXPOSE 8080
COPY index.html .
CMD ["busybox", "httpd", "-f", "-v", "-p", "3000"]