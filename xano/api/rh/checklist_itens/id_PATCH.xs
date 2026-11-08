// Editar item de checklist
query "checklist_itens/{id}" verb=PATCH {
  api_group = "rh"
  auth = "user"

  input {
    int id
    text descricao?
    text responsavel?
    bool concluido?
    timestamp? data_conclusao?
  }

  stack {
    db.patch "" {
      field_name = "id"
      field_value = $input.id
      data = {
        descricao     : $input.descricao
        responsavel   : $input.responsavel
        concluido     : $input.concluido
        data_conclusao: $input.data_conclusao
      }
    } as $result
  }

  response = $result
  guid = "WTWCZ3GAAcYCWCHOphEYT3mtcR4"
}