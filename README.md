# TODO API
* API domain: http://localhost:3000
* Base URL:   http://localhost:3000/api

# Actions

# Index
Path: GET /items

Params: 
* token: String

Response:
`{"items":[{"id":9,"check":true,"color":"red","text":"bebebe"},{"id":11,"check":null,"color":null,"text":"1"}]}`

JS example:
`$.ajax({url: 'http://localhost:3000/api/items', type: 'GET', data: {token: 1}}).done(function(r){ console.log(r) })`s
-------------------------------
# Create
Path: POST /items

Params: 
* token: String
* text: String
* color: String
* check: Boolean

Response:
`{"item":{"id":8,"check":null,"color":null,"text":"1"}}`

JS example:
`$.ajax({url: 'http://localhost:3000/api/items', type: 'POST', data: {token: 1, text: 'beb', check: true, color: 'red'}})`
-------------------------------
# Update
Path: PUT /items

Params: 
* token: String
* text: String
* color: String
* check: Boolean

Response:
`{"result":1}`

JS example:
`$.ajax({url: 'http://localhost:3000/api/items', type: 'PUT', data: {token: 1, id: 8, text: 'beb', check: true, color: 'red'}})`
--------------------------------
# Delete
Path: GET /items

Params: 
* token: String
* id: String

Response:
`{"result":1}`

JS example:
`$.ajax({url: 'http://localhost:3000/api/items', type: 'DELETE', data: {token: 1, id: 10}})`

#Sign_up
Path: POST/auth

Params:
* email: String
* password: String

Response:
`{"token":55785}`

#Log_in
Path: PUTS/auth

Params:
* email: String
* password: String

Response:
`{"token":55785}`
