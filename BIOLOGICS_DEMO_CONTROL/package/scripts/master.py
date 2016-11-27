import sys
import os
import shutil
from subprocess import *
from resource_management import *

class DemoControl(Script):
  def install(self, env):
    print 'Install the config client';

  def stop(self, env):
    print 'Stop Simulation';
    subprocess.Popen(["/root/BiologicsManufacturingDemo/stopSimulation.sh"])
    
  def start(self, env):
    print 'Start Simulation';
    subprocess.Popen(["/root/BiologicsManufacturingDemo/startSimulation.sh"])
    
  def status(self, env):
    print 'Status: ';
    
  def configure(self, env):
    print 'Configure: ';

if __name__ == "__main__":
  DemoControl().execute()
