table financial_category {
  auth = false

  schema {
    int id
    timestamp created_at?=now {
      visibility = "private"
    }
  
    text name? filters=trim
    enum type? {
      values = ["Entrada", "Gasto"]
    }
  
    bool is_active?
  }

  index = [
    {type: "primary", field: [{name: "id"}]}
    {type: "btree", field: [{name: "created_at", op: "desc"}]}
  ]

  guid = "SMNB5o7JYxpUBOiXzGLz4Ck3Vqg"
}