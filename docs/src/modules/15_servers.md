# Servers

Manage Linux services and tail web server logs — all without remembering long `systemctl` syntax.

---

## Aliases

### `sc`
- **Description:** systemctl shorthand (requires sudo)
- **Usage:** `sc <cmd> <service>`
- **Example:** `sc status nginx`

```bash
sc status nginx
# ● nginx.service - A high performance web server
#    Active: active (running) since Mon 2026-04-06
```

### `scstart`
- **Description:** Start a system service
- **Usage:** `scstart <service>`
- **Example:** `scstart apache2`

### `scstop`
- **Description:** Stop a system service
- **Usage:** `scstop <service>`
- **Example:** `scstop mysql`

### `screstart`
- **Description:** Restart a system service
- **Usage:** `screstart <service>`
- **Example:** `screstart nginx`

### `scstatus`
- **Description:** View the status of a service (no sudo required)
- **Usage:** `scstatus <service>`
- **Example:** `scstatus ufw`

### `tailnginx`
- **Description:** Tail the live NGINX error log
- **Usage:** `tailnginx`
- **Example:** `tailnginx`

```bash
tailnginx
# 2026/04/06 01:23:45 [error] 1234#0: *1 connect() failed
```

### `tailapache`
- **Description:** Tail the live Apache2 error log
- **Usage:** `tailapache`
- **Example:** `tailapache`

> **💡 Pro tip:** Combine with `grep` to filter for specific errors:
> ```bash
> tailnginx | grep "502"
> ```

---

{{#template ../templates/footer.md module=Servers}}
