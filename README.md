# Flask app
Решение технического задания от Lesta Games

## Технологии
- [Python 3.9](https://hub.docker.com/_/python)
- [Redis](https://hub.docker.com/_/redis)

## Описание шагов выполнения ТЗ

1. Работала через Linux ubuntu в VMware Workstation.
2. Создала папку проекта - lesta и 3 файла: app.py, requirements.txt и Dockerfile:
![1](https://github.com/ztvgzh/lesta_app/blob/master/images/1.jpg)
3. При запуске контейнера столкнулась с проблемой "Running pip as root..", поэтому решила запустить программу в виртуальном окружении venv внутри контейнера (поэтому в докерфайле закоммечены верхние строчки).
4. Результат виден на следующих скринах:  
![2](https://github.com/ztvgzh/lesta_app/blob/master/images/2.jpg)
![3](https://github.com/ztvgzh/lesta_app/blob/master/images/3.jpg)
Успешно.
5. Запушила проект в удаленный репозиторий как коммит **First_task** и обновила содержимое файлов для второго задания:
![4](https://github.com/ztvgzh/lesta_app/blob/master/images/4.jpg)
6. Затем запустила docker-compose,  результат вы можете видеть на следующих скринах:
![5](https://github.com/ztvgzh/lesta_app/blob/master/images/5.jpg)
![6](https://github.com/ztvgzh/lesta_app/blob/master/images/6.jpg)
8. Запушила изменения как **Second_task**.
