#!/bin/bash

# Проверяем, установлены ли переменные окружения
if [ -z "$HISTFILE" ] || [ -z "$HISTFILESIZE" ]; then
  echo "Ошибка: Переменные окружения HISTFILE и HISTFILESIZE не установлены."
  exit 1
fi

# Определяем имя выходного файла
output_file="history_info.txt"

# Экспортируем информацию в файл
echo "Путь до файла истории команд: $HISTFILE" > "$output_file"
echo "Максимальный размер файла истории команд: $HISTFILESIZE" >> "$output_file"

echo "Информация о истории команд экспортирована в файл: $output_file"

exit 0