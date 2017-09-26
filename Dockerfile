FROM debian:jessie
LABEL maintainer Jessica Frazelle <jess@docker.com>

# Install Gparted and its dependencies
RUN apt-get update && apt-get install -y \
    gparted \
    libcanberra-gtk-module \
    --no-install-recommends

# Autorun gparted
CMD ["/usr/sbin/gparted"]


