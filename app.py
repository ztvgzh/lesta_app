from flask import Flask, jsonify
import redis
import os

app = Flask(__name__)

#Подключение к Redis (хост 'redis' — имя сервиса из docker-compose)
redis_host = os.getenv("REDIS_HOST", "redis")
redis_port = int(os.getenv("REDIS_PORT", 6379))
r = redis.Redis(host=redis_host, port=redis_port, db=0)

@app.route("/ping")
def ping():
    return jsonify({"status": "ok"})

@app.route("/count")
def count():
    visits = r.incr("counter")  #увеличивает значение ключа "counter"
    return jsonify({"visits": visits})

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
