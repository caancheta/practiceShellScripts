#!/bin/bash

for i in 1 2 3 4 5
do
  echo "Looping ... iteration #$i"
done

# prints:
# Looping ... iteration #1
# Looping ... iteration #2
# Looping ... iteration #3
# Looping ... iteration #4
# Looping ... iteration #5

for file in *
do
  echo "Processing $file"
done

for i in hello 1 * 2 goodbye
do
  echo "Looping ... i is set to $i"
done

# prints:
# Looping ... i is set to hello
# Looping ... i is set to 1
# Looping ... i is set to ${filename_in_curr_dir}
# Looping ... i is set to 2
# Looping ... i is set to goodbye

for i in hello 1 \* 2 goodbye
do
  echo "Looping ... i is set to $i"
done

# prints:
# Looping ... i is set to hello
# Looping ... i is set to 1
# Looping ... i is set to *
# Looping ... i is set to 2
# Looping ... i is set to goodbye
