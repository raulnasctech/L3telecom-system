// Query all financial_attachment records
query financial_attachment verb=GET {
  api_group = "rh"

  input {
  }

  stack {
    db.query financial_attachment {
      return = {type: "list"}
    } as $financial_attachment
  }

  response = $financial_attachment
  guid = "hqlpTV8blmmwUlK54kC3tdGb-u8"
}