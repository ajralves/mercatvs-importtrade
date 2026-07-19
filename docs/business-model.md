# Business Model

> **Mercatvs ImportTrade**
>
> *Modelo de Negócio*

---

# 1. Introdução

O **Mercatvs ImportTrade** é uma plataforma de inteligência empresarial voltada à análise de custos de importação, formação de preços, simulação tributária e apoio à tomada de decisões em operações de comércio internacional.

O sistema foi concebido para reduzir a complexidade inerente às importações, consolidando informações tributárias, logísticas, financeiras e cambiais em uma única plataforma.

---

# 2. Problema de Mercado

Empresas que importam produtos enfrentam desafios como:

* cálculos tributários complexos;
* constantes alterações na legislação;
* variação cambial;
* custos logísticos imprevisíveis;
* dificuldade na formação correta do preço de venda;
* excesso de planilhas e controles manuais;
* baixa previsibilidade financeira.

Esses fatores aumentam o risco operacional e podem comprometer a rentabilidade.

---

# 3. Proposta de Valor

O Mercatvs ImportTrade oferece uma plataforma única para:

* calcular custos completos de importação;
* formar preços de venda com base em regras configuráveis;
* simular cenários tributários e econômicos;
* comparar fornecedores nacionais e internacionais;
* analisar indicadores financeiros;
* gerar relatórios gerenciais para apoio à decisão.

O objetivo é transformar dados dispersos em informações confiáveis e acionáveis.

---

# 4. Público-Alvo

A plataforma é destinada a:

* importadores;
* distribuidores;
* indústrias;
* empresas de comércio exterior;
* tradings;
* marketplaces;
* consultorias tributárias;
* despachantes aduaneiros;
* pequenas e médias empresas;
* grandes empresas com operações internacionais.

---

# 5. Personas

## Pequeno Importador

Busca conhecer o custo real da importação antes de fechar um pedido, evitando surpresas financeiras.

## Gestor Financeiro

Necessita analisar margens, fluxo de caixa, custos e rentabilidade para apoiar decisões estratégicas.

## Analista de Comércio Exterior

Precisa consolidar informações tributárias, logísticas e documentais em um único ambiente.

## Diretor Comercial

Deseja definir preços competitivos preservando a margem de lucro.

---

# 6. Proposta Comercial

O Mercatvs ImportTrade poderá ser disponibilizado como:

* Software como Serviço (SaaS);
* licença corporativa (on-premises);
* solução personalizada para grandes empresas;
* APIs para integração com ERPs e sistemas legados.

---

# 7. Fontes de Receita

As possíveis fontes de receita incluem:

* assinaturas mensais;
* assinaturas anuais;
* licenciamento empresarial;
* implantação e treinamento;
* suporte técnico;
* consultoria especializada;
* desenvolvimento de integrações;
* módulos adicionais.

---

# 8. Diferenciais Competitivos

O projeto diferencia-se por:

* motor de cálculos em Rust para alto desempenho;
* arquitetura modular baseada em NestJS;
* interface web moderna em Vue.js;
* documentação técnica abrangente;
* simulações tributárias e financeiras;
* arquitetura escalável baseada em monorepo;
* APIs abertas para integração.

---

# 9. Estrutura Modular

A plataforma será organizada em módulos independentes:

* Cadastro de Empresas;
* Cadastro de Produtos;
* Cadastro de NCM;
* Fornecedores;
* Clientes;
* Importações;
* Motor Tributário;
* Formação de Preços;
* Simulações;
* Relatórios;
* Dashboard Executivo.

Essa abordagem facilita a evolução e a adoção gradual pelos clientes.

---

# 10. Modelo de Implantação

O sistema será compatível com diferentes cenários:

* ambiente local (on-premises);
* nuvem pública;
* nuvem privada;
* infraestrutura híbrida.

A implantação utilizará contêineres Docker para simplificar distribuição e atualização.

---

# 11. Estratégia de Crescimento

## Curto Prazo

* disponibilizar um MVP funcional;
* validar regras tributárias;
* disponibilizar simuladores de custos;
* implementar formação de preços.

## Médio Prazo

* integração com provedores de câmbio;
* dashboards analíticos;
* APIs públicas;
* integração com sistemas ERP.

## Longo Prazo

* inteligência artificial para recomendações;
* análise preditiva de custos;
* suporte a múltiplos países;
* suporte a múltiplas moedas;
* comparação internacional de fornecedores;
* ecossistema Mercatvs para comércio internacional.

---

# 12. Indicadores de Sucesso

O sucesso da plataforma poderá ser acompanhado por indicadores como:

* redução do tempo para formação de preços;
* redução de erros em cálculos tributários;
* aumento da margem operacional dos clientes;
* diminuição de retrabalho;
* tempo médio para simulação de cenários;
* número de integrações realizadas;
* satisfação dos usuários.

---

# 13. Riscos e Estratégia de Mitigação

O ambiente de comércio internacional é altamente dinâmico e está sujeito a alterações constantes.

Os principais fatores que podem impactar as operações são:

* alterações na legislação tributária;
* mudanças nas políticas de importação e exportação;
* variações cambiais;
* oscilações nos custos logísticos;
* alterações em tarifas alfandegárias;
* mudanças nos Incoterms;
* alterações em acordos comerciais internacionais;
* indisponibilidade temporária de serviços externos;
* mudanças em APIs públicas e privadas.

Para reduzir esses riscos, o **Mercatvs ImportTrade** adota uma arquitetura baseada em **Robôs Sensores**, componentes especializados responsáveis pelo monitoramento contínuo das diversas fontes de informação utilizadas pelo sistema.

Cada robô possui responsabilidades específicas e opera de forma independente, permitindo detectar alterações, validar informações e atualizar automaticamente a base de conhecimento da plataforma.

Entre os robôs previstos estão:

* **Sensor Tributário** — monitora alterações em impostos, NCM, regimes tributários e normas fiscais.
* **Sensor Cambial** — acompanha cotações de moedas e indicadores financeiros.
* **Sensor Logístico** — monitora custos de frete, disponibilidade de rotas e prazos de transporte.
* **Sensor Aduaneiro** — acompanha mudanças em procedimentos e regulamentações aduaneiras.
* **Sensor Legislativo** — identifica publicações de leis, decretos, portarias e instruções normativas relevantes.
* **Sensor Econômico** — acompanha indicadores macroeconômicos que possam impactar custos e preços.
* **Sensor de Mercado** — coleta informações sobre fornecedores, preços internacionais e tendências de mercado.
* **Sensor Tecnológico** — monitora integrações, APIs e serviços utilizados pela plataforma.

Os dados coletados pelos Robôs Sensores passam por processos de validação antes de serem incorporados ao sistema, garantindo maior confiabilidade e rastreabilidade das informações.

Essa arquitetura reduz a dependência de atualizações manuais, melhora a capacidade de adaptação às mudanças do ambiente de negócios e permite que o Mercatvs ImportTrade mantenha suas regras de cálculo, indicadores e simulações continuamente alinhados às condições reais do mercado.


---

# 14. Visão de Longo Prazo

O Mercatvs ImportTrade foi concebido para evoluir além de um sistema de cálculo de custos. A proposta é consolidar uma plataforma de inteligência para comércio internacional, capaz de integrar informações tributárias, financeiras, logísticas e estratégicas em um único ambiente.

No futuro, a plataforma poderá incorporar recursos de análise preditiva, inteligência artificial, integração com ERPs, monitoramento cambial em tempo real, gestão de fornecedores globais e apoio avançado à tomada de decisões, tornando-se uma solução completa para empresas que atuam em importação e comércio exterior.
