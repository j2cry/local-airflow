FROM apache/airflow:2.3.1-python3.9
USER root
RUN apt-get update \
  && apt-get install -y --no-install-recommends openjdk-11-jdk libgomp1 \
  && apt-get autoremove -yqq --purge \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*
USER airflow
RUN pip install --no-cache-dir pyspark==3.2.0 apache-airflow-providers-apache-spark==2.1.3
ENV PYTHONPATH "${PYTHONPATH}:${AIRFLOW_HOME}"
