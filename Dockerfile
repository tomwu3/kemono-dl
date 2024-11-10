FROM python:3.13-alpine

#RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

WORKDIR /app

COPY  . ./

RUN pip3 install -r requirements.txt

ENTRYPOINT ["python", "kemono-dl.py"]

CMD ["-help"] #
