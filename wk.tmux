#!/bin/bash

# 会话名称
SESSION_NAME="wk"

# 创建一个新的会话，但不附加到它
tmux new-session -d -s $SESSION_NAME

# 在会话中创建第一个窗口，并执行top命令
tmux rename-window -t 1 'dashboard'

# 创建第三个窗口，并执行其他命令
tmux new-window -t $SESSION_NAME:2 -n 'compile'

tmux new-window -t $SESSION_NAME:3 -n 'gdb'

# 切换到第一个窗口
tmux select-window -t $SESSION_NAME:1
