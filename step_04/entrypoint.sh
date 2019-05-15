#!/bin/bash

RUN chmod 0600 /home/jkerai/.ssh/authorized_keys && chown jkerai:jkerai /home/jkerai/.ssh/authorized_keys

exec "$@"
