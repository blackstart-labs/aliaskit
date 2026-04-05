# Node / JavaScript

npm, Yarn, and pnpm shortcuts — install packages, run scripts, and nuke `node_modules` in one command.

---

## Aliases

### `ni`
- **Description:** Install npm packages from `package.json`
- **Usage:** `ni`
- **Example:** `ni`

### `nid`
- **Description:** Install a dev dependency
- **Usage:** `nid <pkg>`
- **Example:** `nid typescript`

```bash
nid typescript
# added typescript@5.4.3
```

### `nr`
- **Description:** Run an npm script
- **Usage:** `nr <script>`
- **Example:** `nr dev`

```bash
nr dev
# > vite --host
```

### `nrm`
- **Description:** Remove `node_modules` and `package-lock.json`, then reinstall fresh
- **Usage:** `nrm`
- **Example:** `nrm`

> **💡 Use this when builds mysteriously break** — a clean install resolves 90% of mysterious npm issues.

### `y`
- **Description:** Yarn shorthand
- **Usage:** `y <command>`
- **Example:** `y install`

### `ya`
- **Description:** Yarn add package
- **Usage:** `ya <pkg>`
- **Example:** `ya react`

### `p`
- **Description:** pnpm shorthand
- **Usage:** `p <command>`
- **Example:** `p install`

---

{{#template ../templates/footer.md module=Node}}
