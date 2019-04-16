#!/usr/bin/env bash
main() {
    rm -rf public
    mkdir public
    mkdir public/assets

    cp src/firebase.json public/
    cp src/favicon/* public/
    cp -R src/assets public
    GOGC=off ./bin/tmplgen -from=src/templates -to=public all
}

main
