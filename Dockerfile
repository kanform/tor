FROM ubuntu

RUN apt-get update && apt-get install tor curl wget dnsutils -y
COPY url-list /usr/local/src/
COPY run.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/run.sh

CMD ["run.sh"]
