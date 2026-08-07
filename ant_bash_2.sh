export CUDA_VISIBLE_DEVICES=1

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/qtcc/.mujoco/mujoco210/bin

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/nvidia

python CleanDiffuser/pipelines/diffuser_d4rl_mujoco.py planner_net='eqnet' mode='train' task='hopper-medium-expert-v2'

python CleanDiffuser/pipelines/diffuser_d4rl_mujoco.py planner_net='eqnet' mode='train' task='hopper-medium-replay-v2'

python CleanDiffuser/pipelines/diffuser_d4rl_mujoco.py planner_net='eqnet' mode='inference' task='hopper-medium-expert-v2'

python CleanDiffuser/pipelines/diffuser_d4rl_mujoco.py planner_net='eqnet' mode='inference' task='hopper-medium-replay-v2'