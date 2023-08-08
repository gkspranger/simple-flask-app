from flask import Flask

APP = Flask(__name__)


@APP.route("/")
def root():
    return "<h1>Hello, World!</h1>"


if __name__ == "__main__":
    APP.run(
        host="0.0.0.0",
        port=23456,
    )
