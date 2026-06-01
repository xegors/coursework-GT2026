$pdf_mode = 1;                     # build PDF with pdflatex/xelatex/lualatex
$pdf_previewer = "sioyek %O %S";   # use sioyek to open the PDF
$dvi_previewer = '';               # disable any DVI previewer
$preview_continuous_mode = 0;      # don't auto-start previewers for DVI

sub asy {return system("asy -o '$_[0]' '$_[0]'");}
add_cus_dep("asy","eps",0,"asy");
add_cus_dep("asy","pdf",0,"asy");
add_cus_dep("asy","tex",0,"asy");
push @generated_exts, "pre", "%R-[0-9]*.pdf", "%R-[0-9]*.prc", "%R-[0-9]*.tex", "%R-[0-9]*.out", "%R-[0-9]*.pbsdat", "%R.pbsdat", "%R-[0-9]*.eps", "%R-*.asy"
