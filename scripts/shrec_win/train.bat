@echo off
python train.py ^
 --dataroot C:/Users/jonat/Documents/GitHub/CustomMesh/datasets/datasets/shrec_16 ^
 --name shrec16 ^
 --ncf 64 128 256 256 ^
 --pool_res 600 450 300 180 ^
 --norm group ^
 --resblocks 1 ^
 --flip_edges 0.2 ^
 --slide_verts 0.2 ^
 --num_aug 20 ^
 --niter_decay 100