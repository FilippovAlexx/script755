#!/bin/bash

# Имя файла для вывода результатов
output_file="output.txt"

# Поиск объектов с правами доступа 755 в корневой директории и запись их в файл
find / -perm 755 -exec ls -ld {} \; > "$output_file"

echo "Результаты сохранены в файл $output_file"