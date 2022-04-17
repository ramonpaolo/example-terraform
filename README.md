# Exemplo do uso do Terraform

## Para que serve o Terraform?
O Terraform é um IaC(Infrastructure as Code/Infraestrutura como Código), que permite você criar a infraestrutura de um servidor, com código, ao invés de ter que ir na Web UI/Console para criar manualmente a máquina.
Isso providencia uma maior velocidade para os devs, pois o código já fica salvo no PC, ficando assim, mais fácil editar a configuração de um servidor, tanto como criar e apagar um.

## Como aprender mais?
Eu estou estudando pela documentação oficial do Terraform, no qual achei bem didático, e possui vídeos(em inglês) de aulas gratuitas, fazendo conexão com AWS, GCP, Azure, Oracle Cloud entre outras.

[Documentação Terraform aqui](https://learn.hashicorp.com/tutorials/terraform/aws-destroy?in=terraform/aws-get-started)

## Como rodar esse projeto?
Após ter baixo tudo certinho o Terraform, basta executar os seguintes commando:

##### Ops: Lembresse de que você tem que ter o AWS CLI configurado no seu computador para esse projetinho funcionar

---

Primeiro de tudo, execute os comandos abaixos para baixar o projeto:
```bash
# Clone o repositório
$ git clone https://github.com/ramonpaolo/example-terraform

#Entre na pasta
$ cd example-terraform
```

Esse commando irá ler os arquivos .tf do diretório atual que você está, e irá baixar todos os plugins definitos no bloco "terraform"
```bash
$ terraform init
```

Após isso, execute o comando:

```bash
$ terraform apply
```
ou
caso deseje setar um nome próprio, execute o comando:
```bash
$ terraform apply -var 'instance_name=OutroNome'
```
Esse comando irá aplicar o seu código, como uma infraestrutura na AWS. Tanto que após você ver que a criação foi feita com sucesso no terminal, basta ir no console da AWS e lá você verá a sua intância rodando.

---

# Arquivos gerados pelo Terraform

Após estar tudo ok, será gerado alguns arquivos no seu diretório, entre eles, o arquivo "terraform.tfstate" no qual terá em JSON, dados dos recursos/serviços que você criou na AWS, através do código, junto com o IP público da máquina entre outras várias informações.

# Ok, agora como faço para destruir?
Basta rodar o comando:
```bash
$ terraform destroy
```