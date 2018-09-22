FROM kroshilin/php-docker-base
ADD run-while.sh /etc/app/run.sh
RUN chmod +x /etc/app/run.sh
WORKDIR /var/www
ENTRYPOINT ["/etc/app/run.sh"]
CMD ["echo", "Cronned"]
