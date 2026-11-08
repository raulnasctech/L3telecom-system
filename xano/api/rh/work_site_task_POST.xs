// Add work_site_task record
query work_site_task verb=POST {
  api_group = "rh"

  input {
    dblink {
      table = "work_site_task"
    }
  }

  stack {
    db.add work_site_task {
      enforce_hidden_fields = false
      data = {created_at: "now"}
    } as $work_site_task
  }

  response = $work_site_task
  guid = "J-VD42q5abYVK5Yd3Ca8bFP3C2U"
}