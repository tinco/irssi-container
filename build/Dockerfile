FROM phusion/baseimage:0.9.9
MAINTAINER Tinco Andringa "tinco@phusion.nl"

# Force non-interactive installs
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y 

# Install packages
RUN apt-get install -y --no-install-recommends irssi tmux

# Clean-up apt
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*.5

# Add our services
ADD service /etc/service
RUN chmod a+x /etc/service/*/run

# Add our scripts
ADD scripts /sbin

# Run preparation scripts
RUN chmod a+x /sbin/prepare_user.sh
RUN /sbin/prepare_user.sh

# The init script
CMD ["/sbin/my_init"]