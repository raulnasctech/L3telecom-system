// Delete checklist_itens record.
query "checklist_itens/{checklist_itens_id}" verb=DELETE {
  api_group = "Authentication"

  input {
    int checklist_itens_id? filters=min:1
  }

  stack {
    db.del "" {
      field_name = "id"
      field_value = $input.checklist_itens_id
    }
  }

  response = null
  guid = "NVNMm0EIhplWeACGBa5FwDrrQsk"
}