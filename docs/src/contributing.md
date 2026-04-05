# Contributing & Building New Modules

Aliaskit is completely open source and designed to be modular by design. Adding your own module takes less than 5 minutes.

---

## Local Development

1. **Fork** and clone the repository:
   ```bash
   git clone https://github.com/blackstart-labs/aliaskit.git
   cd aliaskit
   ```

2. **Initialize** Aliaskit from your local directory:
   ```bash
   export AK_ROOT="$(pwd)"
   source core/init.sh
   ```

3. Test your changes live in your terminal immediately.

---

## Creating a New Module

Create `modules/18_aws.sh`:

```bash
#!/usr/bin/env bash
# CATEGORY: AWS Infrastructure
# MODULE: aws

## ec2list
# @desc  List all running EC2 instances
# @usage ec2list
# @example ec2list
alias ec2list='aws ec2 describe-instances --filters "Name=instance-state-name,Values=running"'
```

### Annotation rules:

| Annotation | Purpose |
| :--- | :--- |
| `# CATEGORY:` | Human-readable group name shown in `ak modules` |
| `# MODULE:` | Internal identifier (lowercase, no spaces) |
| `## <name>` | Marks the start of a command entry (double hash) |
| `# @desc` | Short description shown in `ak help <module>` |
| `# @usage` | Usage signature shown in docs |
| `# @example` | Example shown in docs |

Then enable it in `config/aliaskit.conf.default`:
```bash
AK_ENABLE_AWS=true
```

---

## Using `mdbook-template` in Docs

When adding documentation for your module in `docs/src/modules/`, use the `{{#template}}` syntax to automatically inject the standard footer:

```markdown
{{#template ../templates/footer.md module=AWS}}
```

This dynamically renders into:
```
-- Part of the AWS module of Aliaskit --
⭐ Star Aliaskit on GitHub · 📖 Back to Manual
```

---

## Pull Request Checklist

Before submitting, ensure:

- [ ] Script passes `shellcheck -S warning modules/18_aws.sh`
- [ ] All aliases have `# @desc`, `# @usage`, `# @example` annotations
- [ ] Module config added to `config/aliaskit.conf.default`
- [ ] PR template filled out completely
- [ ] Module documented in `docs/src/modules/18_aws.md` with examples
