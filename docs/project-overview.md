# L3 Telecom System — Visão Geral do Projeto

## 1. O que é
ERP interno da **L3 Telecom** ("Infraestrutura e Tecnologia"), empresa de telecom e fibra óptica.
Centraliza administração, RH, obras, estoque, frotas e financeiro em um único sistema, com
acesso restrito por perfil. Objetivo: sistema **profissional, duradouro e com visual próprio**.

## 2. Stack
| Camada | Tecnologia |
|---|---|
| Frontend / app | Reflex (Python), ambiente virtual em `.venv` |
| Backend / banco / API | Xano (pasta `xano/`) |
| Integração externa | API oficial do WhatsApp Business Platform (relatórios de obra) |
| Agentes de IA | AGENTS.md, CLAUDE.md, skills do Reflex, OpenSpec |

## 3. Identidade visual
- Cores da logo: **preto, laranja/amarelo e branco**
- Logo exibida no topo após o login (arquivos em `assets/`)
- Fontes chamativas, porém dentro de um padrão empresarial

## 4. Usuários e perfis
| Perfil | Acesso |
|---|---|
| Dono | Todas as telas, incluindo Financeiro |
| Coordenador | RH e Obras |
| Administrativo | Telas administrativas; lança gastos (NFs) |
| RH | Somente telas de RH |

## 5. Módulos
1. **Autenticação e perfis** — login, controle de acesso por perfil.
2. **Visão geral** — dashboard filtrado por perfil.
3. **Administração** — funcionários (cadastro, editar/desativar), lista de presença
   (nomes + obras para onde foram enviados), relatório de presença.
4. **RH** — registro de ponto, solicitação/aprovação de férias, avisos, colaboradores.
5. **Obras** — cadastro (cliente, endereço, responsável, datas, situação, foto de capa),
   lista de tarefas com quantidades para medir avanço, e-mail ao chegar a 100%,
   registro do que foi feito e do que falta.
6. **Relatórios diários por WhatsApp (IA)** — ver seção 6.
7. **Estoque** — materiais e movimentações.
8. **Frotas** — veículos e controle da frota.
9. **Financeiro (somente dono)** — gastos e entradas, dashboard; o administrativo registra os gastos.

## 6. Funcionalidade principal de Obras: relatórios diários via WhatsApp
- Responsáveis das **8 frentes de obra** enviam o relatório em linguagem natural pelo WhatsApp
  (canal atual mantido), via API oficial do WhatsApp Business Platform.
- A IA extrai: início/término, local, presentes, fiscal, serviços executados e não executados,
  pendências e justificativas.
- Padroniza o relatório **mantendo a mensagem original**; **nunca inventa dados**.
- Classificação: **Completo / Incompleto / Necessita de revisão**.
- Correção manual pelo administrador; rastreabilidade completa (quem alterou, quando, valor anterior).
- Dashboard das 8 frentes: recebidos, pendentes, incompletos, em revisão, atividades,
  pendências e histórico.

## 7. Itens de avanço de obra (lista de tarefas)
Unidades remotas, quadro elétrico de via, cabo óptico 24FO, cabo óptico 12FO, CTO,
cabo fendido e suporte de cabo fendido. Cada item guarda quantidade prevista e executada.

## 8. Estrutura de pastas
```
L3telecom-system/
├── L3telecom_system/   # app Reflex (páginas, estados, componentes)
├── assets/             # logo e imagens
├── xano/               # backend (tabelas, API, funções, workspace)
├── docs/               # esta documentação
├── openspec/           # specs e mudanças (config.yaml)
├── rxconfig.py
└── requirements.txt
```

## 9. Decisões já tomadas
- Recomeço do zero com **Reflex + Xano** (substitui a versão anterior em Node.js + MySQL).
- Acesso restrito por perfil; Financeiro exclusivo do dono.
- Hospedagem ainda em discussão.

## 10. Ordem sugerida de entrega
1. Login + perfis
2. Funcionários e lista de presença
3. Obras (cadastro, tarefas, avanço)
4. Relatórios diários via WhatsApp + IA
5. RH
6. Financeiro
7. Estoque e Frotas
8. Dashboard geral

## 11. Pontos em aberto
- Hospedagem e domínio
- Provedor de e-mail para avisos (obra a 100%)
- Regras de backup e auditoria
- Campos exatos de Estoque e Frotas