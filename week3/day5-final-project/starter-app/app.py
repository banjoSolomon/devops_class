"""
Final Project Starter App
A Flask application with health check and Prometheus metrics.
Students can extend this with their own features.
"""

from flask import Flask, jsonify, request
from prometheus_client import Counter, Histogram, generate_latest, CONTENT_TYPE_LATEST
import time
import os

app = Flask(__name__)

# ─── Prometheus Metrics ─────────────────────────────────────
REQUEST_COUNT = Counter(
    "http_requests_total",
    "Total HTTP requests",
    ["method", "endpoint", "status"]
)

REQUEST_LATENCY = Histogram(
    "http_request_duration_seconds",
    "HTTP request latency in seconds",
    ["method", "endpoint"],
    buckets=[0.01, 0.025, 0.05, 0.1, 0.25, 0.5, 1.0, 2.5, 5.0]
)


@app.before_request
def start_timer():
    request._start_time = time.time()


@app.after_request
def record_metrics(response):
    duration = time.time() - request._start_time
    REQUEST_COUNT.labels(
        method=request.method,
        endpoint=request.path,
        status=response.status_code
    ).inc()
    REQUEST_LATENCY.labels(
        method=request.method,
        endpoint=request.path
    ).observe(duration)
    return response


# ─── Routes ─────────────────────────────────────────────────
@app.route("/")
def home():
    return jsonify({
        "message": "Welcome to the DevOps Final Project App!",
        "environment": os.getenv("APP_ENV", "development"),
        "version": os.getenv("APP_VERSION", "1.0.0")
    })


@app.route("/health")
def health():
    """Health check endpoint — used by Kubernetes probes."""
    return jsonify({"status": "healthy", "timestamp": time.time()}), 200


@app.route("/metrics")
def metrics():
    """Prometheus metrics endpoint."""
    return generate_latest(), 200, {"Content-Type": CONTENT_TYPE_LATEST}


@app.route("/api/items", methods=["GET"])
def get_items():
    """Sample API endpoint — extend this for your project."""
    items = [
        {"id": 1, "name": "Item One"},
        {"id": 2, "name": "Item Two"},
    ]
    return jsonify({"items": items, "count": len(items)})


if __name__ == "__main__":
    port = int(os.getenv("PORT", 5000))
    debug = os.getenv("APP_ENV", "development") == "development"
    app.run(host="0.0.0.0", port=port, debug=debug)
