#!/bin/bash
# Start WhatsApp bridge in background via tmux
tmux kill-session -t whatsapp 2>/dev/null
tmux new-session -d -s whatsapp "$HOME/code/whatsapp-mcp/whatsapp-bridge-bin"
echo "WhatsApp bridge started in tmux session 'whatsapp'"
echo "To view logs: tmux attach -t whatsapp"
echo "To detach: Ctrl+B then D"
