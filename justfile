setup:
    export PYTHONPATH=$PWD/CARLA_0.9.6/PythonAPI
    export PYTHONPATH=$PWD/CARLA_0.9.6/PythonAPI/carla
    export PYTHONPATH=$PWD/deep_bisim4control/CARLA_0.9.6/PythonAPI/carla/dist/carla-0.9.8-py3.5-linux-x86_64.egg

run:
    python train.py --domain_name cheetah --task_name run --encoder_type pixel --decoder_type identity --action_repeat 4 --replay_buffer_capacity 250_000 --save_video --save_tb --work_dir ./log --seed 1
