# GnuCash Settings & Preferences: Paths

Use this page to find, back up, and restore user-level settings for GnuCash.

## Quick reference

| What | macOS | Windows | Linux |
|---|---|---|---|
| **Saved reports & user data** | `~/Library/Application Support/Gnucash/` | `%APPDATA%\GnuCash\` | `~/.local/share/gnucash/` *(old: `~/.gnucash`)* |
| **Preferences (app settings)** | `~/Library/Preferences/org.gnucash.GnuCash.plist` *(GSettings backend)* | Registry: `HKCU\Software\GSettings` *(org.gnucash.*)* | `dconf` (GSettings): `dconf dump /org/gnucash/` |
| **AqBanking (online banking)** | `~/.aqbanking` | `C:\Users\<you>\aqbanking\` *(if used)* | `~/.aqbanking` |

Tip: In GnuCash, **Help → About** shows the actual paths used on that machine.

Tip: If you want to know in which directories your recent GnuCash files are stored, hover over one of the entries in the history menu
(File[->Most Recently Used-List]).
The full path is displayed in the status bar.

