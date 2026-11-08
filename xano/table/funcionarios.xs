table funcionarios {
  auth = false

  schema {
    int id
    timestamp created_at?=now {
      visibility = "private"
    }
  
    text nome? filters=trim
    text cpf? filters=trim
    text cargo? filters=trim
    date? data_admissao?
    enum status?=ativo {
      values = ["Ativo", "Inativo", "Afastado", "Férias"]
    }
  
    text Telefone? filters=trim
  }

  index = [
    {type: "primary", field: [{name: "id"}]}
    {type: "btree", field: [{name: "created_at", op: "desc"}]}
    {type: "btree|unique", field: [{name: "cpf", op: "asc"}]}
  ]

  guid = "mlKsOyPplZhr3CljbKHkKBudr-s"
}