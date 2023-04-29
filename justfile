set shell := ["bash", "-uc"]
set dotenv-load

run:
    python train.py --domain_name cheetah --task_name run --encoder_type pixel --decoder_type identity --action_repeat 4 --replay_buffer_capacity 250_000 --save_video --save_tb --work_dir ./log --seed 1
