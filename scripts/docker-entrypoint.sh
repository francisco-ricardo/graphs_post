#!/bin/sh

set -e

# Deal with ssh keys (only to run git from the container)
#cp -R /tmp/.ssh /root/.ssh
#chmod 700 /root/.ssh
#chmod 644 /root/.ssh/id_rsa.pub
#chmod 600 /root/.ssh/id_rsa

exec "$@"

# EOF
