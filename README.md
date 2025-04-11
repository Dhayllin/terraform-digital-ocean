Terraform Digital Ocean Droplet

Este projeto utiliza Terraform para criar uma instância (Droplet) na DigitalOcean e configurar o Docker nela automaticamente.

📦 O que este projeto faz?

Cria um Droplet na DigitalOcean

Instala Docker na máquina automaticamente

Prepara o Droplet para uso de containers

🛠️ Pré-requisitos

Antes de começar, você precisa ter instalado:

Terraform

Git

Uma conta na DigitalOcean

🚀 Como instalar o Terraform

Ubuntu / Debian

sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update
sudo apt install terraform

Windows / Mac

Siga o tutorial oficial: Install Terraform

📂 Como usar este projeto

1. Clone este repositório

git clone git@github.com:Dhayllin/terraform-digital-ocean.git
cd terraform-digital-ocean

2. Crie o arquivo terraform.tfvars

Crie um arquivo chamado terraform.tfvars no diretório do projeto, com o seguinte conteúdo:

do_token = "SEU_TOKEN_DA_DIGITALOCEAN"
ssh_key_id = "SEU_ID_DA_CHAVE_SSH"

do_token: Seu token da DigitalOcean (você pode criar um aqui).

ssh_key_id: O ID da chave SSH cadastrada na sua conta da DigitalOcean (necessário para acessar o droplet).

❗ Dica: Nunca envie seu terraform.tfvars para o GitHub.

3. Inicialize o Terraform

terraform init

4. Visualize o plano de execução

terraform plan

5. Aplique para criar o Droplet

terraform apply

Confirme com yes quando solicitado.

📜 Licença

Este projeto está sob a licença MIT. Veja o arquivo LICENSE para mais detalhes.

