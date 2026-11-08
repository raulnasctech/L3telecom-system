table announcement_recipient {
  auth = false

  schema {
    int id
    timestamp created_at?=now {
      visibility = "private"
    }
  
    int announcement_id? {
      table = "announcement"
    }
  
    int funcionarios_id? {
      table = "funcionarios"
    }
  
    timestamp? read_at?
  }

  index = [
    {type: "primary", field: [{name: "id"}]}
    {type: "btree", field: [{name: "created_at", op: "desc"}]}
  ]

  guid = "CmSSAkymBSqlme39-XtNu1Po-Ek"
}