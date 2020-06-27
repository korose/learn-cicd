from flask import Flask

app = Flask(__name__)

@app.route("/")
def index():
    return "Welcome To Index Page."

@app.route("/hi/")
def who():
    return "Who are you?"

@app.route("/hi/<username>")
def greet(username):
    return f"Hi There, {username}!"

if __name__ == "__main__":
    app.run(host='0.0.0.0')
