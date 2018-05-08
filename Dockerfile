FROM ubuntu:16.04

RUN apt-get update && apt-get install -y git python software-properties-common python-software-properties \
  && add-apt-repository ppa:ethereum/ethereum \
  && apt-get update \
  && apt-get install -y pandoc \
  && apt-get install -y ethereum solc python-pip \
  && pip install z3-solver z3 web3

RUN git clone https://github.com/MAIAN-tool/MAIAN.git