FROM ubuntu:16.04

# installing dependencies
RUN apt-get update && apt-get install -y python-pip \
			python3-lxml libxml2-dev libxslt-dev python-dev git wget

# installing lxml 
RUN apt-get build-dep python3-lxml -y && pip install lxml

WORKDIR /opt

# cloning the datasploit git repo
RUN git clone https://github.com/upgoingstar/datasploit.git

WORKDIR /opt/datasploit

# installing python dependencies
RUN pip install --upgrade pip && pip install -r requirements.txt

# moving the configurations file for API (as per datasploit docs)
RUN mv config_sample.py config.py

RUN mkdir /opt/datasploit/datasploitDb

RUN apt-get remove git wget -y

# exposed the port 8000 to the host system
EXPOSE 8000
