# Process Management

Find and terminate processes instantly — no more hunting for PIDs.

---

## Aliases

### `psef`
- **Description:** Show all running processes with full details
- **Usage:** `psef`
- **Example:** `psef`

```bash
psef | grep nginx
# root  1234  0.0  nginx: master process
```

### `psg`
- **Description:** Search for a running process by name
- **Usage:** `psg <name>`
- **Example:** `psg node`

### `killport`
- **Description:** Kill the process listening on a specific port
- **Usage:** `killport <port>`
- **Example:** `killport 3000`

```bash
killport 3000
# Killed process 9823 listening on :3000
```

### `k9`
- **Description:** Force kill a process by PID
- **Usage:** `k9 <pid>`
- **Example:** `k9 1234`

---

{{#template ../templates/footer.md module=Process}}
