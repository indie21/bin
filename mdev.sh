#!/bin/bash
tmux kill-session -t mass
tmux new-session -s mass -d
tmux new-window -c ~/source/etcd -n etcd 'bash run.sh; read'
tmux new-window -c ~/source/mongo/mongodb-linux-x86_64-3.4.2/bin -n mongo './mongod --dbpath=/home/kangge/source/mongo/data ; read'
tmux new-window -c ~/source/redis -n redis 'redis-server; read'
tmux new-window -c ~/source/mass2/trunk/UnityPrj -n omnisharp '~/source/omnisharp-server/OmniSharp/bin/Debug/OmniSharp.exe; read'
tmux attach-session -t mass
