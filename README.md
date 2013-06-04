myvim
=================
My new custom vim config

Installation
----------------------

1. Clone the config somewhere on your hard drive

        git clone git://github.com/grosgg/myvim.git --recurse-submodules

2. Link your .vim to your new config folder

        ln -s myvim/ .vim
        ln -s myvim/vimrc .vimrc

3. Install the plugins through vundle

        vim +BundleInstall +qall

4. Install exuberant-ctags

        sudo apt-get install exuberant-ctags

5. Install PEAR and php5-dev

        sudo apt-get install pear
        sudo apt-get install php5-dev

6. Install phpmd and its dependencies

        sudo pear channel-discover pear.phpmd.org
        sudo pear channel-discover pear.pdepend.org
        sudo pear install --alldeps phpmd/PHP_PMD

7. Install PHP_CodeSniffer (I disabled it by default in vimrc)

        sudo pear install PHP_CodeSniffer

8. Install "Inconsolata for Powerline" font located in fonts/
9. Voilà! You should be ready to go.

Usage
----------------------

1. In a new project:

        ctags-exuberant -f local.tags --languages=PHP -R

2. In Vim:

        :set tags=~/path/to/local.tags

Plugins
----------------------

* gmarik/vundle
* tpope/vim-fugitive.git
* scrooloose/nerdtree.git
* scrooloose/nerdcommenter.git
* Lokaltog/powerline.git
* ervandew/supertab.git
* tpope/vim-surround.git
* kien/ctrlp.vim.git
* fholgado/minibufexpl.vim.git
* joonty/vim-phpqa.git
* MarcWeber/vim-addon-mw-utils.git
* tomtom/tlib_vim.git
* honza/snipmate-snippets.git
* garbas/vim-snipmate.git
* taglist.vim
* php.vim
* phpcomplete.vim
