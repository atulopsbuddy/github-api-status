# app.py

from flask import Flask
import requests

app = Flask(__name__)

@app.route("/")
def index():
    r = requests.get("https://api.github.com")
    return f"GitHub API status: {r.status_code}"

if __name__ == "__main__":
    app.run(debug=True)
