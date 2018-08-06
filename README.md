# ZSH


## Installation

clone this project into $HOME/.zsh

```sh
git clone git@bitbucket.org:witooh/zsh.git ~/.zsh
```

Install zsh

```sh
brew install zsh
```

Install oh-my-zsh

```sh
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chmod 777 ~/.zshrc
```

Add custom zsh in `~/.zshrc`

```sh
...
...

source ~/.zsh/.zshrc
```

## Notes
- Use `~/.localrc` to custom load before start loading .zsh
- Each `completion.zsh` will run after every .zsh loaded


