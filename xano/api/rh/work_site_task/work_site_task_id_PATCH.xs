// Edit work_site_task record
query "work_site_task/{work_site_task_id}" verb=PATCH {
  api_group = "rh"

  input {
    int work_site_task_id? filters=min:1
    dblink {
      table = "work_site_task"
    }
  }

  stack {
    util.get_raw_input {
      encoding = "json"
      exclude_middleware = false
    } as $raw_input
  
    db.patch work_site_task {
      field_name = "id"
      field_value = $input.work_site_task_id
      data = `$input|pick:($raw_input|keys)`|filter_null|filter_empty_text
    } as $work_site_task
  }

  response = $work_site_task
  guid = "d9ApELlnhThbjMts9mz9_KW1VME"
}