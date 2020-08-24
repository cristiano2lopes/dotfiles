#!/usr/bin/env python

import os
import logging

files_list = [("ctags", ".ctags"),
              ("gitconfig", ".gitconfig"),
              ("my_gitignore", ".my_gitignore"),
              ("zshrc", ".zshrc"),
              ("zshenv", ".zshenv"),
              ("my-zsh", ".my-zsh"),
              ("vimrc", ".vimrc"),
              ("psqlrc", ".psqlrc"),
              ("bat", ".config/bat"),
              ("starship", ".config/starship.toml"),
              ("vim", ".vim")]

for s, d in files_list:
    src = os.path.abspath(s)
    dest = os.path.expanduser(os.path.join('~', d))
    try:
        os.symlink(src, dest)
    except OSError as e:
        logging.warning(
            "{} already exists, removing and linking".format(dest)
        )
        os.remove(dest)
        os.symlink(src, dest)

    logging.info("Linked {}->{}".format(src, dest))
