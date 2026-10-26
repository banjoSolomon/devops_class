#!/bin/bash
# setup.sh - Week 1 Project: App directory setup script

LOG_FILE="setup.log"
APP_NAME="mywebapp"

log() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" | tee -a "$LOG_FILE"
}

log "Starting setup for $APP_NAME..."

# Create directory structure
mkdir -p "$APP_NAME"/{src,public,config,logs,scripts,tests}
log "Created directory structure"

# Write a sample config
cat > "$APP_NAME/config/app.conf" <<EOF
APP_NAME=$APP_NAME
APP_ENV=development
APP_PORT=8080
LOG_LEVEL=info
EOF
log "Created app.conf"

# Set permissions: config readable only by owner
chmod 700 "$APP_NAME/config"
chmod 600 "$APP_NAME/config/app.conf"
log "Set permissions on config"

# Create a placeholder index file
echo "<h1>Hello from $APP_NAME</h1>" > "$APP_NAME/public/index.html"
log "Created index.html"

# Create logs directory with write permission
chmod 755 "$APP_NAME/logs"
log "Set logs directory permissions"

log "Setup complete! Structure:"
find "$APP_NAME" -type f | sort | tee -a "$LOG_FILE"

echo ""
echo "Done! Check $LOG_FILE for details."
