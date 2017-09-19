FROM python:3.6
ENV PYTHONBUFFERED 1
RUN mkdir /config
RUN mkdir /src
RUN mkdir /static
ADD /src/requirements.txt /src/
RUN pip install -r /src/requirements.txt
WORKDIR /src

