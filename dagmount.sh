# mount DAGs
if mountpoint -q ~/projects/airflow.env/dags/
then
    sudo umount ~/projects/airflow.env/dags/
    echo "airflow DAGs folder was unmounted"
else
    sudo mount --bind ~/projects/$1/dags/ ~/projects/airflow.env/dags/ && echo "$1 project DAG mounted to airflow"
fi

# mount data
if mountpoint -q ~/projects/airflow.env/data/
then
    sudo umount ~/projects/airflow.env/data/
    echo "airflow data folder was unmounted"
else
    sudo mount --bind ~/projects/$1/data/ ~/projects/airflow.env/data/ && echo "$1 project data mounted to airflow"
fi