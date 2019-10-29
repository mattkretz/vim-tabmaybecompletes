# tabmaybecompletes.vim

This is a trivial plugin to make the Tab key more useful in INSERT mode. If the 
preceding character is an identifier character (`isident`), the Tab key press 
turns into CTRL-P and Shift-Tab into CTRL-N.

## Installation

    mkdir -p ~/.vim/pack/mattkretz/start
    cd ~/.vim/pack/mattkretz/start
    git clone https://github.com/mattkretz/vim-tabmaybecompletes

## License

Copyright © Matthias Kretz.  Distributed under the same terms as Vim itself.
See `:help license`.
