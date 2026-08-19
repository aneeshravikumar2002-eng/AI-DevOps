from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return """
    <html>
        <head>
            <title>AI DevOps Risk Advisor Demo</title>
        </head>
        <body style="font-family: Arial; text-align: center; margin-top: 100px;">
            <h1>AI DevOps Risk Advisor</h1>
            <p>Application deployed using GitHub Actions and Docker.</p>
        </body>
    </html>
    """

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
