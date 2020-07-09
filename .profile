alias git_http_proxy="git config --global http.proxy 'socks5://127.0.0.1:1080'"
alias git_https_proxy="git config --global https.proxy 'socks5://127.0.0.1:1080'"

# usage: git permission-reset
# https://stackoverflow.com/a/4408378
git config --global --add alias.permission-reset '!git diff -p -R --no-ext-diff --no-color | grep -E "^(diff|(old|new) mode)" --color=never | git apply'

