awk -F'\t' '{printf "{\"Scheme Name\": \"%s\", \"Net Asset Value\": \"%s\"}\n", $1, $2}' scheme_nav.tsv > scheme_nav.json
