table work_site_log {
  auth = false

  schema {
    int id
    timestamp created_at?=now {
      visibility = "private"
    }
  
    int work_site_id? {
      table = "Obras"
    }
  
    date? log_date?
    enum type? {
      values = ["Realizado", "Planejado"]
    }
  
    text description? filters=trim
    int created_by? {
      table = "user"
    }
  }

  index = [
    {type: "primary", field: [{name: "id"}]}
    {type: "btree", field: [{name: "created_at", op: "desc"}]}
  ]

  guid = "qECIxqcGDWoM_hrOJu3yIFAKjfA"
}