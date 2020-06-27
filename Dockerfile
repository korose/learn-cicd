FROM ubuntu:latest
LABEL Fahri Noer Firmansyah "fahri.firmansyah@myinfosys.net"
RUN apt-get update -y
RUN apt-get install -y python3 python3-pip python3-dev build-essential
COPY . /myproject
WORKDIR /myproject
RUN pip3 install -r requirements.txt
ENTRYPOINT [ "python3" ]
CMD [ "myproject.py" ]