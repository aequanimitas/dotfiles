source ~/.functions.sh
source ~/.profile
source ~/.bashrc
source ~/.bash_alias
source ~/.bash_alias_local

# {{{
# Node Completion - Auto-generated, do not touch.
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
# }}}

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export PATH=/usr/local/sbin:/Users/hectoravenido/.rbenv/shims:/Users/hectoravenido/.rbenv/bin:/Users/hectoravenido/usr/local/share/npm/bin:/Users/hectoravenido/.rbenv/shims:/usr/local/bin:/usr/local/mysql/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/X11/bin:/usr/local/go/bin
