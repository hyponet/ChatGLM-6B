FROM python:3.11

WORKDIR /chatglm

COPY ./requirements.txt /chatglm
RUN pip install -i http://mirrors.cloud.aliyuncs.com/pypi/simple/ --trusted-host mirrors.cloud.aliyuncs.com -r /chatglm/requirements.txt

COPY . /chatglm

CMD ["python", "web_demo.py"]

EXPOSE 7860
