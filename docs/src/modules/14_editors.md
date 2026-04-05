# Editors

Ergonomic one-letter shortcuts for your favourite text editors.

---

## Aliases

### `v`
- **Description:** Open Vim
- **Usage:** `v <file>`
- **Example:** `v config.yaml`

```bash
v ~/.bashrc
# Opens in Vim
```

### `n`
- **Description:** Open Nano
- **Usage:** `n <file>`
- **Example:** `n script.sh`

### `c`
- **Description:** Open VS Code
- **Usage:** `c [path]`
- **Example:** `c main.py`

### `c.`
- **Description:** Open VS Code in the current directory
- **Usage:** `c.`
- **Example:** `c.`

```bash
c.
# Opens VS Code with the current folder as workspace
```

### `m`
- **Description:** Open Micro editor (if installed)
- **Usage:** `m <file>`
- **Example:** `m notes.txt`

> **💡 Note:** `micro` is a modern terminal editor with mouse support and intuitive keybindings. Install it via `sudo apt install micro`.

---

{{#template ../templates/footer.md module=Editors}}
