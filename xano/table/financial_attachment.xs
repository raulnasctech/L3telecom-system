table financial_attachment {
  auth = false

  schema {
    int id
    timestamp created_at?=now {
      visibility = "private"
    }
  
    int financial_entry_id? {
      table = "financial_entry"
    }
  
    image? file?
    enum kind? {
      values = ["nota_fiscal", "comprovante", "boleto", "outro"]
    }
  
    int uploaded_by? {
      table = "user"
    }
  }

  index = [
    {type: "primary", field: [{name: "id"}]}
    {type: "btree", field: [{name: "created_at", op: "desc"}]}
  ]

  guid = "friXXEUMoVUy6HJoxOMkH5Tg8SY"
}