FROM ubuntu:latest

RUN apt-get update && apt-get install -y wget

RUN wget https://www.multichain.com/download/multichain-2.3.3.tar.gz
RUN tar -xvzf multichain-2.3.3.tar.gz
RUN cd multichain-2.3.3
RUN mv ./multichaind  /usr/local/bin
RUN mv ./multichain-cli  /usr/local/bin
RUN mv ./multichain-util /usr/local/bin

EXPOSE 7447

CMD ["multichain-util", "create", "chain1"]
CMD ["multichaind", "chain1", "-daemon"]
