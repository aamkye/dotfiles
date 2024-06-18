# dotfiles

Dotfiles repository with ansible automation and single point of configuration in system.

[![pre_commit](https://github.com/aamkye/dotfiles/actions/workflows/pre_commit.yml/badge.svg)](https://github.com/aamkye/dotfiles/actions/workflows/pre_commit.yml)

> [!IMPORTANT]
> __This repository uses the [Conventional Commits](https://www.conventionalcommits.org/).__
>
> For more information please see the [Conventional Commits documentation](https://www.conventionalcommits.org/en/v1.0.0/#summary).

> [!IMPORTANT]
> __This repository uses the [Pre-Commit](https://pre-commit.com/).__
>
> Please be respectful while contributing and after cloning this repo install the pre-commit hooks.
>
> ```bash
> > pre-commit install --install-hooks -t pre-commit -t commit-msg
> ```
>
> For more information please see the [Pre-Commit documentation](https://pre-commit.com/).

> [!IMPORTANT]
> __This repository uses the [MISE](https://github.com/jdx/mise).__
>
> This repo has specified tool versions in the `.mise.toml` file. To install the required tools, run the following command:
>
> ```bash
> > mise install
> ```
>
> For more information please see the [MISE documentation](https://github.com/jdx/mise).

## To install

```shell
> mkdir ${HOME}/.dotfiles
dotfiles > stow -v -S -t ${HOME} .
```
