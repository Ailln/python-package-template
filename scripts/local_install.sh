#!/usr/bin/env bash

# change package_name
pip uninstall package_name -y

python setup.py clean
python setup.py install
