# Archives

The legendary `extract` command — never look up `tar` flags again.

---

## Functions & Aliases

### `extract`
- **Description:** Automatically detect and extract any compressed archive format
- **Usage:** `extract <file>`
- **Example:** `extract archive.tar.gz`

**Supported formats:**

| Extension | Tool Used |
| :--- | :--- |
| `.tar.gz` / `.tgz` | `tar xzf` |
| `.tar.bz2` / `.tbz2` | `tar xjf` |
| `.tar` | `tar xf` |
| `.gz` | `gunzip` |
| `.bz2` | `bunzip2` |
| `.zip` | `unzip` |
| `.rar` | `unrar e` |
| `.7z` | `7z x` |
| `.Z` | `uncompress` |

```bash
extract project.tar.gz
# Extracting... Done.

extract backup.zip
# Extracting... Done.
```

> **💡 Note:** You no longer need to remember whether it's `tar xzf`, `tar xjf`, or `unzip` — `extract` figures it out automatically!

### `mktar`
- **Description:** Create a `.tar.gz` archive from a file or directory
- **Usage:** `mktar <archive.tar.gz> <target>`
- **Example:** `mktar project.tar.gz ./project`

```bash
mktar release.tar.gz ./dist
# Created release.tar.gz
```

### `mkzip`
- **Description:** Create a `.zip` archive from a file or directory
- **Usage:** `mkzip <archive.zip> <target>`
- **Example:** `mkzip docs.zip ./docs`

---

{{#template ../templates/footer.md module=Archives}}
