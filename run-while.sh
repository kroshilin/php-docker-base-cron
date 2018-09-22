#!/bin/bash

cleanup ()                                                                 
{                                                                                                                                  
  exit 0                                                                     
}                                                                          
                                                                           
trap cleanup SIGINT SIGTERM     

echo "Starting cron"
while [ true ]
do
$@ # f.i. php /var/www/artisan schedule:run >> /dev/null 2>&1
sleep 1s
done
