// Query all financial_entry records
query financial_entry verb=GET {
  api_group = "rh"

  input {
  }

  stack {
    db.query financial_entry {
      return = {type: "list"}
    } as $financial_entry
  }

  response = $financial_entry
  guid = "jpSgl-pqx489-UU7PQ23w3rABnI"
}