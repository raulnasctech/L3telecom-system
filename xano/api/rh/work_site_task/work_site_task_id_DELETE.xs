// Delete work_site_task record.
query "work_site_task/{work_site_task_id}" verb=DELETE {
  api_group = "rh"

  input {
    int work_site_task_id? filters=min:1
  }

  stack {
    db.del work_site_task {
      field_name = "id"
      field_value = $input.work_site_task_id
    }
  }

  response = null
  guid = "c1aJAKX0cEnVSR8UhFzvX9cT9d4"
}