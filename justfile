set shell := ["bash", "-uc"]
set dotenv-load

getdeps:
    cd CARLA_0.9.6/
    wget http://carla-assets-internal.s3.amazonaws.com/Releases/Linux/CARLA_0.9.6.tar.gz 
    tar -xvzf CARLA_0.9.6.tar.gz
    rm CARLA_0.9.6.tar.gz
    cd ../

run:
    python train.py --domain_name cheetah --task_name run --encoder_type pixel --decoder_type identity --action_repeat 4 --replay_buffer_capacity 250_000 --save_video --save_tb --work_dir ./log --seed 1
