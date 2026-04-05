# .NET

Build, run, test, and manage your C# and F# projects without typing `dotnet` every time.

---

## Aliases

### `dn`
- **Description:** dotnet shorthand
- **Usage:** `dn <command>`
- **Example:** `dn build`

### `dnb`
- **Description:** Build the dotnet project in current directory
- **Usage:** `dnb`
- **Example:** `dnb`

```bash
dnb
# Build succeeded.
# 0 Warning(s), 0 Error(s)
```

### `dnr`
- **Description:** Run the dotnet project
- **Usage:** `dnr`
- **Example:** `dnr`

### `dnc`
- **Description:** Clean the dotnet build artifacts
- **Usage:** `dnc`
- **Example:** `dnc`

### `dnt`
- **Description:** Run all dotnet tests
- **Usage:** `dnt`
- **Example:** `dnt`

```bash
dnt
# Passed!  - Failed: 0, Passed: 42, Skipped: 0
```

### `dnadd`
- **Description:** Add a NuGet package to the project
- **Usage:** `dnadd <pkg>`
- **Example:** `dnadd Newtonsoft.Json`

```bash
dnadd Newtonsoft.Json
# PackageReference added to project.
```

---

{{#template ../templates/footer.md module=.NET}}
