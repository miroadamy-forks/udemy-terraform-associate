# Load completion for terrafom docs
source <(terraform-docs completion bash)

alias tf="terraform "
complete -C '/usr/bin/terraform' terraform
complete -C '/usr/bin/terraform' tf
complete -C '/usr/local/bin/aws_completer' aws

# export PS1="┌─── \u @ ☁️ : \n│    \w \n└ "