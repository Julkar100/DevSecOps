#!/bin/bash

# Download Sonar Scanner via wget
echo "Downloading Sonar Scanner using wget..."
wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-7.0.2.4839-linux-x64.zip?_gl=1*1pu1k2m*_gcl_au*MTgzMjQ1MTg0OS4xNzQxMjM5Njkx*_ga*MTY2MjA5MTcyMy4xNzQxMjM5Njkx*_ga_9JZ0GZ5TC6*MTc0MTIzOTY5MS4xLjEuMTc0MTI0MzEyMi41Mi4wLjA. -O sonar-scanner-cli-7.0.2.4839-linux-x64.zip

# Alternatively, download using curl
# echo "Downloading Sonar Scanner using curl..."
# curl -LO https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-7.0.2.4839-linux-x64.zip?_gl=1*1pu1k2m*_gcl_au*MTgzMjQ1MTg0OS4xNzQxMjM5Njkx*_ga*MTY2MjA5MTcyMy4xNzQxMjM5Njkx*_ga_9JZ0GZ5TC6*MTc0MTIzOTY5MS4xLjEuMTc0MTI0MzEyMi41Mi4wLjA. 

# Unzip the downloaded file
echo "Unzipping Sonar Scanner..."
unzip sonar-scanner-cli-7.0.2.4839-linux-x64.zip -d /tmp/

# Move the extracted files to /opt directory
echo "Moving Sonar Scanner to /opt..."
sudo mv /tmp/sonar-scanner-7.0.2.4839-linux-x64 /opt/

# Add Sonar Scanner to PATH by modifying ~/.bashrc
echo "Adding Sonar Scanner to PATH..."
echo 'export PATH=$PATH:/opt/sonar-scanner-7.0.2.4839-linux-x64/bin' >> ~/.bashrc

# Apply changes to the current session
echo "Reloading .bashrc..."
source ~/.bashrc

# Verify the installation
echo "Verifying Sonar Scanner installation..."
sonar-scanner -v
