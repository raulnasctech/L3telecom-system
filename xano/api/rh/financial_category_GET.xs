// Query all financial_category records
query financial_category verb=GET {
  api_group = "rh"

  input {
  }

  stack {
    db.query financial_category {
      return = {type: "list"}
    } as $financial_category
  }

  response = $financial_category
  guid = "0uMjQ58ncfnrtYP7e0rvYRxFq00"
}