// Get RH record
query "rh/{rh_id}" verb=GET {
  api_group = "rh"

  input {
    int rh_id? filters=min:1
  }

  stack {
    db.get RH {
      field_name = "id"
      field_value = $input.rh_id
    } as $rh
  
    precondition ($rh != null) {
      error_type = "notfound"
      error = "Not Found."
    }
  }

  response = $rh
  guid = "6aVJ2Znk7heE0dzNJ3O1ru4BVx8"
}