// Get checklist_itens record
query "checklist_itens/{checklist_itens_id}" verb=GET {
  api_group = "Authentication"

  input {
    int checklist_itens_id? filters=min:1
  }

  stack {
    db.get "" {
      field_name = "id"
      field_value = $input.checklist_itens_id
    } as $checklist_itens
  
    precondition ($checklist_itens != null) {
      error_type = "notfound"
      error = "Not Found."
    }
  }

  response = $checklist_itens
  guid = "0_t2PufQc7SoKZkShcxChTNbyNc"
}