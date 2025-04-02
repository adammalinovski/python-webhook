from flask import Flask

app = Flask(__name__)

@app.route("/", methods=["GET"])
def home():
    return "Hello from webhook on git pushs"

if __name__ == "__main__":
    # Listen on all interfaces, on port 8080
    app.run(host="0.0.0.0", port=8080)
