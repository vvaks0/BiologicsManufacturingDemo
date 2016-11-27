
#!/usr/bin/env python
from resource_management import *

# server configurations
config = Script.get_config()

install_dir = config['configurations']['control-config']['biodemocontrol.install_dir']
download_url = config['configurations']['control-config']['biodemocontrol.download_url']
