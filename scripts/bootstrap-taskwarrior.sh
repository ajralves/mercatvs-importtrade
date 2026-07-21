#!/usr/bin/env bash

set -euo pipefail

PROJECT="Mercatvs"

echo "=============================================="
echo " Mercatvs ImportTrade"
echo " Bootstrap do Backlog Taskwarrior"
echo "=============================================="

add_task() {
    local PRIORITY="$1"
    local TAGS="$2"
    local DESCRIPTION="$3"
    local PHASE="$4"

    if task rc.confirmation=no \
        project:$PROJECT status:pending description:"$DESCRIPTION" count >/dev/null 2>&1; then

        COUNT=$(task rc.confirmation=no \
            project:$PROJECT status:pending description:"$DESCRIPTION" count)

        if [ "$COUNT" != "0" ]; then
            echo "✓ Já existe: $DESCRIPTION"
            return
        fi
    fi

    ID=$(task add project:$PROJECT priority:$PRIORITY $TAGS "$DESCRIPTION" \
        | awk '/Created task/ {print $3}' | tr -d '.')

    task "$ID" annotate "Fase: $PHASE" >/dev/null

    echo "➜ Criada: $DESCRIPTION"
}

##################################################
# FASE 1
##################################################

echo
echo "== Governança =="

add_task H "+docs +governance +phase1" "Revisar README.md" "Governança"

add_task H "+docs +vision +phase1" "Revisar vision.md" "Governança"

add_task H "+docs +business +phase1" "Revisar business-model.md" "Governança"

add_task H "+docs +requirements +phase1" "Revisar software-specification.md" "Governança"

add_task H "+docs +ddd +phase1" "Revisar domain-model.md" "Governança"

add_task H "+docs +community +phase1" "Finalizar CONTRIBUTING.md" "Governança"

add_task H "+docs +community +phase1" "Finalizar CODE_OF_CONDUCT.md" "Governança"

add_task H "+docs +security +phase1" "Finalizar SECURITY.md" "Governança"

add_task H "+github +phase1" "Criar CODEOWNERS" "Governança"

add_task H "+github +phase1" "Criar PULL_REQUEST_TEMPLATE.md" "Governança"

add_task H "+github +phase1" "Criar Issue Templates" "Governança"

add_task H "+github +phase1" "Criar GitHub Actions" "Governança"

##################################################
# FASE 2
##################################################

echo
echo "== Arquitetura =="

add_task H "+architecture +phase2" "Escrever software-architecture.md" "Arquitetura"

add_task H "+architecture +phase2" "Criar Diagrama C1" "Arquitetura"

add_task H "+architecture +phase2" "Criar Diagrama C2" "Arquitetura"

add_task H "+architecture +phase2" "Criar Diagrama C3" "Arquitetura"

add_task M "+architecture +phase2" "Criar Diagrama C4" "Arquitetura"

add_task M "+architecture +phase2" "Criar ADRs" "Arquitetura"

##################################################
# FASE 3
##################################################

echo
echo "== Banco =="

add_task H "+database +phase3" "Modelar Banco" "Banco"

add_task H "+database +phase3" "Criar schema.prisma" "Banco"

add_task M "+database +phase3" "Criar Migrações" "Banco"

add_task M "+database +phase3" "Criar Seeds" "Banco"

##################################################
# FASE 4
##################################################

echo
echo "== Backend =="

add_task H "+nestjs +backend +phase4" "Criar API NestJS" "Backend"

add_task H "+nestjs +backend +phase4" "Configurar Fastify" "Backend"

add_task H "+nestjs +backend +phase4" "Configurar Prisma" "Backend"

add_task H "+nestjs +backend +phase4" "Implementar Auth" "Backend"

add_task M "+nestjs +backend +phase4" "Implementar RBAC" "Backend"

##################################################
# FASE 5
##################################################

echo
echo "== Rust =="

add_task H "+rust +engine +phase5" "Criar rust-engine" "Rust"

add_task H "+rust +engine +phase5" "Implementar N-API" "Rust"

add_task H "+rust +tax +phase5" "Motor Tributário" "Rust"

add_task H "+rust +pricing +phase5" "Motor de Precificação" "Rust"

add_task M "+rust +finance +phase5" "Motor Financeiro" "Rust"

add_task M "+rust +exchange +phase5" "Motor Cambial" "Rust"

##################################################
# FASE 6
##################################################

echo
echo "== Frontend =="

add_task H "+vue +frontend +phase6" "Criar Frontend" "Frontend"

add_task H "+vue +frontend +phase6" "Dashboard" "Frontend"

add_task H "+vue +frontend +phase6" "Login" "Frontend"

add_task M "+vue +frontend +phase6" "Cadastros" "Frontend"

add_task M "+vue +frontend +phase6" "Simulações" "Frontend"

##################################################
# FASE 7
##################################################

echo
echo "== Agentes =="

add_task H "+agents +phase7" "Sensor Tributário" "Agentes"

add_task H "+agents +phase7" "Sensor Cambial" "Agentes"

add_task H "+agents +phase7" "Sensor Legislativo" "Agentes"

add_task M "+agents +phase7" "Sensor Logístico" "Agentes"

add_task M "+agents +phase7" "Sensor Mercado" "Agentes"

add_task L "+agents +phase7" "Sensor Tecnológico" "Agentes"

##################################################
# FASE 8
##################################################

echo
echo "== Testes =="

add_task H "+tests +phase8" "Testes Unitários" "Testes"

add_task H "+tests +phase8" "Testes Integração" "Testes"

add_task M "+tests +phase8" "Testes Performance" "Testes"

add_task M "+tests +phase8" "Testes Segurança" "Testes"

##################################################
# FASE 9
##################################################

echo
echo "== Deploy =="

add_task H "+docker +phase9" "Docker" "Deploy"

add_task M "+docker +phase9" "Docker Compose" "Deploy"

add_task M "+kubernetes +phase9" "Kubernetes" "Deploy"

add_task L "+cloud +phase9" "Deploy Cloud" "Deploy"

##################################################
# FASE 10
##################################################

echo
echo "== MVP =="

add_task H "+release +mvp +phase10" "Preparar MVP" "Release"

add_task H "+release +mvp +phase10" "Versão 0.1" "Release"

add_task M "+release +phase10" "Publicação GitHub" "Release"

add_task M "+release +phase10" "Publicação Docker" "Release"

echo
echo "=============================================="
echo " Backlog atualizado com sucesso!"
echo "=============================================="

echo
echo "Comandos úteis:"
echo "  task next"
echo "  task project:$PROJECT"
echo "  task +phase1"
echo "  task +architecture"
echo "  task +rust"
echo "  task summary"
