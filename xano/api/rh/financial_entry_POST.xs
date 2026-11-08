// Add financial_entry record
query financial_entry verb=POST {
  api_group = "rh"

  input {
    dblink {
      table = "financial_entry"
    }
  }

  stack {
    db.add financial_entry {
      enforce_hidden_fields = false
      data = {created_at: "now"}
    } as $financial_entry
  }

  response = $financial_entry
  guid = "7ZYcFlWWuhODrwK-66YVIKKx1CE"
}