source "$HOME/.cargo/env"

alias rspam1="ssh -L 11334:localhost:11334 way1"
alias dg=dig

alias mx1log="ssh mx1 journalctl -xe -u tana -f"
alias mx2log="ssh mx2 journalctl -xe -u tana -f"

alias viewlog="ssh -L 8080:localhost:8080 backup"

export PATH=$PATH:/Users/vinh/Downloads/google-cloud-sdk/bin/:


alias k8stoken="kubectl -n kubernetes-dashboard get secret \$(kubectl -n kubernetes-dashboard get sa/admin-user -o jsonpath='{.secrets[0].name}') -o go-template='{{.data.token | base64decode}}'"
