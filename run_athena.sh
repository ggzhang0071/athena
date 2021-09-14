
dataset_name=aishell

python examples/asr/timit/local/prepare_data.py examples/asr/timit/data/TIMIT examples/asr/timit/data

python  athena/cmvn_main.py examples/asr/$dataset_name/configs/mpc.json examples/asr/$dataset_name/data/all.csv

python -m pdb athena/main.py examples/asr/timit/configs/mtl_transformer_sp_101.json

python athena/inference.py examples/asr/timit/configs/mtl_transformer_sp_101.json



