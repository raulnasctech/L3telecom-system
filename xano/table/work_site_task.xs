table work_site_task {
  auth = false

  schema {
    int id
    timestamp created_at?=now {
      visibility = "private"
    }
  
    int work_site_id? {
      table = "Obras"
    }
  
    text item_name? filters=trim
    text unit? filters=trim
    decimal planned_qty?
    decimal done_qty?
    enum status? {
      values = ["a_fazer", "em_andamento", "feito"]
    }
  }

  index = [
    {type: "primary", field: [{name: "id"}]}
    {type: "btree", field: [{name: "created_at", op: "desc"}]}
  ]

  guid = "5Pdg9ITgRr9iHtXErKP9PmGfAZI"
}