func! WordProcessor()

    " movement changes
    map j gj
    map k gk
    " formatting text
    setlocal formatoptions=1
    setlocal noexpandtab
    setlocal wrap
    setlocal linebreak
    " spelling and thesaurus
    setlocal spell spelllang=en_us
    "set thesaurus+=~/.config/nvim/thesaurus/mthesaur.txt
    "/home/ssa/.config/nvim/thesaurus
    set complete+=s
endfu
com! WP call WordProcessor()


