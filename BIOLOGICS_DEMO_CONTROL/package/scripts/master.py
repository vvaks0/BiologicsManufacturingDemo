import sys, os, pwd, signal, time, shutil
from subprocess import *
from resource_management import *

class DemoControl(Script):
  def install(self, env):
    self.configure(env)
    import params
  
    if not os.path.exists(params.install_dir):  
        os.makedirs(params.install_dir)
    os.chdir(params.install_dir)
    Execute('git clone ' + params.download_url)
    os.chdir(params.install_dir+'/DataSimulators/DeviceSimulator')
    Execute('mvn clean package')
    os.chdir(params.install_dir+'/DataSimulators/DeviceSimulator/target')
    shutil.copy('DeviceSimulator-0.0.1-SNAPSHOT-jar-with-dependencies.jar', params.install_dir)

  def start(self, env):
    self.configure(env)
    import params
    Execute('echo Start Simulation')
    Execute('nohup java -jar '+params.install_dir+'/DeviceSimulator-0.0.1-SNAPSHOT-jar-with-dependencies.jar BioReactor 1000 Simulation '+params.nifi_host_ip+' > BioReactor_1000_Sim.log 2>&1 & echo $! > BioReactor_1000_Sim.pid')

    Execute('nohup java -jar '+params.install_dir+'/DeviceSimulator-0.0.1-SNAPSHOT-jar-with-dependencies.jar FiltrationSystem 1000 Simulation '+params.nifi_host_ip+' > Filtration_1000_Sim.log 2>&1 & echo $! > Filtration_1000_Sim.pid')
    
  def stop(self, env):
    self.configure(env)
    import params
    Execute('echo Stop Simulation')
    Execute (format('kill -9 `cat '+params.install_dir+'BioReactor_1000_Sim.pid` >/dev/null 2>&1')) 
    Execute (format('kill -9 `cat '+params.install_dir+'Filtration_1000_Sim.pid` >/dev/null 2>&1')) 

    Execute ('rm -f '+params.install_dir+'BioReactor_1000_Sim.pid')
    Execute ('rm -f '+params.install_dir+'Filtration_1000_Sim.pid')
    
  def status(self, env):
    self.configure(env)
    import params
    check_process_status(params.install_dir+'BioReactor_1000_Sim.pid')
    
  def configure(self, env):
    import params
    env.set_params(params)

if __name__ == "__main__":
  DemoControl().execute()
