# Use the official Terraform image as a base (optional step)
FROM hashicorp/terraform:latest

# Specify the version of Terraform you want to install
ARG VERSION=1.3.9  # Replace this version with the desired version of Terraform

# Install dependencies and the desired version of Terraform
RUN wget https://releases.hashicorp.com/terraform/${VERSION}/terraform_${VERSION}_linux_amd64.zip && \
    unzip terraform_${VERSION}_linux_amd64.zip && \
    mv terraform /usr/local/bin/ && \
    rm terraform_${VERSION}_linux_amd64.zip

# Set the working directory inside the container
WORKDIR /workspace

# Set the default command to run Terraform
ENTRYPOINT ["terraform"]
