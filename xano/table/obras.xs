table Obras {
  auth = false

  schema {
    int id
    timestamp created_at?=now {
      visibility = "private"
    }
  
    text nome? filters=trim
    text client? filters=trim
    text address? filters=trim
    int responsible_id? {
      table = "funcionarios"
    }
  
    date? start_date?
    date? expected_end_date?
    enum status? {
      values = ["planejada", "em_andamento", "concluida", "pausada"]
    }
  }

  index = [
    {type: "primary", field: [{name: "id"}]}
    {type: "btree", field: [{name: "created_at", op: "desc"}]}
  ]

  guid = "n1IErPGvGykm5OMlRmHILSi1Iko"
}