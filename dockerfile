FROM jupyterhub/jupyterhub:4.0.2

RUN python3 -m pip install jupyterlab dockerspawner jupyterhub-nativeauthenticator
RUN apt-get update && apt-get install -y docker.io
# ARG USERNAME=admin
# ARG GROUPNAME=admin
# ARG UID=1000
# ARG GID=1000
# RUN groupadd -g $GID $GROUPNAME && \
#     useradd -m -s /bin/bash -u $UID -g $GID $USERNAME &&\
#     echo $USERNAME:$USERNAME | chpasswd 

# RUN git clone https://github.com/jupyterhub/nativeauthenticator.git

# RUN pip install -e nativeauthenticator/