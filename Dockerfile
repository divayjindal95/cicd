FROM ubuntu:16.04

#MAINTANER jindal

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev

# We copy just the requirements.txt first to leverage Docker cache

WORKDIR /src

ADD ./requirements.txt /src
ADD ./src/* /src/

RUN pip install --upgrade pip' command
RUN pip install -r requirements.txt

ENTRYPOINT [ "python" ]

CMD [ "serve.py" ]
