#!/bin/bash
tmux kill-session -t mass
tmux new-session -s mass -d
tmux new-window -c ~/source/etcd -n etcd 'bash run.sh; read'
tmux new-window -c ~/source/mongo -n mongo 'mongod --dbpath=/data/mongo > log.txt ; read'
tmux new-window -c ~/source/redis -n redis 'redis-server ~/source/redis/6379.conf --protected-mode no; read'
tmux new-window -c ~/source/ngrok/bin -n ngrok './ngrok -config=ngrok.cfg -proto=tcp 3101 read'
tmux new-window -c ~/source/catlikecoding -n omnisharp1 'mono ~/source/omnisharp-server/OmniSharp/bin/Debug/OmniSharp.exe; read'
#tmux new-window -c ~/source/gts/tr -n omnisharp2 '~/source/omnisharp-server/OmniSharp/bin/Debug/OmniSharp.exe; read'

tmux attach-session -t mass
