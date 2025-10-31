#!/bin/bash

# 1. Список всех файлов и их типов ---
echo "Список файлов и их типов в текущей директории:"
for item in *; do
    if [ -d "$item" ]; then
        echo "$item — каталог"
    elif [ -f "$item" ]; then
        echo "$item — файл"
    elif [ -L "$item" ]; then
        echo "$item — символическая ссылка"
    else
        echo "$item — другой тип"
    fi
done

echo

# Проверка наличия файла, переданного как аргумент
if [ -z "$1" ]; then
    echo "Ошибка: не указан файл для проверки."
    echo "Использование: $0 имя_файла"
    exit 1
fi

if [ -e "$1" ]; then
    echo "Файл '$1' существует."
else
    echo "Файл '$1' не найден."
fi

echo

# Вывод имени и прав доступа каждого файла 
echo "Информация о файлах (имя и права доступа):"
for item in *; do
    if [ -e "$item" ]; then
        perms=$(ls -ld "$item" | awk '{print $1}')
        echo "$item — $perms"
    fi
done
