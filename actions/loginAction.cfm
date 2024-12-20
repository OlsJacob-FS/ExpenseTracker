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


