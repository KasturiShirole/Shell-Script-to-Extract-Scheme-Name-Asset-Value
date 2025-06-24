#!/bin/bash

# Download the NAVAll.txt file
curl -s "https://www.amfiindia.com/spages/NAVAll.txt" -o NAVAll.txt

# Extract "Scheme Name" and "Net Asset Value"
# Fields: AMC Code;AMC Name;Scheme Code;ISIN Div Payout/ISIN Growth;ISIN Div Reinvestment;Scheme Name;Net Asset Value;Date

# Skip header and empty lines, then extract columns 6 (Scheme Name) and 7 (NAV)
awk -F';' 'NF > 1 && $6 != "" && $7 != "" {print $6 "\t" $7}' NAVAll.txt > scheme_nav.tsv

echo "Extracted data saved to scheme_nav.tsv"
