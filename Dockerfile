FROM scratch
ENV version=v1.2.0
EXPOSE 8888
COPY simple-proxy /
CMD ["/simple-proxy"]
