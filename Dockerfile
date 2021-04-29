FROM ros:rolling-ros-base-focal

RUN DEBIAN_FRONTEND=noninteractive apt-get update -qqy \
 && DEBIAN_FRONTEND=noninteractive apt-get upgrade -qqy \
 && DEBIAN_FRONTEND=noninteractive apt-get install -qqy \
    ros-rolling-desktop \
    emacs \
    git \
    imagemagick \
    mesa-utils \
    net-tools \
    novnc \
    onboard \
    tigervnc-standalone-server \
    tigervnc-xorg-extension \
    terminator \
    x11-apps \
    xfce4 \
    wget \
    curl \
    python3-pip \
 && rm -rf /var/lib/apt/lists/* \
 && mkdir ~/.vnc \
 && echo "#!/bin/sh\nstartxfce4" > ~/.vnc/xstartup \
 && chmod +x ~/.vnc/xstartup \
 && pip3 install -U argcomplete \
 && curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

ENV PATH="/root/.cargo/bin:${PATH}"

# ADD assets /root/ && entrypoint.sh /
# RUN tar -xvf /root/nebula-linux-amd64.tar

RUN mkdir /root/bin && chmod +x entrypoint.sh 
CMD /entrypoint.sh
