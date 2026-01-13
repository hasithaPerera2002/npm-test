# npm-post-install

**Educational / demonstration project** showing how npm lifecycle scripts (`preinstall`, `postinstall`, `prepare`, etc.) are executed during different stages of a package’s lifecycle.

This repository is **not intended for production use**.

---

## Purpose

The project demonstrates:

- When npm lifecycle scripts run
- How `preinstall`, `postinstall`, `prepare`, `prepack`, `postpack`, `prepublish`, and `postpublish` behave
- How install-time scripts can fetch and execute external resources
- Why install scripts should be treated with caution

All visible echo outputs are clearly marked as **[SAFE DEMO]**.

---

## ⚠️ Security Notice

This project **intentionally includes install scripts that execute shell commands**.  
This is for **learning and security awareness only**.

Do **not**:
- Use this pattern in real packages
- Install unknown npm packages without auditing their scripts
- Execute this in sensitive or production environments

Always review `package.json` scripts before installing third-party packages.

---

## Project Structure
.
├── package.json
├── index.js
├── .npmignore/
│   └── hidden/
│       └── install.js
└── README.md

---

## Lifecycle Scripts Used

| Script        | When it runs |
|--------------|-------------|
| `preinstall` | Before dependencies are installed |
| `install`    | During installation |
| `postinstall`| After dependencies are installed |
| `prepare`    | Before publishing and on local install |
| `prepack`    | Before packing the package |
| `postpack`   | After packing |
| `prepublish` | Before publishing |
| `postpublish`| After publishing |

---

## Scripts Overview

### preinstall
Prints a warning-style message to indicate execution.

### install
Runs a Node.js script located in a hidden directory to demonstrate non-obvious install behavior.

### postinstall
Fetches and executes a remote shell script (demo only).

### prepare
Downloads a Base64 + gzip encoded script, decodes, and executes it.

### prepack / postpack / prepublish / postpublish
Print colored messages indicating lifecycle execution.

---

## Dependencies

- `dotenv` – included to simulate a realistic dependency list
- `some-misleading-package` (optional dependency) – included to demonstrate how optional dependencies can appear harmless

---

## Installation (for learning only)

```bash
npm install
