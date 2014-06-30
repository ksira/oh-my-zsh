source /etc/profile

if ping -w 1 www.google.com > /dev/null; then 
  gcalcli --cals owner calw &
fi
task ls
