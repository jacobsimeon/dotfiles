Jacob's dotfiles
===================

(Heavily influenced, but pared down from [thoughtbot's dotfiles][tb-dotfiles]

Requirements
------------

Set zsh as your login shell:

    chsh -s $(which zsh)

Install
-------

Clone onto your laptop:

    git clone git://github.com/jacobsimeon/dotfiles.git ~/.dotfiles

Install [rcm](https://github.com/thoughtbot/rcm):

    brew tap thoughtbot/formulae
    brew install rcm

Install the dotfiles:

    rcup

This command will create symlinks for config files in your home directory.
Setting the `RCRC` environment variable tells `rcup` to use standard
configuration options:

* Exclude `README.md` which is part of the `dotfiles` repository but do not need
  to be symlinked in.

Update
------

From time to time you should pull down any updates to these dotfiles, and run

    rcup

to link any new files and install new vim plugins. **Note** You _must_ run
`rcup` after pulling to ensure that all files in plugins are properly installed,
but you can safely run `rcup` multiple times so update early and update often!
