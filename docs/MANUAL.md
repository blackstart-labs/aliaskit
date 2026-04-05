# Aliaskit Developer Manual

Welcome to the comprehensive, developer-driven manual for **Aliaskit**, a powerful and highly extensible bash alias toolkit designed to streamline any Linux or Unix environment.

---

## 1. System Architecture

Aliaskit utilizes an explicit deterministic load order and is composed of isolated "modules." The core router handles the `ak` command which enables the magical user experience.

- `core/init.sh`: Sourced by your `.bashrc`. It reads `.aliaskit.conf` to check which modules are requested and dynamically `source`-es each numerical script in the `modules/` folder.
- `core/help.sh`: Our custom manual engine. Rather than hardcoding tooltips, this script reads comments (e.g., `# @desc`) *directly out of your alias files* on the fly.
- `modules/*.sh`: The domain-specific aliases. You can easily remove or add domains explicitly.

---

## 2. Auto-Update Mechanism Deep-Dive

Aliaskit introduces an advanced, passive background-update integration to ensure users stay on the latest cutting-edge improvements seamlessly.

If you enabled the **System APT Hook** during `install.sh`, this is how it functions natively:
1. You run `sudo apt update` like you normally do.
2. The Debian package manager (`apt`) intercepts life-cycle events. At `Post-Invoke` (when update is totally complete), it spots `/etc/apt/apt.conf.d/99aliaskit`.
3. It seamlessly triggers `update.sh --auto`.
4. `update.sh` will fetch from Git without modifying your working tree.
5. If it detects `LOCAL` is behind `REMOTE`, it uses `/dev/tty` to bypass apt's background terminal constraints and prints a beautifully colored prompt querying: `Do you want to update now?`.

This ensures you are perfectly hooked into system administration routines without generating annoying background loops.

---

## 3. Developing New Modules

If you want to maintain your standard of extremely high-quality CLIs, you should add modules following these strict documentation guidelines so `ak help` and `ak search` find them immediately.

Create `modules/18_my_tool.sh`:

```bash
#!/usr/bin/env bash
# CATEGORY: My Custom Tool
# MODULE: mytool

## foo
# @desc  Does foo and magic things
# @usage foo <path>
# @example foo ./magic
alias foo='magic_cmd --foo'
```

### Explanation of annotations:
- `# CATEGORY:` and `# MODULE:` tell `ak modules` the high-level grouping.
- `## foo` identifies the start of a command string! Keep exactly double hashes.
- `# @desc` displays the explanation explicitly.
- `# @usage` and `# @example` are available for potential expansion in GUI tools.

---

## 4. Contributing / Testing

All Bash shell script pushes are rigorously validated by Github Actions via `ludeeus/action-shellcheck`. 
If you find standard problems like SC2155 (assigning and declaring in one command) or globally scoping things improperly, **the CI will purposely block your PR**. Please run `shellcheck` locally before issuing the PR!
