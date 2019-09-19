#!/bin/bash

# Declare indexed array
declare -a array0

# Initialize array0 with quoted values
array0[0]=0
array0[1]=1

# Declare another indexed array with no-quoted values
array1=(elem1_0 elem1_1)

# Display elems from both arrays with @

echo ${array0[@]}
echo ${array1[@]}

# Output: 0 1
#         elem1_0 elem1_1

# Display values from both arrays with *

echo ${array0[*]}
echo ${array1[*]}

# Output: 0 1
#         elem1_0 elem1_1

# Perform a for loop over both arrays and echo each elem displaying values with @

for i in "${array0[@]}"
do
echo "$i"
done

for i in "${array1[@]}"
do 
echo "$i"
done

# Output: 0 
#         1
#         elem1_0 
#         elem1_1

# Perform a for loop over both arrays and echo each elem displaying values with *

for i in "${array0[*]}"
do
echo "$i"
done

for i in "${array1[*]}"
do
echo "$i"
done

# Output: 0 1
#         elem1_0 elem1_1

# Print array1 indexes

for index in "${!array1[@]}"
do
echo "$index"
done

# Output: 0
#         1

# Print array0 size

echo "array0 contains ${#array0[@]} elements"

# Output: array0 contains 2 elements

# Add elements to both arrays

array0+=(2)
array1+=(elem1_2 elem1_3)

# Display elems from both arrays with @

echo ${array0[@]}
echo ${array1[@]}

# Output: 0 1 2
#         elem1_0 elem1_1 elem1_2 elem1_3

# Delete 3rd element of array1 and echo it's elememts and indexes

unset array1[2]
echo ${array1[@]}
echo ${!array1[@]}

# Output: elem1_0 elem1_1 elem1_3
#         0 1 3

