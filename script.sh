#!/bin/bash
echo "⚠️ WARNING: Running dangerous command simulation..."
sleep 1
echo "Simulating: rm -rf /"
sleep 1
echo "============================================"
echo "Deleting files... (simulation only)"
sleep 1

# Fake deletion loop
for i in {1..50}
do
  FILE=$(shuf -n 1 <<EOF
/etc/passwd
/etc/shadow
/var/log/syslog
/home/user/Documents
/home/user/Desktop
/usr/bin/python3
/usr/bin/bash
/root/.ssh/id_rsa
/tmp/randomfile_$RANDOM.txt
/lib/systemd/systemd
EOF
)
  echo "removed '$FILE'"
  sleep 0.1
done

echo "============================================"
echo "Simulation complete. No files were harmed 😎"
