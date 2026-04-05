# Network

Quickly inspect your network connections, open ports, and IP addresses.

---

## Aliases

### `myip`
- **Description:** Show your public IP address via `curl`
- **Usage:** `myip`
- **Example:** `myip`

```bash
myip
# 203.0.113.42
```

### `localip`
- **Description:** Show your local network IP address
- **Usage:** `localip`
- **Example:** `localip`

```bash
localip
# 192.168.1.105
```

### `ports`
- **Description:** List all listening TCP/UDP ports and services
- **Usage:** `ports`
- **Example:** `ports`

```bash
ports
# Netid  Local Address  Port   Process
# tcp    0.0.0.0        22     sshd
# tcp    0.0.0.0        3000   node
```

### `ping`
- **Description:** Ping with a count of 5 (instead of infinite)
- **Usage:** `ping <host>`
- **Example:** `ping google.com`

### `flushdns`
- **Description:** Flush the system DNS cache
- **Usage:** `flushdns`
- **Example:** `flushdns`

---

{{#template ../templates/footer.md module=Network}}
