// Edit checklist_itens record
query "checklist_itens/{checklist_itens_id}" verb=PATCH {
  api_group = "Authentication"

  input {
    int checklist_itens_id? filters=min:1
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
      field_value = $input.checklist_itens_id
      data = `$input|pick:($raw_input|keys)`|filter_null|filter_empty_text
    } as $checklist_itens
  }

  response = $checklist_itens
  guid = "tDNxLDodO4JIYWzQQxzaRT3ubrk"
}