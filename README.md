# Viabilidade de Novos Cursos de Graduação EAD em TI

Estudo exploratório apoiado por Inteligência Artificial para identificar áreas da Tecnologia da Informação que apresentam evidências suficientes para avançar para estudos posteriores de viabilidade de novos cursos de graduação EAD.

## 🎯 Objetivo

Analisar tendências recentes do mercado, do trabalho e da formação em Tecnologia da Informação, com apoio de Inteligência Artificial, buscando identificar áreas com potencial para estudos posteriores de viabilidade de novos cursos de graduação EAD.

> **Importante:** este estudo não recomenda a implantação de cursos. Os resultados representam uma triagem documental destinada a orientar investigações posteriores.

## 🤖 Metodologia

A análise foi realizada com apoio do **NotebookLM** a partir de cinco fontes documentais da **ABES, IPEA, Softex e Sociedade Brasileira de Computação (SBC)**, abrangendo mercado de TI, mercado de trabalho, tendências tecnológicas, competências profissionais e formação superior.

O processo foi desenvolvido iterativamente por meio dos Prompts 0–6:

**Contextualização → Extração → Cruzamento → Auditoria → Triagem → Análise EAD → Síntese**

As respostas da IA foram revisadas criticamente e os problemas identificados em cada etapa foram registrados como **cicatrizes metodológicas**, utilizadas para refinar os prompts seguintes.

Os cinco documentos que constituíram o corpus utilizado no NotebookLM estão disponíveis na pasta [`fontes/`](fontes/), permitindo que o procedimento seja reproduzido e seus resultados confrontados. Por se tratar de uma ferramenta de IA generativa, a reprodução do método não pressupõe respostas textualmente idênticas.

📘 [Consultar o Miniguia de Estudo](docs/01-miniguia-estudo-viabilidade-cursos-ti-ead.pdf) — inclui a síntese do estudo, glossário e um conjunto de prompts reutilizáveis para apoiar futuras revisões sobre o tema.

🧠 [Consultar a Coleção de Prompts e Cicatrizes](docs/02-colecao-prompts-cicatrizes.pdf) — documenta os Prompts 0–6, os resultados obtidos, problemas identificados e refinamentos realizados durante o processo.

## 📊 Principais resultados

A triagem documental resultou em três grupos:

### Categoria A — Áreas que justificam estudos posteriores de viabilidade

- Inteligência Artificial
- Ciência de Dados
- Cibersegurança / Segurança da Informação
- Engenharia de Software
- Licenciatura em Computação / Formação Docente

### Categoria B — Áreas complementares ou transversais

- Computação em Nuvem
- Tecnologias Quânticas
- Computação Sustentável

### Categoria C — Não priorizadas neste conjunto documental

- Sistemas de Informação
- DevOps

➡️ [Consultar a matriz completa, as evidências, justificativas e limitações no Miniguia](docs/01-miniguia-estudo-viabilidade-cursos-ti-ead.pdf)

## 💡 Principais aprendizados

O projeto evidenciou que o uso de IA em pesquisa documental exige mais do que a elaboração de bons prompts. Foi necessário separar extração, análise e síntese; distinguir evidências específicas de evidências indiretas; controlar inferências; e evitar que tendências tecnológicas fossem automaticamente convertidas em propostas de cursos.

Os erros e excessos identificados durante o processo foram preservados como parte da metodologia e deram origem às **cicatrizes metodológicas**. A partir dos aprendizados do estudo, também foi elaborado um **conjunto de prompts reutilizáveis** para apoiar futuras atualizações das evidências, auditorias, reavaliações da triagem e novas sínteses.

➡️ [Consultar os Prompts 0–6 e suas cicatrizes](docs/02-colecao-prompts-cicatrizes.pdf)

➡️ [Consultar os prompts reutilizáveis no Miniguia](docs/01-miniguia-estudo-viabilidade-cursos-ti-ead.pdf)

## 📁 Estrutura do repositório

```text
FirstSteps_PowerBI_DIO/
│
├── README.md
├── docs/
│   ├── 01-miniguia-estudo-viabilidade-cursos-ti-ead.pdf
│   └── 02-colecao-prompts-cicatrizes.pdf
│
└── fontes/
    ├── 01-abes-mercado-brasileiro-software-2026.pdf
    ├── 02-ipea-mercado-trabalho-2026.pdf
    ├── 03-softex-industria-software-servicos-tic-2025.pdf
    ├── 04-sbc-grandes-desafios-computacao-2025-2035.pdf
    └── 05-sbc-grandes-desafios-educacao-computacao-2025-2035.pdf
```

As fontes, seus papéis no estudo e as respectivas referências bibliográficas estão documentados no [Miniguia de Estudo](docs/01-miniguia-estudo-viabilidade-cursos-ti-ead.pdf).

## 👩‍💻 Autoria

**Natasha Sophie Pereira**  
Setembro de 2026
