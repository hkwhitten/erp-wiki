# GnuCash Settings & Preferences: Paths

Use this page to find, back up, and restore user-level settings for GnuCash.

## Quick reference

| What | macOS | Windows | Linux |
|---|---|---|---|
| **Saved reports & user data** | `~/Library/Application Support/Gnucash/` | `%APPDATA%\GnuCash\` | `~/.local/share/gnucash/` *(old: `~/.gnucash`)* |
| **Preferences (app settings)** | `~/Library/Preferences/org.gnucash.GnuCash.plist` *(GSettings backend)* | Registry: `HKCU\Software\GSettings` *(org.gnucash.*)* | `dconf` (GSettings): `dconf dump /org/gnucash/` |
| **AqBanking (online banking)** | `~/.aqbanking` | `C:\Users\<you>\aqbanking\` *(if used)* | `~/.aqbanking` |

> Tip: In GnuCash, **Help → About** shows the actual paths used on that machine.

---

## Back up & restore

### macOS
- **Back up**
  ```bash
  # user data (saved reports, state)
  tar -czf gnucash-macos-data.tgz -C "$HOME/Library/Application Support" Gnucash
  # preferences (plist)
  cp "$HOME/Library/Preferences/org.gnucash.GnuCash.plist" ./org.gnucash.GnuCash.plist.backup 2>/dev/null || true
  # AqBanking (if used)
  tar -czf gnucash-aqbanking.tgz -C "$HOME" .aqbanking 2>/dev/null || true

