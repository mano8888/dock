#!/bin/bash
cont_count=$1
echo "creating $cont_count containers.."
sleep 2;
for i in `seq $cont_count`
do
	echo "=============================="
    echo "Creating www.cont$i container.."
    sleep 1
   sudo docker run --name www.cont$i -d -it --rm mano8888/mydoc /bin/bash
    echo "www.cont$i container has been created!"
	echo "=============================="
done
