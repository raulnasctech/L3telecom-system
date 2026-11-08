table vacation_request {
  auth = false

  schema {
    int id
    timestamp created_at?=now {
      visibility = "private"
    }
  
    int funcionarios_id? {
      table = "funcionarios"
    }
  
    date? start_date?
    date? end_date?
    int days?
    enum status? {
      values = ["Pendente", "Aprovada", "Recusada", "Cancelada"]
    }
  
    int reviewed_by? {
      table = "user"
    }
  
    timestamp? reviewed_at?
    text review_note? filters=trim
  }

  index = [
    {type: "primary", field: [{name: "id"}]}
    {type: "btree", field: [{name: "created_at", op: "desc"}]}
  ]

  guid = "-hS5O9ka3nY22sfErmhc6m3xPE4"
}