export ZSH=$HOME/.zsh

autoload -U colors
colors

setopt PROMPT_SUBST

if [[ -a ~/.localrc ]]
then
  source ~/.localrc
fi

# all of zsh files
typeset -U config_files
config_files=($ZSH/**/*.zsh)

# load PATH
for file in ${(M)config_files:#*/path.zsh}
do
  source $file
done

# load everything except path
for file in ${${config_files:#*/path.zsh}}
do
  source $file
done

# load completion
for file in ${(M)config_files:#*/completion.zsh}
do
  source $file
done

unset config_files

