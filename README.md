# An efficient gene regulatory network inference algorithm for early Drosophila melanogaster embryogenesis

## Reference

In submission.

## Download

```
git clone https://github.com/hmatsu1226/GRN_linearRD
cd GRN_linearRD
```
Or download from "Download ZIP" button and unzip it.

##### Usage
```
Rscript GRN_linearRD.R <Input_file> <Output_file1> <Output_file2> <s>
```

* Input_file : G x S matrix of expression data, where G is the number of gene, S is the number of position
* Output_file1 : Inferred W.
* Output_file2 : Inferred A (-W*W).
* s : The size of small space step (delta s).


##### Example of running SCODE
```
Rscript GRN_linearRD.R data/data_dm.txt W_dm.txt A_dm.txt 0.001
```

## Dataset
The smoothed gap gene expression data.
The original expression data is downloaded from SuperFly (http://superfly.crg.eu).
#### data/data_dm.txt
The smoothed gap gene data of Drosophila melanogaster.
#### data/data_ca.txt
The smoothed gap gene data of Clogmia albipunctata.

## License
Copyright (c) 2017 Hirotaka Matsumoto
Released under the MIT license

