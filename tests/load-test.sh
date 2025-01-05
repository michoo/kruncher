#!/bin/bash

set -B                  # enable brace expansion
for i in {1..10000}; do
  curl -X 'POST' -d '{"args":[1,2]}' 'http://localhost:5555/api/task/async-apply/tasks.add'
done
