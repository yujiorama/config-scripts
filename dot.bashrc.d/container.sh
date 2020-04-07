#!/bin/bash
pwgen() {
    if ! command -v docker >/dev/null 2>&1; then
        exit 1
    fi
    docker container run --rm sofianinho/pwgen-alpine "$@"
}

gibo() {
    if ! command -v docker >/dev/null 2>&1; then
        exit 1
    fi
    docker container run --rm simonwhitaker/gibo "$@"
}
dot() {
    if ! command -v docker >/dev/null 2>&1; then
        exit 1
    fi
    local infile outfile
    infile=$1
    outfile=$2
    docker container run --rm --mount type=bind,src=/"$(pwd)",dst=//work fgrehm/graphviz dot -Tpng -o//work/"${outfile}" //work/"${infile}"
}
dockviz() {
    if ! command -v docker >/dev/null 2>&1; then
        exit 1
    fi
    docker container run -it --rm -v /var/run/docker.sock:/var/run/docker.sock nate/dockviz "$@"
}
sslyze() {
    if ! command -v docker >/dev/null 2>&1; then
        exit 1
    fi
    docker container run -it --rm --network host nablac0d3/sslyze "$@"
}
