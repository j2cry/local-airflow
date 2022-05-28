## Commons

My own local development airflow.

Based on official image `apache-airflow:2.3.1-python3.9`. Using `postgresql:13` and `redis:7`.

Also including `openjdk-11` and `apache-spark-provider`.


## 3-step running
1. Build
    ```
    sudo docker build -t local/airflow .
    ```

2. Initialize
    ```
    sudo docker-compose up airflow-init
    ```

3. Run
    ```
    sudo docker-compose up -d
    ```

NOTE: it is required to add `fs_default` connection. You can do it with WebUI.
