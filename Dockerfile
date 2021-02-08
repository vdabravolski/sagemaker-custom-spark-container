FROM 173754725891.dkr.ecr.us-east-1.amazonaws.com/sagemaker-spark-processing:2.4-cpu-py37-v1.2

RUN yum install -y epel-release
RUN yum install -y python-pip
RUN pip install pandas pyspark

ARG code_dir=/opt/ml/code
RUN mkdir -p $code_dir
COPY preprocess.py $code_dir/preprocess.py
WORKDIR $code_dir

ENTRYPOINT ["python","preprocess.py"]