#!/bin/bash
tmux kill-session -t mass
tmux new-session -s mass -d
tmux new-window -c ~/source/etcd -n etcd 'bash run.sh; read'
tmux new-window -c ~/source/mongo -n mongo 'mongod --dbpath=/data/mongo ; read'
tmux new-window -c ~/source/redis -n redis 'redis-server; read'
tmux new-window -c ~/source/mass/trunk/UnityPrj -n omnisharp1 'mono ~/source/omnisharp-server/OmniSharp/bin/Debug/OmniSharp.exe; read'
tmux new-window -c ~/source/mass/trunk/UnityPrj -n omnisharp2 '~/source/omnisharp-server/OmniSharp/bin/Debug/OmniSharp.exe; read'
tmux new-window -c ~/source/ -n ngrok './ngrok tcp 3101; read'
tmux attach-session -t mass
