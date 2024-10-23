#!/bin/zsh

# reference https://www.linkedin.com/pulse/intercept-ios-flutter-app-traffic-mac-os-manoj-maurya-pxptc
# if the script fails, run the commands manually (obviously)
# plug your iphone into your mac via USB, turn off wifi on your phone, turn on internet sharing
# set your proxy to 'invisible' mode

echo "Enabling IP Forwarding"
sudo sysctl -w net.inet.ip.forwarding=1

echo "Loading PF rules"
sudo pfctl -F all
sudo pfctl -d

# load our rules
sudo pfctl -f /path/to/rules/flutter.pf.conf
sudo pfctl -e

echo "Done"