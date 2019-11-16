sshpass -p "root" scp -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -P 2222 -r /Config root@192.168.2.18:/

echo "Done?"