FROM amazonlinux:2

RUN \
  yum -y update \
  && yum -y install systemd procps openssh-server passwd sudo vim git wget unzip \
  && yum clean all \
  && cp -f /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

# check Terraform version : https://releases.hashicorp.com/terraform
RUN \
  cd /usr/local/src \
  && wget https://releases.hashicorp.com/terraform/0.12.9/terraform_0.12.9_linux_386.zip \
  && unzip terraform_0.12.9_linux_386.zip \
  && mv terraform /usr/local/bin/ \
  && export PATH=$PATH:/terraform-path/

ARG UID
ARG GID
ARG UNAME

ENV UID ${UID}
ENV GID ${GID}
ENV UNAME ${UNAME}

RUN useradd --uid ${UID} --create-home --shell /bin/bash -G wheel,root ${UNAME}
RUN echo '%wheel ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# Add a script to be executed every time the container starts.
COPY ./entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]