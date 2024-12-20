<cfparam name="form.username" default="">
<cfparam name="form.password" default="">
<cfparam name="form.email" default="">

<!--- Hash the password using SHA-256 for secure storage --->
<cfset hashedpassword = hash(form.password, "SHA-256")>

<!--- Insert the user details into the "users" table in the database --->
<cfquery datasource="ExpenseTracker">
    INSERT INTO users (username, password, email)
    VALUES (
        <cfqueryparam value = "#form.username#" cfsqltype="cf_sql_varchar">,
        <cfqueryparam value = "#hashedpassword#" cfsqltype="cf_sql_varchar">,
        <cfqueryparam value = "#form.email#" cfsqltype="cf_sql_varchar">
    );
</cfquery>

<cfoutput>
    <p>Registration successful! Please <a href="login.cfm">login</a> to access your account.</p>
</cfoutput>
