# SSH

Generate secure keys, manage your SSH config, and copy public keys to clipboard instantly.

---

## Functions & Aliases

### `sshconfig`
- **Description:** Open your SSH config file in the default editor
- **Usage:** `sshconfig`
- **Example:** `sshconfig`

```bash
sshconfig
# Opens ~/.ssh/config in $EDITOR (default: nano)
```

### `keygen`
- **Description:** Generate a new Ed25519 SSH key pair with your email as the label
- **Usage:** `keygen <email>`
- **Example:** `keygen user@example.com`

```bash
keygen maruf@blackstart-labs.com
# Generating public/private ed25519 key pair.
# Enter file in which to save the key (/home/maruf/.ssh/id_ed25519):
```

> **💡 Why Ed25519?** It is faster, more secure, and generates shorter keys than RSA-4096. It is the modern standard for SSH key pairs.

### `pubkey`
- **Description:** Print your SSH public key to the terminal
- **Usage:** `pubkey`
- **Example:** `pubkey`

```bash
pubkey
# ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAA... maruf@blackstart-labs.com
```

### `copypub`
- **Description:** Copy your SSH public key directly to the clipboard (cross-platform)
- **Usage:** `copypub`
- **Example:** `copypub`

Aliaskit automatically picks the right clipboard tool for your OS:

| Platform | Tool Used |
| :--- | :--- |
| macOS | `pbcopy` |
| WSL (Windows) | `clip.exe` |
| Linux | `xclip` → fallback: `xsel` |

```bash
copypub
# ✔ Public key copied to clipboard!
# Paste it into GitHub → Settings → SSH Keys
```

---

{{#template ../templates/footer.md module=SSH}}
