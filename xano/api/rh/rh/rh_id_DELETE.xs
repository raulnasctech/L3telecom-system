// Delete RH record.
query "rh/{rh_id}" verb=DELETE {
  api_group = "rh"

  input {
    int rh_id? filters=min:1
  }

  stack {
    db.del RH {
      field_name = "id"
      field_value = $input.rh_id
    }
  }

  response = null
  guid = "EAGMeKABAawUcNbmEndjlm_36o4"
}