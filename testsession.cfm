<cfoutput>
    <cflock scope="session" timeout="10" type="exclusive">
      <cfset session.testVariable = "session is working great">
    </cflock>

  <!--- Output the session variable --->

  Session Variable:::: #session.testVariable#

  </cfoutput>
