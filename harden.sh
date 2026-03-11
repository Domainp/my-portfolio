#!/bin/bash
#!/bin/bash
# Restoration of Gold Standard for Identity Files
sudo chmod 640 /etc/shadow
sudo chown root:shadow /etc/shadow

# Creating and Securing the Personal Vault
mkdir -p ~/Vault
chmod 700 ~/Vault

echo "MISSION COMPLETE: System Hardened."
