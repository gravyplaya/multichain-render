FROM ubuntu:latest

RUN apt-get update && apt-get install -y wget

RUN wget https://www.multichain.com/download/multichain-latest.tar.gz
RUN tar -xvzf multichain-latest.tar.gz
RUN mv multichain-* multichain
RUN cd multichain && ./install-multichain.sh

EXPOSE 7447

CMD ["multichaind", "chainname", "-daemon"]
