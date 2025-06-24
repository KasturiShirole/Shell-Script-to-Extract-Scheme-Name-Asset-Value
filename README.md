# Shell-Script-to-Extract-Scheme-Name-Asset-Value
# AMFI Scheme NAV Extractor

This repository contains a shell script to extract **Scheme Name** and **Net Asset Value (NAV)** from the [AMFI India NAVAll.txt](https://www.amfiindia.com/spages/NAVAll.txt) feed.

---

## Files

- `extract_nav.sh` — Downloads the latest NAVAll.txt and extracts scheme name and NAV to a TSV file.
- `convert_to_json.sh` *(optional)* — Converts the TSV output to JSON format for API-ready use.

---

## Output

- `scheme_nav.tsv` — Tab-separated file with:

- Scheme Name <TAB> Net Asset Value
- - `scheme_nav.json` *(optional)* — JSON lines format:
```json
{"Scheme Name": "SBI Equity Hybrid Fund", "Net Asset Value": "150.23"}

