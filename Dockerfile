# Use the official HashiCorp Terraform image as a base
FROM hashicorp/terraform:latest

# Specify the version of Terraform to install (replace VERSION with your preferred version)
ARG VERSION=1.0.0
RUN wget https://releases.hashicorp.com/terraform/${VERSION}/terraform_${VERSION}_linux_amd64.zip && \
    unzip terraform_${VERSION}_linux_amd64.zip && \
    mv terraform /usr/local/bin/

# Set the working directory
WORKDIR /workspace

# Set the default command to run Terraform
ENTRYPOINT ["terraform"]
