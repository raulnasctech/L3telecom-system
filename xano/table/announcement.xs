table announcement {
  auth = false

  schema {
    int id
    timestamp created_at?=now {
      visibility = "private"
    }
  
    text title? filters=trim
    text message? filters=trim
    int created_by? {
      table = "user"
    }
  
    bool send_to_all?
    timestamp? expires_at?
  }

  index = [
    {type: "primary", field: [{name: "id"}]}
    {type: "btree", field: [{name: "created_at", op: "desc"}]}
  ]

  guid = "NdRWOKWFbVm8ug0avRGRCra6zcE"
}