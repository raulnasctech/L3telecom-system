// Get work_site_task record
query "work_site_task/{work_site_task_id}" verb=GET {
  api_group = "rh"

  input {
    int work_site_task_id? filters=min:1
  }

  stack {
    db.get work_site_task {
      field_name = "id"
      field_value = $input.work_site_task_id
    } as $work_site_task
  
    precondition ($work_site_task != null) {
      error_type = "notfound"
      error = "Not Found."
    }
  }

  response = $work_site_task
  guid = "aN-mergiHQMcjb5gp_WoAfCy-s0"
}