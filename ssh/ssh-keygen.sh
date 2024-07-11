#! /bin/bash

# creates a ssh key using ssh-keygen
# stores key in ~/.ssh

pwd="$(dirname "$(realpath ${BASH_SOURCE}[0])")"
ssh_dir="$HOME/.ssh"

if [ ! -d "$ssh_dir" ]; then
    mkdir -p "$ssh_dir" || { echo "Error: Could not create $ssh_dir. Check permissions."; exit 1; }
fi

if [ ! -w "$ssh_dir" ]; then
    echo "Error: Insufficient permissions to write to $ssh_dir."
    exit 1
fi

declare keyname="office_rsa_key"
declare keytype="rsa"

if [ $# -eq 2 ] ; then
	keyname="$1"
	keytype="$2"
else
	echo "Usage: two parameters required: keyname and keytype [rsa | dsa | ecdsa | ed25519]"
	exit
fi

# validate keyname exists (practice code)
if [[ -n $1 ]] ; then keyname="$1" ; fi

# validate keytype exists
if [[ -n $2 ]] ; then keytype="$2" ; fi
# check type: rsa, ecdsa, dsa, or ed25519 and adjust bit-length (if appropriate)
if [[ "$keytype" == "ecdsa" ]] ; then
	keytype+=" -b 521"
elif [[ "$keytype" == "rsa" ]] ; then
	keytype+=" -b 4096"
elif [[ "$keytype" == "dsa" ]] ; then
	keytype+=" -b 2048"
elif [[ "$keytype" == "ed25519" ]] ; then
	keytype="ed25519"
else
	echo "Invalid keytype.  Terminating request..."
	exit 1
fi

echo "$keytype"
exit
ssh-keygen -t "$keytype" -f "$ssh_dir/$keyname"
