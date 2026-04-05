# Git

20+ battle-tested Git aliases covering daily workflows — commits, branches, rebases, and stashes.

---

## Aliases

### `g`
- **Description:** Git shorthand
- **Usage:** `g <command>`
- **Example:** `g status`

### `gs`
- **Description:** Git status (short)
- **Usage:** `gs`
- **Example:** `gs`

```bash
gs
# M  core/init.sh
# ?? modules/18_aws.sh
```

### `ga`
- **Description:** Stage all changes
- **Usage:** `ga`
- **Example:** `ga`

### `gc`
- **Description:** Commit with a message
- **Usage:** `gc "<message>"`
- **Example:** `gc "feat: add aws module"`

### `gca`
- **Description:** Stage all and commit in one step
- **Usage:** `gca "<message>"`
- **Example:** `gca "fix: patch shellcheck"`

### `gp`
- **Description:** Push current branch to origin
- **Usage:** `gp`
- **Example:** `gp`

### `gpl`
- **Description:** Pull latest from current branch
- **Usage:** `gpl`
- **Example:** `gpl`

### `gco`
- **Description:** Checkout a branch or create new
- **Usage:** `gco <branch>`
- **Example:** `gco feature/docs`

### `gb`
- **Description:** List all local branches
- **Usage:** `gb`
- **Example:** `gb`

### `gbd`
- **Description:** Delete a local branch
- **Usage:** `gbd <branch>`
- **Example:** `gbd feature/old-idea`

### `gl`
- **Description:** Pretty formatted git log (one line per commit)
- **Usage:** `gl`
- **Example:** `gl`

```bash
gl
# a81f701 ci: add PR labeler configuration
# 0fe90f8 docs: overhaul documentation into mdBook
```

### `gd`
- **Description:** Show unstaged differences
- **Usage:** `gd`
- **Example:** `gd`

### `gst`
- **Description:** Stash current changes
- **Usage:** `gst`
- **Example:** `gst`

### `gstp`
- **Description:** Pop the most recent stash
- **Usage:** `gstp`
- **Example:** `gstp`

### `grb`
- **Description:** Interactive rebase from HEAD
- **Usage:** `grb <n>`
- **Example:** `grb 3`

### `gundo`
- **Description:** Undo last commit (keeps changes staged)
- **Usage:** `gundo`
- **Example:** `gundo`

---

{{#template ../templates/footer.md module=Git}}
