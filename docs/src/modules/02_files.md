# Files & Directories

Smart file operations — safer removals, rapid creation, and clipboard integration.

---

## Aliases

### `mkd`
- **Description:** Create a directory (including nested parents) and enter it
- **Usage:** `mkd <path>`
- **Example:** `mkd projects/aliaskit/core`

```bash
mkd new/deep/folder
# Creates all dirs and cd's into new/deep/folder
```

### `cpv`
- **Description:** Copy a file verbosely (shows progress)
- **Usage:** `cpv <src> <dest>`
- **Example:** `cpv report.pdf ~/Documents/`

### `rmf`
- **Description:** Force remove a file or directory recursively
- **Usage:** `rmf <path>`
- **Example:** `rmf ./build`

> **⚠️ Note:** Use with caution. There is no confirm prompt.

### `rmdir`
- **Description:** Remove an empty directory
- **Usage:** `rmdir <dir>`
- **Example:** `rmdir ./tmp`

### `fhere`
- **Description:** Find any file by name pattern in the current directory tree
- **Usage:** `fhere <pattern>`
- **Example:** `fhere "*.log"`

```bash
fhere "*.sh"
# ./install.sh
# ./update.sh
# ./core/init.sh
```

### `copy`
- **Description:** Copy file contents to clipboard (requires `xclip`)
- **Usage:** `copy <file>`
- **Example:** `copy ~/.ssh/id_ed25519.pub`

---

{{#template ../templates/footer.md module=Files}}
