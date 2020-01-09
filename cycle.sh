rm -f Grammar.pm

perl -MParse::RecDescent - scmgrammar ScmToPerl::Grammar 

#perl -MParse::RecDescent -e 'Parse::RecDescent->Precompile({ -standalone => 1, }, "scmgrammar", "ScmToPerl::Grammar");'

#exit

mkdir -p ScmToPerl
mv Grammar.pm ScmToPerl

echo "Grammar built ..."

echo chompile

perl -I . ./scm2perl  t.scm

echo run
perl t.pl



