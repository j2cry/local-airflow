mountFolder() {
    if mountpoint -q ./$2
    then
        sudo umount ./$2
        echo "$1 was unmounted"
    else
        sudo mount --bind $1/$2 ./$2 && echo "$1 folder mounted to airflow"
    fi    
}

mountFolder $1 dags
mountFolder $1 data