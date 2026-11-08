// Query all Obras records
query obras verb=GET {
  api_group = "rh"

  input {
  }

  stack {
    db.query Obras {
      return = {type: "list"}
    } as $obras
  }

  response = $obras
  guid = "cVjpiw6EScf2KP_md9dIWN6ueLU"
}