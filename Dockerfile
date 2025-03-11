# Use the official HashiCorp Terraform image as a base
FROM hashicorp/terraform:1.4.0

# Specify the version of Terraform to install (using latest stable version 1.4.0)
ARG VERSION=1.4.0

# This is redundant since we use hashicorp/terraform image with latest, but if needed you can specify specific version here:
# RUN wget https://releases.hashicorp.com/terraform/${VERSION}/terraform_${VERSION}_linux_amd64.zip && \
#     unzip terraform_${VERSION}_linux_amd64.zip && \
#     mv terraform /usr/local/bin/

# Set the working directory
WORKDIR /workspace

# Set the default command to run Terraform
ENTRYPOINT ["terraform"]
