# Package Management

Streamlined APT commands for installing, upgrading, and cleaning your Debian/Ubuntu system.

---

## Aliases

### `update`
- **Description:** Refresh package lists from all repositories (and check aliaskit updates)
- **Usage:** `update`
- **Example:** `update`

```bash
update
# Runs: sudo apt update && ak update --auto
```

> **💡 Note:** If you opted into the APT hook during install, this also silently checks for Aliaskit updates in the background!

### `upgrade`
- **Description:** Update package lists and upgrade all installed packages
- **Usage:** `upgrade`
- **Example:** `upgrade`

```bash
upgrade
# Runs: sudo apt update && sudo apt upgrade -y
```

### `full-upgrade`
- **Description:** Full system upgrade including dependency resolution, then clean up
- **Usage:** `full-upgrade`
- **Example:** `full-upgrade`

```bash
full-upgrade
# sudo apt update && sudo apt full-upgrade -y
# sudo apt autoremove -y && sudo apt autoclean
```

### `install`
- **Description:** Install an APT package with confirmation
- **Usage:** `install <pkg>`
- **Example:** `install curl`

### `remove`
- **Description:** Remove a package and its config files
- **Usage:** `remove <pkg>`
- **Example:** `remove firefox`

### `search`
- **Description:** Search for a package in APT
- **Usage:** `search <term>`
- **Example:** `search python3`

### `clean`
- **Description:** Auto-remove unused packages and clean cache
- **Usage:** `clean`
- **Example:** `clean`

---

{{#template ../templates/footer.md module=Packages}}
