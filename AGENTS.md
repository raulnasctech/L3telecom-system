# Projeto: L3 Telecom System (ERP interno)

## Contexto
ERP interno da L3 Telecom ("Infraestrutura e Tecnologia"), empresa de
telecom/fibra óptica. Objetivo: sistema profissional e duradouro.

## Stack
- Frontend: Reflex (Python), venv em `.venv`
- Backend/banco: Xano (pasta `xano/`)
- Identidade visual: preto, laranja/amarelo e branco (logo em `assets/`)

## Módulos
Administração, RH (ponto, férias, avisos), Obras (tarefas e avanço),
Estoque, Frotas e Financeiro (somente o dono).

## Perfis de acesso
- Dono: vê tudo
- Coordenador: RH e Obras
- Administrativo: telas administrativas e lançamento de gastos
- RH: apenas telas de RH

## Regras
- Código e comentários em português
- Nunca colocar tokens/chaves no código nem em arquivos versionados
- Antes de mexer em Reflex, consultar a skill `reflex-docs`