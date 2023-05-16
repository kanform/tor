FROM ubuntu

RUN apt-get update && apt-get upgrade -y && apt-get install tor curl wget dnsutils netcat -y
COPY url-list /usr/local/src/
COPY run.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/run.sh

CMD ["run.sh"]
