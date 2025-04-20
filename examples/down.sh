#!/bin/bash

usage() {
    echo "Usage: $0 {transform|process|producer}"
    exit 1
}

if [ "$#" -ne 1 ]; then
    echo "Error: Invalid number of arguments."
    usage
fi

case "$1" in
    transform)
        echo "Downing transform..."
        kill $(ps aux | grep -i "python3 ./src/run/run.py transform" | grep -v grep | awk '{print $2}')
        ;;
    process)
        echo "Downing process..."
		kill $(ps aux | grep -i "python3 ./src/run/run.py process" | grep -v grep | awk '{print $2}')
        ;;
    producer)
        echo "Downing producer..."
		kill $(ps aux | grep -i "python3 ./src/run/run.py producer" | grep -v grep | awk '{print $2}')
        ;;
	all)
	        echo "Downing all..."
			kill $(ps aux | grep -i "python3 ./src/run/run.py" | grep -v grep | awk '{print $2}')
	        ;;
    *)
        echo "Error: Unknown argument '$1'."
        usage
        ;;
esac
