pandoc $(cat toc.txt) --lua-filter=fix-links.lua -f markdown+pipe_tables+grid_tables+raw_html -o 'The Complete Suicide Manual.html'
pandoc 'The Complete Suicide Manual.html' \
    --defaults=config_epub.yaml \
    --resource-path=. \
    -o 'The Complete Suicide Manual.epub'
