// Get Obras record
query "obras/{obras_id}" verb=GET {
  api_group = "rh"

  input {
    int obras_id? filters=min:1
  }

  stack {
    db.get Obras {
      field_name = "id"
      field_value = $input.obras_id
    } as $obras
  
    precondition ($obras != null) {
      error_type = "notfound"
      error = "Not Found."
    }
  }

  response = $obras
  guid = "DUBsU1hP4ihia2_eJGvZwpXO6N8"
}