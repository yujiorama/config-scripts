# vi: ai et ts=4 sw=4 sts=4 expandtab fs=shell

PATH=$(echo $PATH | tr ':' '\n' | grep -v -e '^$' | grep -v -e 'nodejs' | tr '\n' ':')

if [[ -d "${HOME}/scoop/apps/nodejs/current" ]]; then
    PATH=${PATH}:${HOME}/scoop/apps/nodejs/current/bin
    PATH=${PATH}:${HOME}/scoop/apps/nodejs/current
fi

if ! which node >/dev/null 2>&1; then
    return
fi

if ! which npm >/dev/null 2>&1; then
    return
fi

echo "node: $(node --version)"
echo "npm: $(npm --version)"
