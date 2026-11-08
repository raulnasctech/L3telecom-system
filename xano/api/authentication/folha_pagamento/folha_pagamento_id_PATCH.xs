// Edit folha_pagamento record
query "folha_pagamento/{folha_pagamento_id}" verb=PATCH {
  api_group = "Authentication"

  input {
    int folha_pagamento_id? filters=min:1
    dblink {
      table = ""
    }
  }

  stack {
    util.get_raw_input {
      encoding = "json"
      exclude_middleware = false
    } as $raw_input
  
    db.patch "" {
      field_name = "id"
      field_value = $input.folha_pagamento_id
      data = `$input|pick:($raw_input|keys)`|filter_null|filter_empty_text
    } as $folha_pagamento
  }

  response = $folha_pagamento
  guid = "__ONgt0xNNY5jjBtLE-GeppdpEY"
}