# NeurIPS2019-Ablation

This is the final project of Group 59. We worked on Track 2: reproduce and modify the model, and we attended the neruIPS Reproduce Challenge 2019.
We submitted four .ipynb files and three .sh files by which you can replicate our ablation studies. Please also checkout https://github.com/ShannonAI/glyce where you can find the instructions and necessary folders to download (fonts and the pretrained chinese bert model). While reproducing our results, please change the path of the home directory, fonts, and the pretrained chinese bert model in the following files: the files we submitted, glyce/glyce/bin/run_bert_glyce_tagger.py, glyce/glyce/configs/glyce_bert.json, and any other relevant files in configs, utils, and bin. 
NER.ipynb
ner_glyce_bert.sh
CWS.ipynb
CWS.sh
POS_ablation.ipynb
POS_ablation.sh
janomeDataProcess.ipynb
Japanese*

* Japanese folder includes files used for Japanese POS tasks. Please replace the files downloaded from git with the files provided by us. 

Japanese books can be downloaded from https://www.aozora.gr.jp/. Simply unzip and extract the text file. Run janomeDataProcess notebook to process and obtain train, dev, and test files for POS tagging.

We also provide the url to our comet.ml.
https://www.comet.ml/yunfeichengy/551cws/view/
https://www.comet.ml/furiosah/ 


