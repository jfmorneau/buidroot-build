FROM ubuntu:18.04
MAINTAINER Jean-Francois Morneau <jf@jfzone.net>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -qy update && apt-get -y install \
	bc \
	build-essential \
	cpio \
	curl \
	git \
	libssl-dev \
	libncurses5-dev \
	openssl \
	python \
	sudo \
	unzip \
	wget \
    rsync \
&& rm -rf /var/lib/apt/lists/*


RUN useradd -d /home/user -k /etc/skel -m user

RUN chown -R user:user /home/user

VOLUME /home/user

USER user

WORKDIR /home/user

CMD ["bash"]
