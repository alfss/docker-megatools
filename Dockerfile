FROM debian:jessie

COPY assets/setup.sh /setup.sh
RUN chmod +x /setup.sh
RUN /setup.sh

COPY assets/start-cron.sh /start-cron.sh
RUN chmod +x /start-cron.sh

#COPY assets/example_cron /etc/cron.d/example

CMD ["/start-cron.sh"]
