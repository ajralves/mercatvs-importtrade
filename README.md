# Mercatvs ImportTrade

<div align="center">

# Mercatvs ImportTrade

### Inteligência para Importação, Formação de Preços e Análise de Custos

*Uma plataforma moderna para análise tributária, precificação, simulação financeira e apoio à tomada de decisões em comércio internacional.*

---

**NestJS • Fastify • Rust • N-API • PostgreSQL • Vue.js • TypeScript**

</div>

---

# Sobre o Projeto

O **Mercatvs ImportTrade** é uma plataforma de inteligência empresarial destinada a empresas que atuam com importação, distribuição e comércio internacional.

Seu principal objetivo é transformar informações tributárias, financeiras, logísticas e cambiais em conhecimento para apoiar decisões estratégicas.

O sistema foi concebido para responder perguntas fundamentais do negócio:

* Quanto realmente custa importar um produto?
* Qual deve ser o preço de venda?
* Qual será minha margem líquida?
* Como uma mudança cambial impactará o lucro?
* Vale a pena importar ou comprar de um distribuidor nacional?
* Como diferentes cenários tributários afetam a rentabilidade?

---

# Objetivos

* Automatizar cálculos tributários.
* Reduzir erros humanos.
* Apoiar decisões estratégicas.
* Simular cenários econômicos.
* Facilitar a formação de preços.
* Melhorar a previsibilidade financeira.
* Disponibilizar indicadores para gestores.

---

# Principais Funcionalidades

* Cadastro de Produtos
* Cadastro de NCM
* Cadastro de Empresas
* Cadastro de Fornecedores
* Cadastro de Clientes
* Simulação de Importação
* Formação Inteligente de Preços
* Motor Tributário
* Dashboard Gerencial
* Relatórios
* Comparação entre Fornecedores
* Indicadores Financeiros
* APIs REST
* Integrações futuras com sistemas governamentais

---

# Arquitetura Tecnológica

## Frontend

* Vue.js
* TypeScript
* Vite
* Bootstrap

## Backend

* NestJS
* Fastify Adapter
* Prisma ORM

## Motor de Alto Desempenho

* Rust
* N-API

## Banco de Dados

* PostgreSQL

## Infraestrutura

* Docker
* Redis
* PNPM Workspace
* TurboRepo

---

# Arquitetura Geral

```text
               Vue.js

                  │

             NestJS API

                  │

      Módulos de Negócio

                  │

      Rust Calculation Engine

                  │

            PostgreSQL
```

---

# Estrutura do Projeto

```text
mercatvs-importtrade/

apps/
    api/
    frontend/

packages/
    rust-engine/
    sdk/
    shared/
    ui/

database/

docs/

docker/

scripts/

tests/
```

---

# Como ler este projeto

Para facilitar o entendimento da arquitetura e da evolução do sistema, recomenda-se a seguinte ordem de leitura da documentação:

### 1. README.md

Apresenta uma visão geral do projeto.

---

### 2. docs/vision.md

Descreve a visão do produto, sua missão e os objetivos estratégicos.

---

### 3. docs/business-model.md

Explica o problema de negócio, o público-alvo e a proposta de valor.

---

### 4. docs/software-specification.md

Apresenta todos os requisitos funcionais e não funcionais do sistema.

---

### 5. docs/software-architecture.md

Detalha a arquitetura completa, tecnologias adotadas e decisões de projeto.

---

### 6. docs/architecture/

Contém os diagramas do Modelo C4:

* Contexto
* Containers
* Componentes
* Código

---

### 7. docs/database/

Documentação completa do banco de dados.

---

### 8. docs/api/

Documentação das APIs REST e WebSocket.

---

### 9. docs/taxation/

Documentação do motor tributário.

---

### 10. docs/pricing/

Regras de formação de preços.

---

### 11. docs/logistics/

Fluxo de importação e custos logísticos.

---

### 12. ROADMAP.md

Planejamento da evolução do projeto.

---

# Roadmap Inicial

## MVP

* Cadastro de Produtos
* Cadastro de Empresas
* Cadastro de NCM
* Cadastro de Fornecedores
* Motor Tributário
* Formação de Preços
* Dashboard
* Relatórios

## Futuras Versões

* Inteligência Artificial
* Integração com ERP
* Atualização automática de câmbio
* Simulação tributária avançada
* Business Intelligence
* Comparação automática de fornecedores
* Gestão logística
* Integração com serviços governamentais

---

# Tecnologias

| Camada           | Tecnologia          |
| ---------------- | ------------------- |
| Frontend         | Vue.js + TypeScript |
| Backend          | NestJS              |
| Servidor HTTP    | Fastify             |
| Motor de Cálculo | Rust                |
| Integração       | N-API               |
| Banco de Dados   | PostgreSQL          |
| ORM              | Prisma              |
| Cache            | Redis               |
| Containers       | Docker              |
| Workspace        | PNPM                |
| Build            | TurboRepo           |

---

# Licença

Distribuído sob a licença **MIT**.

---

# Autor

**Alexandre Alves**

Tecnólogo em Análise e Desenvolvimento de Sistemas

GitHub: https://github.com/ajralves

---

# Contribuição

Contribuições são bem-vindas.

Leia primeiro:

* CONTRIBUTING.md
* CODE_OF_CONDUCT.md
* SECURITY.md

---

# Visão de Longo Prazo

O Mercatvs ImportTrade foi concebido para evoluir de uma plataforma de análise de custos de importação para um ecossistema completo de inteligência em comércio internacional.

A longo prazo, pretende integrar módulos de logística, compliance, gestão de fornecedores, análise preditiva, inteligência artificial, indicadores estratégicos e apoio à decisão, consolidando-se como uma solução robusta para empresas que atuam em importação e comércio exterior.
