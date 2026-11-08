// Criar item de checklist
query checklist_itens verb=POST {
  api_group = "rh"
  auth = "user"

  input {
    int processo_id
    text descricao
    text responsavel
  }

  stack {
    db.add "" {
      data = {
        processo_id: $input.processo_id
        descricao  : $input.descricao
        responsavel: $input.responsavel
        concluido  : false
        created_at : now
      }
    } as $result
  }

  response = $result
  guid = "GQJCWnSB67Hx-tHiMYuNxAR6aro"
}