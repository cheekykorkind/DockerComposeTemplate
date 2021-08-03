# FROM mcr.microsoft.com/dotnet/aspnet:5.0.7
# FROM mcr.microsoft.com/azure-functions/dotnet:3.0
# FROM mcr.microsoft.com/azure-functions/dotnet-isolated:3.0
# FROM mcr.microsoft.com/dotnet/sdk:5.0
FROM mcr.microsoft.com/dotnet/sdk:3.1

RUN apt update && apt upgrade -y && apt install -y curl wget gnupg sudo vim ca-certificates apt-transport-https lsb-release

# azure-cli install
ENV AZ_REPO=buster
RUN curl -sL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | tee /etc/apt/trusted.gpg.d/microsoft.gpg > /dev/null && \
    echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ ${AZ_REPO} main" | tee /etc/apt/sources.list.d/azure-cli.list

# azure-functions-core-tools-3 install
ENV DEBIAN_VERSION=10
RUN wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.asc.gpg && \
    mv microsoft.asc.gpg /etc/apt/trusted.gpg.d/ && \
    wget -q https://packages.microsoft.com/config/debian/${DEBIAN_VERSION}/prod.list && \
    mv prod.list /etc/apt/sources.list.d/microsoft-prod.list && \
    chown root:root /etc/apt/trusted.gpg.d/microsoft.asc.gpg && \
    chown root:root /etc/apt/sources.list.d/microsoft-prod.list

RUN apt update && apt install -y azure-functions-core-tools-3 azure-cli && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

ARG UID=1001
ARG GID=1001
ARG UNAME=1001

ENV UID ${UID}
ENV GID ${GID}
ENV UNAME ${UNAME}

RUN useradd --uid $UID --create-home --shell /bin/bash -G sudo,root $UNAME
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# ---------------------------------

WORKDIR /home/$USER/workspace
COPY . /home/$USER/workspace