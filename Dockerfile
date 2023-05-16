FROM ubuntu

RUN apt-get update && apt-get upgrade -y && apt-get install systemctl wget tor -y
COPY url-list torsocks.conf /usr/local/src/
COPY run.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/run.sh

#CMD ["run.sh"]
CMD ["sleep","3600"]
