# C++ & Java

Compile, build, and run C++ and Java programs without memorizing compiler flags.

---

## Functions & Aliases

### `gbuild`
- **Description:** Compile a single C++ file with C++17 and all warnings enabled
- **Usage:** `gbuild <file.cpp> [output]`
- **Example:** `gbuild main.cpp app`

```bash
gbuild main.cpp myapp
# Compiled successfully → ./myapp
```

### `runcpp`
- **Description:** Compile AND immediately run a C++ file in one step
- **Usage:** `runcpp <file.cpp>`
- **Example:** `runcpp script.cpp`

```bash
runcpp hello.cpp
# Hello, World!
```

### `m`
- **Description:** Run `make` using all available CPU cores (parallel build)
- **Usage:** `m`
- **Example:** `m`

```bash
m
# Compiling with 8 jobs...
```

### `mc`
- **Description:** Run `make clean`
- **Usage:** `mc`
- **Example:** `mc`

### `jbuild`
- **Description:** Compile a Java file using `javac`
- **Usage:** `jbuild <File.java>`
- **Example:** `jbuild Main.java`

### `jrun`
- **Description:** Run a compiled Java class
- **Usage:** `jrun <ClassName>`
- **Example:** `jrun Main`

```bash
jbuild Main.java && jrun Main
# Hello, Java!
```

### `mci`
- **Description:** Maven clean install
- **Usage:** `mci`
- **Example:** `mci`

---

{{#template ../templates/footer.md module=C++/Java}}
