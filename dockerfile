FROM apache/airflow:2.3.1-python3.9
USER root
RUN apt-get update \
  && apt-get install -y --no-install-recommends openjdk-11-jdk \
  && apt-get autoremove -yqq --purge \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*
USER airflow
RUN pip install --no-cache-dir apache-airflow-providers-apache-spark
ENV PYTHONPATH "${PYTHONPATH}:${AIRFLOW_HOME}"
