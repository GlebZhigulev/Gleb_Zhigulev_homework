#!/bin/bash

# Вывод строки с префиксом "Hello, " 
say_hello() {
    name="$1"                         
    echo "Hello, $name!"
}

# Возвращает сумму двух чисел 
sum_numbers() {
    a="$1"                             
    b="$2"                             
    result=$((a + b))                  
    echo "$result"                     
}

echo "==================="
echo

# Вызов функции say_hello
say_hello "World"
say_hello "Gleb"

echo

# Вызов функции sum_numbers
num1=5
num2=7
sum=$(sum_numbers "$num1" "$num2")
echo "Сумма чисел $num1 и $num2 равна: $sum"