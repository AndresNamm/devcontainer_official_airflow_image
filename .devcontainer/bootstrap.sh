if [ -d $AIRFLOW_HOME/logs ] 
then
    echo "Airflow is already installed"
else
    airflow db init
    airflow users create \
        --username admin \
        --firstname test \
        --lastname test \
        --password test \
        --role Admin \
        --email admin@gmail.com


    airflow db init
    airflow users create \
        --username noob \
        --firstname test \
        --lastname test \
        --password test \
        --role Viewer \
        --email noob@gmail.com
fi


if [ -f /home/airflow/airflow_home/airflow-webserver-monitor.pid ]
then 
    echo "Airflow webserver-monitor is running, restarting it"
    cd /home/airflow/airflow_home/
    kill $(cat airflow-webserver-monitor.pid)
    rm airflow-webserver-monitor.pid
fi 


if [ -f /home/airflow/airflow_home/airflow-webserver.pid ]
then 
    echo "Airflow webserver is running, restarting it"
    cd /home/airflow/airflow_home/
    kill $(cat airflow-webserver.pid)
    rm airflow-webserver.pid
fi 

if [ -f /home/airflow/airflow_home/airflow-scheduler.pid ]
then 
    echo "Airflow scheduler is running, restarting it"
    cd /home/airflow/airflow_home/
    kill $(cat airflow-scheduler.pid)
    rm airflow-scheduler.pid
fi 

echo "Starting Webserver"
airflow webserver --port 8080 -D

echo "Starting Scheduler"
airflow scheduler 


