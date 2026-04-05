---
layout: default
title: Comprehensive Manual
description: Deep dive into the internal core, modules dictionary, and advanced logic of Aliaskit.
---

<style>
/* Clean up the tables so they stretch beautifully */
table { width: 100%; display: table; }
th, td { padding: 12px; }
tr:nth-child(even) { background-color: rgba(0,0,0,0.05); }
.dark-mode tr:nth-child(even) { background-color: rgba(255,255,255,0.05); }
</style>

# Aliaskit Developer & System Manual

Welcome to the definitive source of truth for **Aliaskit**. Whether you are looking to learn all 17 loaded modules or dive into our APT Hook CI pipeline logic, this page covers it all.

---

## 📖 Module Dictionary

By default, aliaskit packs over 100+ critical bash pipelines logically grouped into modules. Listed below are the core concepts and domains you have instant access to. Use `ak help <module>` directly in your terminal to see the actual commands!

| Module ID | Focus Area | Description Context |
| :--- | :--- | :--- |
| `01_navigation` | **Filesystems** | Rapidly jump directories (`..`, `...`) or generate robust tree diagrams automatically. |
| `02_files` | **File Ops** | Shorthands for `mkdir -p` (`mkd`), safer `rm -i` wrappers, and instant copy/paste clipboards. |
| `03_system` | **Monitor** | Aliases converting default RAM/CPU outputs into clean, easily readable `sysinfo` or `free -h` logs. |
| `04_process` | **Killing** | Shortcuts to `kill -9` processes instantly via PID or Regex port mappings. |
| `05_packages` | **Debian/Apt** | Safe `upgrade` pipelines and automated unused package purging flows. |
| `06_network` | **Sockets** | Find open ports instantly via `ss` and map local/public IPs to variables. |
| `07_git` | **VCS** | Over 20+ Git aliases covering rebases, massive commits, stashes, and branch purges. |
| `08_docker` | **Containers** | Rapid Docker / Docker-Compose shortcuts explicitly removing dead caches and hopping into environments. |
| `09_python` | **Runtimes** | Quick `venv` creation, activation commands, and pip requirement freezing wrappers. |
| `10_node` | **Javascript** | Shortcuts for NPM, PNPM, and Yarn workflows. Auto wipe `node_modules`. |
| `11_dotnet` | **C# Environments** | Compiling natively, cleaning bins, and instantly testing C# test suites block via `dnt`. |
| `12_cpp_java` | **Compilers** | Compile generic `main.cpp` instantly or run `javac` without complex GNU make logic. |
| `13_archives` | **Zipping** | The legendary `extract` function that unpacks `tar`, `gz`, `7z`, or `zip` automatically. |
| `14_editors` | **Vim/Nano** | Instant shorthand jumping utilizing standard editors or mapping `code .` globally. |
| `15_servers` | **Daemon Logs** | Commands to exclusively `sudo tail -f` Apache or Nginx logs instantly, and reload `systemctl`. |
| `16_ssh` | **Security Keys** | Instantly generate `Ed25519` key pairs recursively and push your pub keys to your active clipboard. |
| `17_productivity`| **Fun Tools** | Print live terminal weather, random passwords, or start visual pomodoro-style bash sleep timers. |

---

## ⚙️ Advanced Installation & Mechanics

Aliaskit utilizes an explicit deterministic load order and is composed of completely isolated module files avoiding massive bloated `.bashrc` profiles.

### The APT Auto-Hook Deep Dive
If you opted into the advanced auto-updates via the installer, this is what happened:
1. We copied an apt intercept to `/etc/apt/apt.conf.d/99aliaskit`.
2. Whenever ANY user recursively runs `sudo apt update`, Debian captures a `Post-Invoke` exit event.
3. Your system seamlessly runs `su -c 'bash /home/$USER/.aliaskit/update.sh --auto'`.
4. Our bash script dynamically interrogates `/dev/tty`—meaning if this hook was launched via a cron-job (GUI-less), the script safely defaults `NO` and exits cleanly. If it's your terminal, it prompts you!

### GNU Stow / Symlink Uninstaller Safety
All bash installation lines rely rigorously on `sed --follow-symlinks -i`. This absolutely ensures that if you manage your standard `~/.bashrc` configs using standard Unix stow systems, your links aren't deleted in favor of text files!

---

## ⌨️ Developer API: Building New Modules

Want to contribute to the open-source repository or add a brand new CLI wrapper? Following this documentation ensures `ak help` and `ak search` organically ingest your script!

Simply touch a new file such as `modules/18_aws.sh`:

```bash
#!/usr/bin/env bash
# CATEGORY: AWS Infrastructure
# MODULE: aws

## ec2
# @desc  Print out running AWS EC2 instances natively
# @usage ec2 cluster-name
# @example ec2 prod-cluster
alias ec2='aws ec2 describe-instances --filters "Name=instance-state-name,Values=running"'
```

### Explanation of annotations:
- `# CATEGORY:` and `# MODULE:` directly tell `ak modules` how to categorize the module in the index.
- `## ec2` triggers our `.awk` parsing logic to grab the command key! Keep exactly double hashes.
- `# @desc` displays the explanation explicitly in the CLI.

Once completed, append `AK_ENABLE_AWS=true` to `config/aliaskit.conf.default` and you are completely verified!
