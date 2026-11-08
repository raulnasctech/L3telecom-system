table financial_entry {
  auth = false

  schema {
    int id
    timestamp created_at?=now {
      visibility = "private"
    }
  
    enum type? {
      values = ["entrada", "gasto"]
    }
  
    int category_id? {
      table = "financial_category"
    }
  
    decimal amount?
    date? entry_date?
    text description? filters=trim
    text counterparty? filters=trim
    enum payment_method? {
      values = ["pix", "boleto", "cartao", "transferencia", "dinheiro"]
    }
  
    int registered_by? {
      table = "user"
    }
  }

  index = [
    {type: "primary", field: [{name: "id"}]}
    {type: "btree", field: [{name: "created_at", op: "desc"}]}
  ]

  guid = "9IS5krZTqIF0kAJq-ANdN_9bXMI"
}