#!/bin/bash

# 1. Чтение данных из файла input.txt
echo "Содержимое файла input.txt:"
cat input.txt
echo

# 2. Подсчет количества строк и запись результата в output.txt
wc -l < input.txt > output.txt
echo "Результат подсчета строк записан в output.txt"
echo

# 3. Попытка вызвать ls для несуществующего файла и запись ошибки в error.log
ls nonexistent_file 2> error.log
echo "Ошибки (если были) записаны в error.log"