# Contributing Guide

> **Mercatvs ImportTrade**
>
> *Guia de Contribuição*

---

# Bem-vindo

Obrigado pelo interesse em contribuir com o **Mercatvs ImportTrade**.

Nosso objetivo é construir uma plataforma moderna, confiável e bem documentada para análise de custos de importação, formação de preços e inteligência aplicada ao comércio internacional.

Toda contribuição é bem-vinda, seja ela relacionada ao desenvolvimento de software, documentação, testes, arquitetura ou regras de negócio.

---

# Princípios

As contribuições devem seguir os seguintes princípios:

* qualidade antes de velocidade;
* documentação contínua;
* código limpo;
* simplicidade;
* modularidade;
* baixo acoplamento;
* alta coesão;
* foco no domínio do negócio;
* respeito entre os colaboradores.

---

# Antes de Contribuir

Leia os seguintes documentos:

* README.md
* docs/vision.md
* docs/business-model.md
* docs/software-specification.md
* docs/domain-model.md
* docs/software-architecture.md
* CODE_OF_CONDUCT.md
* SECURITY.md

Esses documentos apresentam a visão do projeto, os requisitos, o modelo de domínio, a arquitetura e as diretrizes de colaboração.

---

# Fluxo de Desenvolvimento

O fluxo de contribuição segue as etapas abaixo:

1. Faça um **Fork** do repositório.
2. Crie uma *branch* para sua contribuição.
3. Desenvolva a funcionalidade ou correção.
4. Atualize a documentação, quando necessário.
5. Adicione ou atualize os testes automatizados.
6. Verifique se todos os testes foram aprovados.
7. Envie um **Pull Request** para revisão.

---

# Estratégia de Branches

Utilize nomes descritivos para as *branches*.

## Funcionalidades

```text
feature/nome-da-funcionalidade
```

Exemplo:

```text
feature/pricing-engine
```

---

## Correções

```text
fix/descricao-do-problema
```

Exemplo:

```text
fix/tax-calculation
```

---

## Documentação

```text
docs/nome-do-documento
```

---

## Refatoração

```text
refactor/modulo
```

---

## Testes

```text
test/modulo
```

---

# Padrão de Commits

O projeto utiliza o padrão **Conventional Commits**.

Exemplos:

```text
feat: add pricing engine
```

```text
fix: correct ICMS calculation
```

```text
docs: update software architecture
```

```text
refactor: simplify tax service
```

```text
test: add pricing engine tests
```

```text
chore: update dependencies
```

---

# Padrões de Código

As contribuições devem respeitar os padrões adotados pelo projeto.

## Backend

* NestJS
* TypeScript
* Prisma
* Fastify

---

## Frontend

* Vue.js
* TypeScript
* Bootstrap

---

## Motor de Cálculo

* Rust
* N-API

---

# Documentação

Toda funcionalidade relevante deve possuir documentação correspondente.

Dependendo da alteração, pode ser necessário atualizar:

* README.md
* software-specification.md
* domain-model.md
* software-architecture.md
* documentação da API
* documentação do banco de dados

A documentação faz parte do produto e deve evoluir junto com o código.

---

# Testes

Novas funcionalidades devem incluir testes automatizados sempre que aplicável.

Os testes poderão abranger:

* testes unitários;
* testes de integração;
* testes de desempenho;
* testes de regressão.

Contribuições que reduzam a cobertura de testes poderão ser rejeitadas.

---

# Pull Requests

Ao abrir um Pull Request:

* descreva claramente o problema solucionado;
* informe a solução adotada;
* cite os requisitos relacionados, quando houver;
* mantenha o escopo da alteração o mais específico possível;
* responda aos comentários da revisão de código de forma objetiva e respeitosa.

Pull Requests muito grandes poderão ser solicitados para divisão em alterações menores.

---

# Revisão de Código

Todo Pull Request será analisado considerando:

* aderência aos requisitos;
* qualidade da implementação;
* clareza do código;
* impacto na arquitetura;
* cobertura de testes;
* atualização da documentação;
* conformidade com este guia.

A aprovação depende da análise dos mantenedores do projeto.

---

# Arquitetura

As contribuições devem preservar os princípios arquiteturais definidos pelo projeto:

* arquitetura modular;
* separação de responsabilidades;
* baixo acoplamento;
* alta coesão;
* Domain-Driven Design (DDD);
* SOLID;
* Clean Architecture;
* Clean Code.

Alterações que comprometam esses princípios poderão ser recusadas.

---

# Agentes Sensores

Os módulos relacionados aos **Agentes Sensores** devem ser desenvolvidos de forma independente e desacoplada.

Cada agente deve possuir:

* responsabilidade única;
* interfaces bem definidas;
* testes automatizados;
* documentação própria;
* mecanismos de monitoramento e registro de eventos.

---

# Segurança

Nunca envie ao repositório:

* senhas;
* chaves privadas;
* tokens de acesso;
* credenciais;
* arquivos `.env` contendo dados sensíveis.

Caso identifique uma vulnerabilidade, siga o procedimento descrito em **SECURITY.md**.

---

# Comunicação

Discussões sobre novas funcionalidades, arquitetura ou mudanças significativas devem ocorrer antes da implementação, utilizando as ferramentas de comunicação definidas pelo projeto.

Isso evita retrabalho e garante alinhamento entre os colaboradores.

---

# Licença

Ao contribuir com este projeto, você concorda que seu código será disponibilizado sob a mesma licença adotada pelo Mercatvs ImportTrade.

---

# Agradecimentos

Agradecemos a todos que dedicam seu tempo para melhorar o Mercatvs ImportTrade.

Cada contribuição, seja uma correção, uma melhoria de documentação, uma nova funcionalidade ou uma sugestão de arquitetura, fortalece a plataforma e beneficia toda a comunidade.
