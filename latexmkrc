@default_files = ('main.tex');
$latex        = 'uplatex -synctex=1 -shell-escape -halt-on-error';
$latex_silent = 'uplatex -synctex=1 -shell-escape -halt-on-error -interaction=batchmode';
$bibtex = 'upbibtex';
$dvipdf = 'dvipdfmx %O -o %D %S';
$makeindex = 'mendex %O -o %D %S';
$pdf_mode = 3;
$clean_ext = "dvi nav snm synctex.gz vrb";

use File::Path qw(remove_tree);
add_hook('cleanup', sub {
    unlink 'example.out';
    remove_tree('_minted') if -d '_minted';
    return 0;
});
