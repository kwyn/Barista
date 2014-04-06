express = require('express')
app = express()

#customize your grind:
app.configure =>
  #serves up your basic brew
  app.use express.static __dirname + '/public'
  #handle errors here

  #install router here
  app.use app.router
  return

#listening for orders
app.listen '4000'
console.log 'Serving up fresh to 120.0.0.1 : 4000'