#! /bin/bash


printargs(){
	echo "No. of Args = $#"
}


args=""

for i in $(seq 1 100); do
	args="$args $i"
done

printargs $args

