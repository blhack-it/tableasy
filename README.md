# Tableasy

Rails tables builder gem that makes creating tables painless.

### Usage

```
table = Tableasy::Table.new

table.add_row [helper.header_cell('Name', class: "hc")], { class: "rc" }
table.add_row [helper.table_cell('John')]

render_table(table)

```

### Output

```
<table><tr class=\"rc\"><th class=\"hc\">Name</th></tr><tr><td>John</td></tr></table>
```

### Rendered

<table><tr><th>Name</th></tr><tr><td>John</td></tr></table>