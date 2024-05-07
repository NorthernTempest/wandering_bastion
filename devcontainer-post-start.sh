#!/bin/bash

pip install -r requirements.txt
if [ -f "requirements.local.txt" ]; then
	pip install -r requirements.local.txt
fi
