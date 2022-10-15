# zsh-plenv

A zsh plugin for plenv based on the jenv plugin.

## Usage

To use it, install [`plenv`](https://github.com/tokuhirom/plenv) first.

Then clone this repository into the custom plugins directory as `plenv` of your
zsh plugin manager which is `$ZSH_CUSTOM`, the following is for
[Oh My Zsh](https://ohmyz.sh/) which is `~/.oh-my-zsh/custom/plugins`.

```bash
git clone https://github.com/TwoPizza9621536/zsh-plenv.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/plenv
```

Finally, add plenv to the plugins array of your zshrc file:

```bash
plugins=(... plenv)
```

## License

Under the MIT License with the following SPDX expression:

```text
SPDX-License-Identifier: MIT
```
