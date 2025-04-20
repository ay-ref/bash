#!/bin/bash

usage() {
    echo "Usage: $0 {transform|process|producer|status}"
    exit 1
}

if [ "$#" -ne 1 ]; then
    echo "Error: Invalid number of arguments."
    usage
fi

case "$1" in
    transform)
        echo "Running transform..."
        python3 ./src/run/run.py transform >logs/transform.log 2>&1 &
        ;;
    process)
        echo "Running process..."
		python3 ./src/run/run.py process >logs/process.log 2>&1 &
        ;;
    producer)
        echo "Running producer..."
    	python3 ./src/run/run.py producer >logs/producer.log 2>&1 &
        ;;
	status)
        echo " --- Status ---"
    	ps aux | grep "python3 ./src/run/run.py" | grep -v grep
        ;;
    *)
        echo "Error: Unknown argument '$1'."
        usage
        ;;
esac
