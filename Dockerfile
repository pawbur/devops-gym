FROM ubuntu:trusty

ENV APPDIR /opt/ex_0
RUN mkdir $APPDIR

RUN apt-get -qq update && \
    apt-get -y -qq install python-pip && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp

COPY ex_0 $APPDIR

RUN pip install -r $APPDIR/requirements.txt

RUN adduser ex0

EXPOSE 5000

WORKDIR $APPDIR

USER ex0

CMD ["python","server.py"]
