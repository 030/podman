FROM busybox:1.37.0

# STOPSIGNAL SIGWINCH
# COPY httpd-foreground /usr/local/bin/
# EXPOSE 80
# CMD ["httpd-foreground"]


COPY index.html /var/www/html/
COPY healthcheck.sh /

HEALTHCHECK \
  --interval=5s \
  --timeout=1500ms \
  --start-period=10s \
  --retries=3 \
    CMD ["/healthcheck.sh"]

    # HEALTHCHECK --interval=5m --timeout=3s \
    # CMD curl -f http://localhost/ || exit 1

# HEALTHCHECK --interval=5m --timeout=3s \
#   CMD ["/healthcheck.sh"]

# https://github.com/docker-library/httpd/blob/500ef8b71bdf49020ec5bffad2b100936c3f2fab/2.4/alpine/Dockerfile
# https://httpd.apache.org/docs/2.4/stopping.html#gracefulstop
STOPSIGNAL SIGWINCH
COPY httpd-foreground /usr/local/bin/
EXPOSE 3000
CMD ["httpd-foreground"]
