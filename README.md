# BiologicsManufacturingDemo

An example of a modern data application that demonstrates how the Hortonworks Connected Platform can be used to optimization manufacturing of biologics (vaccines). 
The demo leverages many of the major components of HDP and HDF to create a real time visualization of the manufacturing process with alerts and yield predications.

Credit Card Transaction Monitor is an example of a Modern Data Application running on the Hortonworks Connected Platform (HDP/HDF). The application shows how a financial institution can use Hortonworks Data Flow and Hortonworks Data Platform to protect credit card customers from credit card fraud.

# Install BiologicsManufacturingDemo
Download and Import Hortonworks Sandbox 2.4 for Virtual Box. Should work with VMWare but has not been tested. Modify local hosts file so that sandbox.hortonworks.com resolves to 127.0.0.1 (This is important and may break the simulator and UI) 

Configure Virtual Box Port Forward

8082 – HDF_HTTP_Ingest

8090 - BiologicsManufacturingUI

8091 - Cometd

9090 – HDF_Studio

Start Sandbox, SSH to Sandbox (ssh root@sandbox.hortonworks.com -p 2222)

Wait for Sandbox to fully boot up, all service need to finish starting

Change Ambari password to "admin" (ambari-admin-password-reset)
 
(!!!!!!!!!!!!!AMBARI PASSWORD MUST BE SET TO "admin" (no quotes)!!!!!!)

cd /root (use the /root directory to begin the install)

git clone https://github.com/vakshorton/BiologicsManufacturingDemo.git

(make sure that git cloned to /root/BiologicsManufacturingDemo)

cd BiologicsManufacturingDemo

./install.sh

Install script reboot once complete. This is required to refresh session configuration.

Wait for Sandbox to fully reboot

Log back in via SSH (ssh root@sandbox.hortonworks.com -p 2222)

# Start Demo
The script to start demo services should be located in the /root/BiologicsManufacturingDemo directory

./startDemoServices.sh

Slider will download the servlet (UI) docker containers from the docker hub so it may take a few minutes for the application server to start

Bring up the UI in a Browser: http://sandbox.hortonworks.com:8090/ShopFloorUI/DeviceMap

Start Simulation:

The Simulator should be located in the BiologicsManufacturingDemo directory

java -jar DeviceSimulator-0.0.1-SNAPSHOT-jar-with-dependencies.jar BioReactor 1000 Simulation

java -jar DeviceSimulator-0.0.1-SNAPSHOT-jar-with-dependencies.jar FiltrationSystem 1000 Simulation

USAGE:

java -jar simulator.jar arg1=Simulator-Type{BioReactor|FiltrationSystem} arg2=EntityId{1000} arg3={Simulation|Training}

Example:

java -jar DeviceSimulator-0.0.1-SNAPSHOT-jar-with-dependencies.jar BioReactor 1000 Simulation

java -jar DeviceSimulator-0.0.1-SNAPSHOT-jar-with-dependencies.jar FiltrationSystem 1000 Simulation

# Biologics Manufacturing UI

