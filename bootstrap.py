#!/usr/bin/env python

import os
import logging

files_list = [
    ("ctags", ".ctags"),
    ("gitconfig", ".gitconfig"),
    ("my_git_conf", ".my_git_conf"),
    ("zshrc", ".zshrc"),
    ("zshenv", ".zshenv"),
    ("my_zsh", ".my_zsh"),
    ("vimrc", ".vimrc"),
    ("psqlrc", ".psqlrc"),
    ("bat", ".config/bat"),
    ("vim", ".vim"),
    ("gpg-agent.conf", ".gnupg/gpg-agent.conf"),
]

for s, d in files_list:
    src = os.path.abspath(s)
    dest = os.path.expanduser(os.path.join("~", d))
    try:
        os.symlink(src, dest)
    except OSError as e:
        logging.warning(f"{dest} already exists, removing and linking")
        os.remove(dest)
        os.symlink(src, dest)

    logging.info("Linked {src}->{dest}")
