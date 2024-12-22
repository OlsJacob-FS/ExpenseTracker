<cfparam name="form.username" default="">
<cfparam name="form.password" default="">

<!--- Hash the password using SHA-256 for secure comparison --->
<cfset hashedPassword = hash(form.password, "SHA-256")>

<cfquery name="userCheck" datasource="ExpenseTracker">
    SELECT id, username
    FROM users
    WHERE username = <cfqueryparam value="#form.username#" cfsqltype="cf_sql_varchar">
    AND password = <cfqueryparam value="#hashedPassword#" cfsqltype="cf_sql_varchar">
</cfquery>

<cfif userCheck.recordCount EQ 0>
  <cfoutput>
      Invalid Login credentials. <a href="../views/login.cfm">Try again</a>
  </cfoutput>
<cfelse> 
  <!--- Set Session for logged in user --->
  <cflock scope="session" timeout="30"> 
    <cfset session.userId = userCheck.id>
    <cfset session.username = userCheck.username>
  </cflock>


<cfoutput>
    Welcome, #session.username#! <a href="../views/dashboard.cfm">Go to Dashboard</a>
</cfoutput>

</cfif>


