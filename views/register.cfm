<!-- Register user --->
<cfoutput>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Register</title>
  </head>
  <body>
    <h2>Register</h2>
    <form action="../actions/registerAction.cfm" method="post">
    <label>Username</label>
    <input type="text" name="username" required /><br>

    <label>Email</label>
    <input type="email" name="email" required /><br>

    <label>Password</label>
    <input type="password" name="password" required /><br>

    <input type="submit" value="Register" />
    </form>
  </body>
</html>
</cfoutput>