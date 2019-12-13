#!/usr/bin/env bash

rm dist/*
python setup.py sdist

pip install twine
twine upload dist/*