alias custom-ls='ls -lasS | awk "{if(NR==1){c1=length(\$1);c6=length(\$6)} printf \"%*s %s %s %s %*s %s %s %s %s\\n\", c1, \$1, \$2, \$3, \$4, c6, \$6, \$7, \$8, \$9, \$NF}"'

