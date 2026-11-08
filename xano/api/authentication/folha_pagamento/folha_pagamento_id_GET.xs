// Get folha_pagamento record
query "folha_pagamento/{folha_pagamento_id}" verb=GET {
  api_group = "Authentication"

  input {
    int folha_pagamento_id? filters=min:1
  }

  stack {
    db.get "" {
      field_name = "id"
      field_value = $input.folha_pagamento_id
    } as $folha_pagamento
  
    precondition ($folha_pagamento != null) {
      error_type = "notfound"
      error = "Not Found."
    }
  }

  response = $folha_pagamento
  guid = "cztYFRC6MPEG3cpLUI97J6iinkM"
}