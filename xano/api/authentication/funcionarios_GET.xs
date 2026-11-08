// Query all funcionarios records
query funcionarios verb=GET {
  api_group = "Authentication"

  input {
  }

  stack {
    db.query funcionarios {
      return = {type: "list"}
    } as $funcionarios
  }

  response = $funcionarios
  guid = "-o5HkBNyZePWY5Nf0QT8V0m5c6o"
}