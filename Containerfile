FROM busybox:1.37.0

# STOPSIGNAL SIGWINCH
# COPY httpd-foreground /usr/local/bin/
# EXPOSE 80
# CMD ["httpd-foreground"]



COPY healthcheck.sh /

# HEALTHCHECK \
#   --interval=5s \
#   --timeout=1500ms \
#   --start-period=10s \
#   --retries=3 \
#     CMD ["/healthcheck.sh"]

# ENTRYPOINT [ 
#   "/bin/httpd", 
#   "-f", 
#   "-h", 
#   "/var/www/html", 
#   "-p", 
#   "80", 
#   "-c", 
#   "/etc/httpd.conf"
# ]


ENTRYPOINT ["/bin/httpd","-f"]
