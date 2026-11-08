// Excluir folha de pagamento
query "folha_pagamento/{id}" verb=DELETE {
  api_group = "rh"
  auth = "user"

  input {
    int id
  }

  stack {
    db.del "" {
      field_name = "id"
      field_value = $input.id
    }
  }

  response = true
  guid = "c3rB1W_H58-pSUsUZDRqjPrQVdg"
}