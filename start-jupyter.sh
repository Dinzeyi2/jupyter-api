#!/bin/bash

# Get port from environment variable (Railway sets this)
PORT=${PORT:-8888}

jupyter notebook \
    --ip=0.0.0.0 \
    --port=$PORT \
    --no-browser \
    --allow-root \
    --ServerApp.token='' \
    --ServerApp.password='' \
    --ServerApp.disable_check_xsrf=True \
    --ServerApp.allow_origin='*' \
    --ServerApp.root_dir='/app/notebooks' \
    --IdentityProvider.token=''