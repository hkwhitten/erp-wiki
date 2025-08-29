---
title: How we write pages
tags: [example, howto, wiki]
---

# Page patterns (copy & paste)

Use these patterns to keep pages consistent and easy to scan.

## Admonitions

!!! note "Heads up"
    Short, scannable hints.

!!! tip "Pro tip"
    Tips or shortcuts that save time.

!!! warning "Watch out"
    Common pitfalls or gotchas.

---

## Tabs (great for OS-specific steps)

=== "macOS"
    ```bash
    brew install pandoc
    dconf --version  # not on macOS by default
    ```

=== "Windows"
    ```powershell
    winget install pandoc
    reg export "HKCU\Software\GSettings" ".\GnuCash-GSettings.reg" /y
    ```

=== "Linux"
    ```bash
    sudo apt-get install -y pandoc
    dconf dump /org/gnucash/ > gnucash-dconf.ini
    ```

---

## Collapsible details

/// details | Why we use Markdown
Markdown is diff-friendly, fast to write, and renders nicely with Material.
///

---

## Tasks

- [x] Add tags and tabs
- [ ] Write a new tip
- [ ] Link a report export

---

## Tags

This page has tags in its front matter.  
Browse all tags here: **/tags/** (or use the “Tags” entry in the nav).
