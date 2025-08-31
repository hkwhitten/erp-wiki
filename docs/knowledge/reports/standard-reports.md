---
title: Standard Reports
tags: [it, gnucash, accounting]
---

# Standard  Reports

## Standard GnuCash Reports 

### macOS

- **Back up**

  ```bash
  # user data (saved reports, state)
  tar -czf gnucash-macos-data.tgz -C "$HOME/Library/Application Support" Gnucash

  # preferences (plist)
  cp "$HOME/Library/Preferences/org.gnucash.GnuCash.plist" ./org.gnucash.GnuCash.plist.backup 2>/dev/null || true
  
  # AqBanking (if used)
  tar -czf gnucash-aqbanking.tgz -C "$HOME" .aqbanking 2>/dev/null || true

