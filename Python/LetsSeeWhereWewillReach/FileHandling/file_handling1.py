import json

with open('devpy.json','r') as op_file:
    js = json.load(op_file)

from pprint import pprint
pprint(js)

#You can write a Python dictionary as a JSON file by using the json.dump method.

with open('devpy.json','w') as op_file:
    policy = json.dump(policy,op_file)

#library for parsing YAML files in Python is PyYAML.

import yaml

with open ('devpy.yaml','r') as op_file):
    po = yaml.safe_load(op_file)

pprint(po)

# You can also save Python data to a file in YAML format:

with open("lala.yaml","w") as f:
    yaml.dump(lala,f)


