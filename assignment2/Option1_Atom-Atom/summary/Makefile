SHELL=/bin/bash
summary/all.tex: gen
	echo '\summaryRule{r\_\{0\}}{\summaryRuleSpan{out/001_r_0_10300000}{out/001\_r\_0\_10300000}}{\summaryRuleSpan{out/002_r_0_11300100}{out/002\_r\_0\_11300100}}{\summaryRuleCombined{out/003_r_0_combined}{out/003\_r\_0\_combined}}{out/004_r_0_constraints.tex}' >> summary/all.tex
	echo '\summaryRule{r\_\{1\}}{\summaryRuleSpan{out/006_r_1_10300000}{out/006\_r\_1\_10300000}}{\summaryRuleSpan{out/007_r_1_11300100}{out/007\_r\_1\_11300100}}{\summaryRuleCombined{out/008_r_1_combined}{out/008\_r\_1\_combined}}{out/009_r_1_constraints.tex}' >> summary/all.tex
summary.pdf: summary/all.tex
	/mnt/Shared/jlandersen/shared/bin/../bin/mod_post --mode compileSummary
include summary/MakefileImpl
include summary/MakefileDep
include summary/MakefileAllTarget
include summary/MakefileClean
