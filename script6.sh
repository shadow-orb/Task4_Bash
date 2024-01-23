#!/bin/bash

#here we get the domain and the iteration number
echo "input the domain file"
read domains

echo "input the number of iterations"
read iterations

#this function is used for enumeration
enumerate () {
	local input="$1"
	local output="$2"

	subfinder -dL "$input" -o "$output.subfinder"

	#here we sort our results
	cat "$output.subfinder" | sort -u > "$output"
   	rm "$output.subfinder"
}

#here we enumerate and do a loop for iterations
enumerate "$domains" "$output"

for ((i = 2; i <= iterations; i++)); do
    input="$output"
    output="iteration_$i.txt"
    enumerate "$input" "$output"
done

#here we count the number of results we aquired
num_of_subdomains=$(cat "$output" | wc -l)

#results
echo "subdomains have been saved in $output"
echo "the number of subdomains is $num_of_subdomains"

