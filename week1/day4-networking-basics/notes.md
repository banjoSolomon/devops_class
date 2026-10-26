# Day 4 - Networking Basics for DevOps

## Topics
- How the internet works (high-level)
- IP addresses: IPv4, IPv6, public vs private
- Subnetting basics (CIDR notation: `192.168.1.0/24`)
- Ports and protocols
  - HTTP (80), HTTPS (443)
  - SSH (22), FTP (21)
  - DNS (53), SMTP (25)
- TCP vs UDP
- DNS: how domain resolution works
- Load balancers: what they do and why
- Firewalls and security groups
- NAT and VPNs (concept level)

## Key Commands
```bash
# Test connectivity
ping google.com

# DNS lookup
nslookup google.com
dig google.com

# Check open ports
netstat -tulnp
ss -tulnp

# HTTP requests
curl -I https://google.com
curl -X GET https://api.example.com/users
wget https://example.com/file.zip

# Trace network path
traceroute google.com      # Linux/Mac
tracert google.com         # Windows

# Check your IPs
ip addr show
ifconfig
```

## Concept: How an HTTP Request Works
```
Browser → DNS lookup → IP resolved → TCP handshake → HTTP GET request
       → Server processes → HTTP response → Browser renders
```

## Activity
- Use `curl` to call a public API (e.g., https://api.github.com)
- Trace the route to a website
- Identify public and private IPs on your machine
