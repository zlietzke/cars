#! /bin/bash
# cars.sh
# Zach Lietzke
# April 26, 2019

echo "" #for formatting

echo "type e to enter a new car."
echo "type l to list all cars."
echo "type q to exit the program."

read response

while [ $response != "q" ]
do 
	case "$response" in
		"e")
			echo "Enter in the make model and year of your car and I will store it."
			echo "Year: "
			read year
			echo "Make: "
			read make
			echo "Model: "
			read model;; 
		"l")
			echo "$year: $make: $model" >> My_old_cars
			sort My_old_cars;;
		"q")
			echo "adios";;
	esac
	if [ $response != "q" ]
	then	
		echo "" #formatting
		echo "Enter one of the options "e" to enter a new car."
		echo "type l to list all of the cars."
		echo "type q to exit the program"
		read response
		if [ $response == "q" ]
		then
			echo "adios"
			echo "" # for formatting
		fi
	fi
done


