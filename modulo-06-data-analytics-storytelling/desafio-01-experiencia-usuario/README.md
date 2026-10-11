# Desafio 01 — Atualizando Relatório Financeiro com Foco na Experiência do Usuário

> **Módulo 06 — Data Analytics e Storytelling com Power BI**  
> [Voltar à Formação Power BI Analyst](../../README.md) · [Voltar ao Módulo 06](../README.md)

Projeto desenvolvido para o **primeiro desafio do Módulo 06 da Formação Power BI Analyst da DIO**. O objetivo foi aprimorar um relatório financeiro previamente construído, preservando sua capacidade analítica e concentrando as melhorias na **experiência do usuário (UX)**.

O ponto de partida foi o relatório criativo de referência disponibilizado pela professora. O trabalho envolveu reorganização dos visuais, padronização das páginas, melhoria do contraste, legibilidade, filtros, botões, indicadores e navegação.

## Objetivo e critérios do desafio

A proposta da atividade destaca os princípios de:

- **Posicionamento:** distribuição dos elementos segundo o fluxo natural de leitura;
- **Contraste:** diferenciação entre indicadores, controles, títulos e informações analíticas;
- **Proporção áurea e equilíbrio visual:** composição com hierarquia, áreas de destaque e assimetria controlada, sem rigidez matemática;
- **Segmentação:** agrupamento visual de informações relacionadas e uso de filtros;
- **Navegabilidade:** menus presentes nas três páginas e botões com comportamento visual de focalização e acionamento.

A professora propôs melhorias no relatório existente e liberdade para definir os estilos visuais dos botões.

## Solução desenvolvida

O arquivo Power BI contém **três páginas analíticas** e uma **página adicional de documentação do design**:

| Página | Conteúdo |
|---|---|
| **Sales — Relatório de Vendas** | Cartões de total de vendas e unidades vendidas, alternância interativa entre vendas por segmento e por produto, gráfico de área mensal e matriz de vendas por trimestre; segmentador de período e controle para limpar segmentações. |
| **Profit — Relatório de Lucro Detalhado** | Treemap do lucro por segmento, gráfico de radar do lucro por produto, árvore de decomposição por ano e país e gráfico de cascata por trimestre; segmentador de ano e controle de limpeza. |
| **Report — Relatório de Vendas Detalhado** | Evolução de vendas e lucro, matriz de lucro por trimestre e gráfico combinado de vendas e vendas brutas ao longo dos meses. |
| **Modelo UX — Guia visual** | Paleta de cores e exemplos dos componentes estruturais usados no redesenho. Trata-se de uma página de apoio, não de uma quarta página analítica exigida pelo enunciado. |

### Decisões de UX e de identidade visual

Foi criado um padrão visual reutilizável para as páginas: **barra lateral contínua**, canto superior em azul mais claro com o logotipo DIO, **cabeçalho branco**, título alinhado à esquerda e menus verticais de navegação. O botão da página ativa recebe destaque em turquesa, enquanto as setas inferiores ajudam a comunicar a sequência entre páginas.

Os filtros foram posicionados de maneira consistente no cabeçalho das páginas em que são necessários. Um ícone de borracha permite limpar as segmentações configuradas. Nos botões de alternância da página Sales, indicadores (*bookmarks*) controlam a exibição das visões por segmento e produto e a identificação visual da opção ativa.

A reformulação também incluiu:

- Remoção de elementos decorativos sem função analítica;
- Alinhamento de títulos e gráficos, com margens e espaçamentos uniformes;
- Redução de molduras e efeitos visuais excessivos;
- Organização dos dados em superfícies claras com contraste;
- Padronização de títulos e ordenação temporal dos meses e trimestres;
- Adequação de cores e rótulos dos gráficos;
- Dicas de ferramenta para detalhar os valores e complementar rótulos eventualmente abreviados.

### Paleta de cores

| Aplicação | Cor | Hexadecimal |
|---|---|---|
| Estrutura, totais e títulos | Azul profundo | `#101F54` |
| Série principal e identidade | Azul principal | `#2878C8` |
| Interação, destaque e comparações | Turquesa | `#18A6A0` |
| Redução/alerta quando aplicável | Coral | `#EF7667` |
| Fundo da página | Cinza-claro | `#F3F6FA` |
| Textos | Grafite | `#263238` |
| Painéis e cartões | Branco | `#FFFFFF` |
| Bordas discretas | Borda suave | `#DCE3ED` |
| Estados não ativos | Azul inativo | `#7180A6` |

A página **Modelo UX** documenta visualmente essas escolhas no próprio PBIX.

## Resultados e recursos de análise

A base financeira do relatório contém dados de vendas, lucro, produtos, segmentos, países e períodos de **2013 e 2014**. Na visão geral sem seleções restritivas, o relatório apresenta aproximadamente **118,73 milhões em vendas**, **1,13 milhão de unidades vendidas** e **16,89 milhões em lucro**.

No redesenho, foram preservados e aprimorados recursos como cartões, gráficos de barras, área, treemap, radar, cascata, árvore de decomposição, matrizes, segmentadores, botões e indicadores. A página Sales permite alternar dinamicamente a classificação de vendas por segmento ou por produto.

### Observações e limites de interpretação

- O **treemap** representa adequadamente áreas relativas de valores positivos, mas não é apropriado para comunicar prejuízos por meio de áreas negativas. Sua leitura deve ser complementada por visuais e valores detalhados.
- Os visuais de período utilizam nomes de meses como categorias agregadas; isso não equivale necessariamente a uma série contínua separada por ano.
- O botão de **limpar segmentações** atua sobre os segmentadores configurados; seleções feitas diretamente em gráficos ou matrizes têm comportamento próprio.
- O PDF e as imagens preservam a aparência das páginas, mas **não reproduzem as interações** do Power BI Desktop.

## Arquivos do projeto

A estrutura planejada segue o padrão do Módulo 05:

```text
modulo-06-data-analytics-storytelling/
├── README.md
└── desafio-01-experiencia-usuario/
    ├── README.md
    ├── dashboard/
    │   ├── DesafioM6-1.pbix
    │   └── relatorio-original-professora.pbix
    ├── export/
    │   └── DesafioM6-1.pdf
    └── images/
        ├── sales.png
        ├── profit.png
        ├── report.png
        └── modelo-ux.png
```

**Nota de publicação:** os arquivos binários (PBIX, PDF e PNG) serão disponibilizados nas subpastas indicadas; confirme sua presença antes de considerar esta publicação integralmente concluída. O arquivo original da professora é incluído somente como referência e para fins educacionais, preservando a atribuição de origem.

## Reprodução

Baixe o arquivo `DesafioM6-1.pbix` da pasta `dashboard/` após sua publicação e abra-o no **Power BI Desktop**. As páginas analíticas são **Sales**, **Profit** e **Report**; **Modelo UX** documenta a proposta de identidade visual. Algumas interações, inclusive botões e indicadores, precisam ser acionadas no modo de leitura ou com **Ctrl + clique** durante a edição.

## Aprendizados

- Aplicação de posicionamento, contraste, hierarquia e segmentação em dashboards;
- Criação de identidade visual coerente entre várias páginas;
- Navegação por botões, estados visuais e indicadores;
- Uso de filtros e dicas de ferramentas na exploração de dados;
- Revisão crítica da legibilidade e das limitações de cada visual;
- Documentação do processo de redesign e disponibilização de projeto editável.

## Autoria

**Natasha Sophie Pereira**

Outubro de 2026
