#!/bin/bash
echo -n "Please input the first integer: "
read arg1



echo -n "Please input the second integer: "

read arg2


echo $arg1 $arg2

# remainder=`expr $first % $second`

calculateGCD ()
{
    first=$1
    second=$2

    if [[ $first -le $second ]]
    then
        little=$first
        great=$second
    else
        little=$second
        great=$first
    fi

    echo $little $great

    GCD=$little


    # if [ "$GCD"x == "0"x ]
    if [[ $GCD -eq 0 ]]
    then
        echo "0 divisor !"
        exit 1
    fi

    while [[ $little -gt 0 ]]
    do
        GCD=$little
        # little=`expr $great % $little`
        little=$(($great % $little))
        great=$GCD
        echo "--  " $little
    done

    echo -n -e "GCD:  " $GCD
    echo "       "

}

calculateGCD $arg1 $arg2
