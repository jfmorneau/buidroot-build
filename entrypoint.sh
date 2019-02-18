#!/bin/bash

# Add local user
# Either use the LOCAL_USER_ID if passed in at runtime or
# fallback

if [[ -z ${UID} ]] ; then
    UID=1000
fi

if [[ -z ${GID} ]] ; then
    GID=1000
fi

groupadd -g ${GID} user

useradd -d /home/user -u ${UID} -g $GID -m user

echo "Starting with UID:GID : ${UID}:${GID}"
export HOME=/home/user

cd $HOME

exec /usr/local/bin/gosu user "$@"
