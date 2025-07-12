# Banco de Dados - Cafeteria

Este repositório contém a modelagem e o script SQL do banco de dados para uma cafeteria fictícia. O objetivo é armazenar informações sobre os produtos e os pedidos realizados pelos clientes.

## 📄 Arquivos

- **schema.sql:** Script para criação das tabelas `produtos` e `pedidos`, além da inserção de registros de exemplo.

## 🗄️ Estrutura das tabelas

- **produtos**

  - `id`: inteiro, chave primária, auto incremento
  - `nome`: texto, nome do produto
  - `preco`: decimal, preço do produto
  - `estoque`: inteiro, quantidade disponível

- **pedidos**
  - `id`: inteiro, chave primária, auto incremento
  - `data`: data e hora do pedido
  - `produto_id`: inteiro, chave estrangeira para `produtos(id)`
  - `quantidade`: inteiro, quantidade pedida
  - `cliente`: texto, nome do cliente
