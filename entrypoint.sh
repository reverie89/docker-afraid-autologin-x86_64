#!/bin/bash
if [ ! -f /config/__init__.py ]; then
        touch /config/__init__.py
fi

if [ ! -f /config/settings.py ]; then
        cp /default_settings.py /config/settings.py
fi

python /app.py
