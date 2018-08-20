#!/bin/bash

# reset/cleanup
rm -f result.txt
rm -f Ouroboros.class

# optionally watch the result.txt file with "tail -f result.txt"
while true; do
	rm -f Ouroboros.class
	javac Ouroboros.java
	rm -f Ouroboros.java
	java Ouroboros 2>> result.txt 1>> Ouroboros.java
done
