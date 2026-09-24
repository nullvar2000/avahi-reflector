FROM alpine:3.20

# Install avahi and dbus, then clean up any cache
RUN apk add --no-cache avahi dbus && \
    mkdir -p /var/run/dbus

# Run avahi-daemon directly. 
# --no-drop-root ensures it keeps the NET_ADMIN capability required by Talos Linux
CMD ["avahi-daemon", "--no-drop-root"]

