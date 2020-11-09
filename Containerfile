FROM fedora:33
WORKDIR /root
RUN dnf install -y git pipenv python3.8 libglvnd-glx unzip && dnf clean all
RUN pipenv install --python 3.8 tensorflow pillow scipy matplotlib opencv-python
RUN rm -rf /root/.cache /tmp/*
RUN mkdir work
WORKDIR /root/work
CMD ["/usr/bin/bash"]
