#!/bin/bash

# Start Gunicorn processes
echo Starting Gunicorn.
gunicorn --reload --bind 0.0.0.0:3000 wsgi:application     