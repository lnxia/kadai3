#!/bin/bash
# 16745201.sh:

ARGS=2
E_BADARGS=65

if [ $# -ne "$ARGS" ];
then
    echo "引数を二つ指定してください。"
    exit $E_BADARGS
fi

if [[ $1 =~ ^[0-9]*[1-9][0-9]*$  && $2 =~ ^[0-9]*[1-9][0-9]*$ ]]; 
then :
else
    echo "引数は正整数を入力してください。"
    exit $E_BADARGS
fi

function  gcd()
{

 dividend=$1
 divisor=$2

 remainder=1

 until [ "$remainder" -eq 0 ]
 do
  let "remainder = $dividend % $divisor"
  dividend=$divisor
  divisor=$remainder
 done

}

gcd $1 $2
echo "GCD of $1 and $2 = $dividend";
exit 0
 
