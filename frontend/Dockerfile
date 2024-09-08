FROM nginx:latest

COPY frontend/nginx.conf /etc/nginx/nginx.conf

RUN apt update && apt install -y git
RUN git clone https://github.com/leonhard-s/ps2map-viewer.git /tmp/ps2map-viewer && \
    cd /tmp/ps2map-viewer                                                        && \
    cp index.html /usr/share/nginx/html/index.html                               && \
    cp index.js /usr/share/nginx/html/index.js                                   && \
    cp *.css /usr/share/nginx/html/                                              && \
    mkdir -p /usr/share/nginx/html/img/icons                                     && \
    cp -r img/icons /usr/share/nginx/html/img                                    && \
    cp img/logo-ps2.png /usr/share/nginx/html/img/logo-ps2.png                   && \
    cd                                                                           && \
    rm -rf /tmp/ps2map-viewer

COPY frontend/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
    
EXPOSE 80
ENTRYPOINT ["/entrypoint.sh"]
