#!/bin/bash
# Quick Start Script para Meta AI API

echo "🚀 Meta AI API - Quick Start"
echo "=============================="
echo ""

# Verificar se node_modules existe
if [ ! -d "node_modules" ]; then
    echo "📦 Instalando dependências..."
    npm install
fi

# Compilar se necessário
if [ ! -d "dist" ] || [ -z "$(ls -A dist)" ]; then
    echo "🔨 Compilando TypeScript..."
    npm run build
fi

echo ""
echo "✅ Tudo pronto!"
echo ""
echo "Para iniciar o servidor, execute:"
echo ""
npm run server
echo ""
echo "O servidor estará disponível em: http://localhost:3000"
echo ""
echo "Exemplos de uso:"
echo ""
echo "  # Health check"
echo "  curl http://localhost:3000/health"
echo ""
echo "  # Enviar prompt"
echo "  curl -X POST http://localhost:3000/api/prompt \\"
echo "    -H 'Content-Type: application/json' \\"
echo "    -d '{\"message\": \"Olá!\"}'"
echo ""
echo "Para ver mais exemplos:"
echo "  npm run examples"
echo ""
echo "Para documentação completa:"
echo "  cat API_DOCS.md"
echo ""
