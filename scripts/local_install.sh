#!/usr/bin/env bash

pip uninstall package_name -y

python setup.py clean
python setup.py install
