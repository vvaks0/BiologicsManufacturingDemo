
#!/usr/bin/env python
from resource_management import *

# server configurations
config = Script.get_config()

install_dir = config['configurations']['control-config']['opentsdb.install_dir']
download_url = config['configurations']['control-config']['opentsdb.download_url']
