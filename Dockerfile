# Use the official Terraform image as a base (optional step)
FROM ubuntu:latest

# Specify the version of Terraform you want to install
ARG TERRAFORM_VERSION

RUN apk add --no-cache wget unzip

# Install dependencies and the desired version of Terraform
RUN wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    mv terraform /usr/local/bin/ && \
    rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip

# Set the working directory inside the container
WORKDIR /terraform

# Set the default command to run Terraform
ENTRYPOINT ["terraform"]
