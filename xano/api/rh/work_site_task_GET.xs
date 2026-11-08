// Query all work_site_task records
query work_site_task verb=GET {
  api_group = "rh"

  input {
  }

  stack {
    db.query work_site_task {
      return = {type: "list"}
    } as $work_site_task
  }

  response = $work_site_task
  guid = "FibZtN2e3ao4SbQ8FvXpP4C7xdk"
}