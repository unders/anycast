#!/usr/bin/env bash
main() {
    rm -rf public
    mkdir public
    mkdir public/assets

    cp src/favicon/* public/
    cp -R src/assets/ public
    GOGC=off tmplgen -from=src/templates -to=public all
}

main
