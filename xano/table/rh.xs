table RH {
  auth = false

  schema {
    int id
    timestamp created_at?=now {
      visibility = "private"
    }
  
    int funcionarios_id? {
      table = "funcionarios"
    }
  
    timestamp? recorded_at?
    enum type? {
      values = ["Entrada", "Saída"]
    }
  
    text notes? filters=trim
    int registered_by? {
      table = "user"
    }
  }

  index = [
    {type: "primary", field: [{name: "id"}]}
    {type: "btree", field: [{name: "created_at", op: "desc"}]}
  ]

  guid = "fBcfnin1zbK1xhYtyY9It6ER44M"
}