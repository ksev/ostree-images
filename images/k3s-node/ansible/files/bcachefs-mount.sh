#!/bin/bash

set -e

mount -t bcachefs /dev/sda:/dev/sdb:/dev/sdc /mnt/storage/
mount --bind /mnt/storage/Vault /var/share/Vault
mount --bind /mnt/storage/VaultRO /var/share/VaultRO
mount --bind /mnt/storage/Media /var/share/Media
mount --bind /mnt/storage/Downloads /var/share/Downloads
