ninja -j20
while [ $? = 1 ]; do 
        echo “======build failed, re-build again======” 
        sleep 3 
        ninja -j20
done
