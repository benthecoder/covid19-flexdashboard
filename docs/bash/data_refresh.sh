#!/bin/bash

echo "Updating the dashboard..."

Rscript -e "rmarkdown::render_site()"

if [[ "$(git status --porcelain)" != "" ]]; then
    git config --global user.name 'benthecoder'
    git config --global user.email 'benthecoder07@gmail.com'
    git add *
    git commit -m "Auto update dashboard"
    git push
fi
