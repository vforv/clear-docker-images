FROM ubuntu

ENTRYPOINT ["/clear-docker.sh"]

# run.sh script uses some bash specific syntax
RUN apt update -y
RUN apt install docker.io -y


ADD clear-docker.sh /clear-docker.sh

CMD [ "/clear-docker.sh" ]