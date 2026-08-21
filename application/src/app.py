import os
import logging
from flask import Flask, jsonify

app = Flask(__name__)

# Application configuration
APP_NAME = os.getenv("APP_NAME", "XQORA DevOps Demo")
APP_VERSION = os.getenv("APP_VERSION", "1.0.0")
APP_ENV = os.getenv("APP_ENV", "development")

# Logging configuration
logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s - %(levelname)s - %(message)s"
)


@app.route("/")
def home():
    logging.info("Home endpoint accessed")

    return jsonify({
        "application": APP_NAME,
        "message": "XQORA DevOps Demo Application is running",
        "environment": APP_ENV
    })


@app.route("/health")
def health():
    logging.info("Health check endpoint accessed")

    return jsonify({
        "status": "healthy"
    }), 200


@app.route("/version")
def version():
    logging.info("Version endpoint accessed")

    return jsonify({
        "application": APP_NAME,
        "version": APP_VERSION,
        "environment": APP_ENV
    })


if __name__ == "__main__":
    app.run(
        host="0.0.0.0",
        port=int(os.getenv("APP_PORT", 8080))
    )
