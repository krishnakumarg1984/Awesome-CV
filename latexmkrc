push @generated_exts, "acn";
push @generated_exts, "acr";
push @generated_exts, "alg";
push @generated_exts, "auxlock";
push @generated_exts, "bbl";
push @generated_exts, "blg";
push @generated_exts, "brf";
push @generated_exts, "cb";
push @generated_exts, "cb2";
push @generated_exts, "fdb_latexmk";
push @generated_exts, "fof";
push @generated_exts, "glg-abr";
push @generated_exts, "glo-abr";
push @generated_exts, "gls-abr";
push @generated_exts, "glstex";
push @generated_exts, "ist";
push @generated_exts, "loa";
push @generated_exts, "log";
push @generated_exts, "lot";
push @generated_exts, "mtc*";
push @generated_exts, "mypyg";
push @generated_exts, "nav";
push @generated_exts, "nlg";
push @generated_exts, "nlo";
push @generated_exts, "nls";
push @generated_exts, "nmo";
push @generated_exts, "out.ps";
push @generated_exts, "ptc";
push @generated_exts, "run.xml";
push @generated_exts, "slg";
push @generated_exts, "snm";
push @generated_exts, "spl";
push @generated_exts, "syg";
push @generated_exts, "syi";
push @generated_exts, "synctex*";
push @generated_exts, "synctex.gz";
push @generated_exts, "tar.gz";
push @generated_exts, "tdo";
push @generated_exts, "thm";
push @generated_exts, "upa";
push @generated_exts, "upb";
push @generated_exts, "xdy";
push @generated_exts, "xmpdata";
push @generated_exts, "xmpi";
push @generated_exts, 'glo', 'gls', 'glg';


$pdf_mode = 5;
$xelatex = "xelatex --shell-escape %O %S";
$xdvipdfmx = "xdvipdfmx -z 0 -o %D %O %S";
$dvi_mode = 0;
$postscript_mode = 0;

$ENV{'TZ'}='Europe/London';
@default_files = ('coverletter.tex');

push @file_not_found, '^Package .* No file `([^\\\']*)\\\'';

ensure_path( 'TEXINPUTS', './custom_cls_sty_files//' );

# https://tex.stackexchange.com/questions/464295/latexmk-with-xelatex-and-pdfx-does-not-converge
$hash_calc_ignore_pattern{'timestamp'} = '^';
