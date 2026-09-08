#!/bin/bash
chown -R ${whoami}:${whoami} ./../*
chmod 655 ./../*
chmod 755 ./podman-compose.yml