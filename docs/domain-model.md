# Domain Model

> **Mercatvs ImportTrade**
>
> *Modelo de Domínio*

---

# 1. Introdução

O Modelo de Domínio descreve os conceitos fundamentais do Mercatvs ImportTrade, suas relações e regras de negócio.

Este documento segue os princípios do **Domain-Driven Design (DDD)** e estabelece a linguagem ubíqua (*Ubiquitous Language*) utilizada em toda a plataforma.

Seu objetivo é garantir que especialistas do negócio e desenvolvedores compartilhem a mesma compreensão sobre os conceitos do sistema.

---

# 2. Domínio Principal

O domínio do Mercatvs ImportTrade é o **Comércio Internacional**, com foco em:

* importação;
* formação de preços;
* análise tributária;
* logística internacional;
* simulação financeira;
* apoio à tomada de decisões.

---

# 3. Subdomínios

A plataforma é organizada nos seguintes subdomínios:

## Comercial

Responsável por clientes, fornecedores e negociações.

---

## Importação

Gerencia operações de importação.

---

## Tributação

Responsável pelos cálculos fiscais.

---

## Formação de Preços

Define o preço de venda.

---

## Logística

Gerencia transporte, seguros e armazenagem.

---

## Financeiro

Custos, margens, indicadores e fluxo financeiro.

---

## Inteligência de Mercado

Monitoramento de fornecedores, câmbio e tendências.

---

## Agentes Sensores

Monitoramento contínuo de fontes externas.

---

# 4. Linguagem Ubíqua

Os principais termos utilizados pelo sistema incluem:

* Empresa
* Usuário
* Produto
* NCM
* Fornecedor
* Cliente
* Importação
* Cotação
* Moeda
* Incoterm
* Frete
* Seguro
* Tributo
* Simulação
* Formação de Preço
* Margem
* Dashboard
* Relatório
* Agente Sensor

Esses termos deverão ser utilizados de forma consistente na documentação, no código-fonte e nas interfaces do sistema.

---

# 5. Entidades

As entidades representam objetos com identidade própria e ciclo de vida.

## Empresa

Representa uma organização usuária da plataforma.

---

## Usuário

Pessoa autorizada a acessar o sistema.

---

## Produto

Item comercializado ou importado.

---

## Fornecedor

Empresa responsável pelo fornecimento de produtos.

---

## Cliente

Destinatário das operações comerciais.

---

## Importação

Operação de aquisição internacional composta por produtos, fornecedores, custos, tributos e logística.

---

## Simulação

Representa um estudo de viabilidade ou cenário hipotético.

---

## Relatório

Documento consolidando informações para análise.

---

# 6. Objetos de Valor (Value Objects)

Objetos definidos por seus atributos, sem identidade própria.

* Endereço
* Moeda
* Câmbio
* Incoterm
* Peso
* Dimensões
* Percentual
* Alíquota
* Valor Monetário
* Prazo

---

# 7. Agregados

Os agregados garantem consistência transacional.

## Empresa

Raiz do agregado:

* Usuários
* Produtos
* Clientes
* Fornecedores

---

## Importação

Raiz do agregado:

* Produtos
* Custos
* Tributos
* Fretes
* Seguros
* Despesas

---

## Simulação

Raiz do agregado:

* Cenários
* Premissas
* Resultados

---

# 8. Serviços de Domínio

Serviços responsáveis por regras complexas.

* Motor Tributário
* Motor de Formação de Preços
* Motor Financeiro
* Motor Cambial
* Motor Logístico
* Motor de Simulações
* Motor de Indicadores
* Motor de Comparações

---

# 9. Agentes Sensores

Os Agentes Sensores são serviços especializados responsáveis por monitorar continuamente fontes externas.

Entre eles:

* Sensor Tributário
* Sensor Cambial
* Sensor Logístico
* Sensor Aduaneiro
* Sensor Legislativo
* Sensor Econômico
* Sensor de Mercado
* Sensor Tecnológico

Esses agentes alimentam a plataforma com informações atualizadas, permitindo análises mais precisas e reduzindo a necessidade de intervenção manual.

---

# 10. Eventos de Domínio

Exemplos de eventos relevantes:

* Empresa cadastrada
* Produto cadastrado
* Importação iniciada
* Simulação executada
* Preço calculado
* Cotação atualizada
* Alteração tributária identificada
* Novo fornecedor homologado
* Relatório gerado

---

# 11. Bounded Contexts

A plataforma é organizada em contextos delimitados:

* Cadastro
* Comercial
* Importação
* Tributação
* Logística
* Financeiro
* Precificação
* Inteligência de Mercado
* Administração

Cada contexto possui responsabilidades claras e interfaces bem definidas.

---

# 12. Regras Gerais

* Toda importação pertence a uma empresa.
* Produtos são identificados por NCM.
* Simulações não alteram dados operacionais.
* Todos os cálculos devem ser rastreáveis.
* Eventos relevantes devem ser auditáveis.
* Agentes Sensores não modificam diretamente regras de negócio; eles fornecem informações que são validadas antes de sua utilização.

---

# 13. Evolução do Modelo

O modelo de domínio será continuamente refinado conforme novos módulos forem incorporados.

A evolução deverá preservar a linguagem ubíqua, manter baixo acoplamento entre os contextos e garantir consistência das regras de negócio, permitindo que a plataforma cresça sem comprometer sua arquitetura.
