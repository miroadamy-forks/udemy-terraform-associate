FROM gitpod/workspace-full

# install aws-cli v2 and terraform
RUN sudo curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
  && unzip awscliv2.zip \
  && sudo ./aws/install \
  && sudo apt-get update \
  && sudo apt-get install -y gnupg software-properties-common curl \
  && curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add - \
  && sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" \
  && sudo apt-get install terraform
  && curl -sSLo ./terraform-docs.tar.gz https://terraform-docs.io/dl/v0.16.0/terraform-docs-v0.16.0-$(uname)-amd64.tar.gz
  && tar -xzf terraform-docs.tar.gz
  && chmod +x terraform-docs
  && sudo mv terraform-docs /usr/bin/terraform-docs