
iterParego = [0:99];
iterSparego = [0:49];

for i=iterParego
 fname = sprintf('ParEGO_PopulationFile_%d.json',i);
 fnamex = sprintf('ParEGO_Pop_%d.out',i);
 f = load_data_json(fname);
 save(fnamex,'f','-ascii');
end

for i=iterSparego
 fname = sprintf('sParEGO_PopulationFile_%d.json',i);
 fnamex = sprintf('sParEGO_Pop_%d.out',i);
 f = load_data_json(fname);
 save(fnamex,'f','-ascii');
end


