#!/bin/bash
# GitHub Pages Deployment Script
# Führe dieses Script aus um GameNight auf GitHub Pages zu deployen

echo "🚀 GameNight GitHub Pages Deployment"
echo ""

if [ -z "$1" ]; then
  echo "Usage: ./deploy.sh <github-username> [repo-name]"
  echo "Example: ./deploy.sh maxmustermann gamenight"
  exit 1
fi

USERNAME=$1
REPO=${2:-gamenight}
REPO_URL="https://github.com/$USERNAME/$REPO.git"

echo "📦 Repository: $REPO_URL"
echo ""
echo "Schritte:"
echo "1. Gehe zu https://github.com/new"
echo "2. Erstelle Repository: '$REPO' (Public, kein README)"  
echo "3. Führe dann aus:"
echo ""
echo "   git remote add origin $REPO_URL"
echo "   git push -u origin main"
echo ""
echo "4. Aktiviere GitHub Pages:"
echo "   Settings → Pages → Source: Deploy from branch → main → / (root)"
echo ""
echo "5. Deine App ist live unter:"
echo "   https://$USERNAME.github.io/$REPO/"
