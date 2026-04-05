# System Info & Monitoring

Keep a pulse on your system's health—CPU load, memory, disk, and running processes at a glance.

---

## Aliases

### `cls`
- **Description:** Clear the terminal screen
- **Usage:** `cls`
- **Example:** `cls`

### `reload`
- **Description:** Reload `~/.bashrc` without restarting the terminal
- **Usage:** `reload`
- **Example:** `reload`

### `df`
- **Description:** Show disk usage of all mounted filesystems, human-readable
- **Usage:** `df`
- **Example:** `df`

```bash
df
# Filesystem      Size  Used Avail Use% Mounted on
# /dev/sda1       100G   45G   55G  45% /
```

### `free`
- **Description:** Show RAM usage in human-readable format
- **Usage:** `free`
- **Example:** `free`

### `path`
- **Description:** Print all entries in `$PATH`, one per line
- **Usage:** `path`
- **Example:** `path`

### `cpu`
- **Description:** Show current CPU usage summary
- **Usage:** `cpu`
- **Example:** `cpu`

### `mem`
- **Description:** Show RAM usage (Mem line from free)
- **Usage:** `mem`
- **Example:** `mem`

### `topcpu`
- **Description:** Show top 15 processes by CPU usage
- **Usage:** `topcpu`
- **Example:** `topcpu`

### `topmem`
- **Description:** Show top 15 processes by memory usage
- **Usage:** `topmem`
- **Example:** `topmem`

### `ports`
- **Description:** List all listening ports and their services
- **Usage:** `ports`
- **Example:** `ports`

### `myip`
- **Description:** Show your public IP address
- **Usage:** `myip`
- **Example:** `myip`

### `localip`
- **Description:** Show your local network IP address
- **Usage:** `localip`
- **Example:** `localip`

### `sysinfo`
- **Description:** One-line system overview: CPU cores, RAM, disk free
- **Usage:** `sysinfo`
- **Example:** `sysinfo`

```bash
sysinfo
# CPU:8 cores | RAM:16Gi | Disk:42G free
```

---

{{#template ../templates/footer.md module=System}}
