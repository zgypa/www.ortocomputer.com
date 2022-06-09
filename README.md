# Landing Page Ortocomputer

## Installazione

Prima cosa installare jekyll:

    gem install --user-install jekyll
    bundle config set --local path 'vendor/bundle'
    bundle install

## Costruisci site

Usa il Makefile. Vedi li per varie opzioni.

NB: per creare un sito statico, senza doverlo servire con jekyll, quello che ho visto da fare è semplicemente servire su localhost, e poi usare wget per clonare il sito in dist/. Infine faccio un rsync per fare il deploy sul server.
