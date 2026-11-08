// Delete folha_pagamento record.
query "folha_pagamento/{folha_pagamento_id}" verb=DELETE {
  api_group = "Authentication"

  input {
    int folha_pagamento_id? filters=min:1
  }

  stack {
    db.del "" {
      field_name = "id"
      field_value = $input.folha_pagamento_id
    }
  }

  response = null
  guid = "7ZkKLir44zitgP_pRlV3Y86CmCM"
}