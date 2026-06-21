#compdef pfam_scan.pl
# Documentation: https://github.com/jlli6t/pfam_scan
# pfam_scan.pl - search protein sequences against Pfam HMM library

local ret=1

_arguments -s -S \
  '(- *)-h[display help message]' \
  '-dir+[directory location of Pfam data files]:dir:_files -/' \
  '-fasta+[input file in FASTA format]:file:_files' \
  '-outfile+[output file (default STDOUT)]:file:_files' \
  '-e_seq+[hmmscan E-value sequence cutoff]:evalue:' \
  '-e_dom+[hmmscan E-value domain cutoff]:evalue:' \
  '-b_seq+[hmmscan bit-score sequence cutoff]:bits:' \
  '-b_dom+[hmmscan bit-score domain cutoff]:bits:' \
  '-clan_overlap[show overlapping hits within clan member families]' \
  '-align[show HMM-sequence alignment for each match]' \
  '-as[predict active site residues for Pfam-A matches]' \
  '-json[write results in JSON format]:mode:(pretty)' \
  '-cpu+[number of parallel CPU workers]:n:' \
  '-translate[translate DNA input in six frames]:mode:(all orf)' && ret=0

return ret
