# Python

Streamlined Python 3 development — virtual environments, pip management, and linting.

---

## Aliases

### `py`
- **Description:** Python 3 shorthand
- **Usage:** `py <script.py>`
- **Example:** `py main.py`

```bash
py main.py
# Hello, World!
```

### `venv`
- **Description:** Create a virtual environment in `./venv`
- **Usage:** `venv`
- **Example:** `venv`

```bash
venv
# Created virtual env in ./venv
```

### `pyact`
- **Description:** Activate the virtual environment (Linux/Mac)
- **Usage:** `pyact`
- **Example:** `pyact`

```bash
pyact
# (venv) maruf@machine:~/project$
```

### `pi`
- **Description:** Install a pip package
- **Usage:** `pi <pkg>`
- **Example:** `pi requests`

### `pif`
- **Description:** Freeze requirements to `requirements.txt`
- **Usage:** `pif`
- **Example:** `pif`

```bash
pif
# Saved: requests==2.31.0
#        fastapi==0.110.0
```

### `pir`
- **Description:** Install all packages from `requirements.txt`
- **Usage:** `pir`
- **Example:** `pir`

### `pylint`
- **Description:** Run the `ruff` linter on current directory
- **Usage:** `pylint`
- **Example:** `pylint`

```bash
pylint
# All checks passed. ✓
```

---

{{#template ../templates/footer.md module=Python}}
