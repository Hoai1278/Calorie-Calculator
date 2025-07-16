from flask import Flask, jsonify, request
import os

app = Flask(__name__)
@app.route("/")
def helloWorld():
    return "Hello World!"


@app.route("/predict", methods=["GET"])
def predict():
    return jsonify({"result":'12345'})


if __name__ == 'main':
    app.run(host='127.0.0.1', port=5000)