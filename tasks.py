from celery import Celery

app = Celery('tasks', broker='amqp://admin:mypass@rabbit:5672', backend="amqp://")

@app.task
def add(x, y):
    return x + y