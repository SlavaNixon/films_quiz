# Magic Ball


- [О приложении](#about)
- [Установка](#getting_started)
- [Использование](#usage)

## О приложении <a name = "about"></a>

Это консольное приложение на Ruby, которое задает вопросы о том, кто является режисером случайно выбранного из списка фильма.

Всего задается 3 вопроса, за каждый из которых можно получить 3 балла.

Приложение подойдет для компании друзей, чтобы посоревноваться, кто больше отгадает фильмов.

## Установка <a name = "getting_started"></a>

Чтобы запустить данное приложение Вам понадобится Ruby интерпретатор.
Установить его можно [отсюда](https://rubyinstaller.org/).

## Использование <a name = "usage"></a>

Чтобы использовать данное приложение откройте консоль в выбранной директории и напишите
```
ruby main.rb
```

Чтобы пополнить список вопросов, достаточно загрузить файл с расширеннием `.txt` в папку `data`.

Файл обязательно должен быть следущей структуры:

* Первая строчка: название фильма без кавычек
* Вторая строчка: полное имя автора
* Третья строчка: год издания фильма
