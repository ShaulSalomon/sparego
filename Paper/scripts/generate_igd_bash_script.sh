for i in {0..99..1}; do ../../igd/Release/igd 2 reference_population_robust_PF_P2.out ParEGO_Pop_$i.out >> IGD_ParEGO.txt; done

for i in {0..49..1}; do ../../igd/Release/igd 2 reference_population_robust_PF_P2.out sParEGO_Pop_$i.out >> IGD_sParEGO.txt; done

