// Concluir item de checklist e verificar conclusão do processo
query "checklist_itens/{id}/concluir" verb=PATCH {
  api_group = "rh"
  auth = "user"

  input {
    int id
  }

  stack {
    db.get "" {
      field_name = "id"
      field_value = $input.id
    } as $item
  
    precondition ($item != null) {
      error_type = "notfound"
      error = "Item não encontrado"
    }
  
    // Marca item como concluído
    db.edit "" {
      field_name = "id"
      field_value = $item.id
      data = {concluido: true, data_conclusao: now}
    }
  
    // Verifica se todos os itens do processo estão concluídos
    db.query "" {
      where = $db.checklist_itens.processo_id == $item.processo_id && $db.checklist_itens.concluido == false
      return = {type: "exists"}
    } as $has_pending
  
    conditional {
      if (!$has_pending) {
        db.edit "" {
          field_name = "id"
          field_value = $item.processo_id
          data = {status: "concluido"}
        }
      }
    }
  }

  response = {success: true, message: "Item concluído"}
  guid = "RcJ39kh2bOljQBzxEvWgQj0rS3c"
}