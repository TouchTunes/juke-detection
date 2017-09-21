FROM tensorflow/tensorflow

WORKDIR /notebooks
COPY ./requirements.txt .
COPY ./init.sh .

RUN pip install -U pip setuptools && \
    pip install -r requirements.txt

EXPOSE 8888
EXPOSE 6006

CMD sh init.sh
