// Add financial_category record
query financial_category verb=POST {
  api_group = "rh"

  input {
    dblink {
      table = "financial_category"
    }
  }

  stack {
    db.add financial_category {
      enforce_hidden_fields = false
      data = {created_at: "now"}
    } as $financial_category
  }

  response = $financial_category
  guid = "8pT2ojdvn-Mc1HYDxfogyda39jc"
}