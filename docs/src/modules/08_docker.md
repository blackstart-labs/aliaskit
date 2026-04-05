# Docker

Rapid Docker & Docker Compose shortcuts — run containers, clean up images, and exec into environments instantly.

---

## Aliases

### `d`
- **Description:** Docker shorthand
- **Usage:** `d <command>`
- **Example:** `d ps`

### `dps`
- **Description:** List all running containers
- **Usage:** `dps`
- **Example:** `dps`

```bash
dps
# CONTAINER ID  IMAGE        STATUS        NAMES
# a3b4c5d6e7f8  nginx:latest Up 2 hours    web
```

### `dpsa`
- **Description:** List all containers (including stopped)
- **Usage:** `dpsa`
- **Example:** `dpsa`

### `dstop`
- **Description:** Stop a running container
- **Usage:** `dstop <name>`
- **Example:** `dstop web`

### `drm`
- **Description:** Remove a stopped container
- **Usage:** `drm <name>`
- **Example:** `drm old-web`

### `dexec`
- **Description:** Execute bash inside a running container
- **Usage:** `dexec <name>`
- **Example:** `dexec web`

```bash
dexec web
# root@a3b4c5d6:/# 
```

### `dlogs`
- **Description:** Tail live container logs
- **Usage:** `dlogs <name>`
- **Example:** `dlogs web`

### `dprune`
- **Description:** Remove all stopped containers, unused networks, and dangling images
- **Usage:** `dprune`
- **Example:** `dprune`

> **💡 Note:** This frees significant disk space on development machines.

### `dc`
- **Description:** Docker Compose shorthand
- **Usage:** `dc <command>`
- **Example:** `dc up`

### `dcup`
- **Description:** Start all services in detached mode
- **Usage:** `dcup`
- **Example:** `dcup`

### `dcdown`
- **Description:** Stop and remove all compose services
- **Usage:** `dcdown`
- **Example:** `dcdown`

### `dcbuild`
- **Description:** Build or rebuild compose services
- **Usage:** `dcbuild`
- **Example:** `dcbuild`

---

{{#template ../templates/footer.md module=Docker}}
