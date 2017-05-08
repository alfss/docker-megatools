FROM debian:jessie

COPY assets/setup.sh /setup.sh
RUN chmod +x /setup.sh
RUN /setup.sh

CMD ["/bin/bash", "-c", "cron && tail -f /var/log/cron.log"]
