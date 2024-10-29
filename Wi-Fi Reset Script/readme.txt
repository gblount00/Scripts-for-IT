About This Script:
The Wi-Fi reset script provides you with two options to help troubleshoot connectivity issues.

Option 1:
This option executes the following commands:

ipconfig /release
ipconfig /flushdns
netsh int ip reset
ipconfig /renew
What It Does:
This sequence releases your current DHCP lease, effectively removing the IP address assigned to your device. It clears the DNS resolver cache, resets the TCP/IP stack to its default settings, and requests a new IP address from the DHCP server, thereby re-establishing your connection to the network.

Option 2 (Admin Access Required):
This option performs the same commands as above but includes an additional step: it deletes the folder located at C:\Windows\wlansvc\Policies.

What Happens When You Delete This Folder:
Deleting the Policies folder resets the WLAN (Wireless Local Area Network) service configurations. This action can resolve Wi-Fi connectivity issues by eliminating potentially corrupted or misconfigured settings.

After running this option, you will be prompted to restart your computer with a yes or no popup to apply the changes.


