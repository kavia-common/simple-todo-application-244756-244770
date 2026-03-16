#!/bin/bash
cd /home/kavia/workspace/code-generation/simple-todo-application-244756-244770/todo_frontend
npm run build
EXIT_CODE=$?
if [ $EXIT_CODE -ne 0 ]; then
   exit 1
fi

