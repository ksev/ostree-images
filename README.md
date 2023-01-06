# Ostree-images
My collection of Fedora Silverblue images

This repo is heavily inspired by the work in https://github.com/akdev1l/ostree-images and https://github.com/ublue-os.

But i wanted to do things slightly differently and having OS updates depend on randoms on the internet is eerie.

Base with:

```
sudo rpm-ostree rebase --experimental ostree-unverified-registry:ghcr.io/ksev/ostree-images/base:latest
```
```
sudo rpm-ostree rebase --experimental ostree-unverified-registry:ghcr.io/ksev/ostree-images/base-nv:latest
```
