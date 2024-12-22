<cfcomponent>
    <!--- Define Application Settings --->
    <cfset this.name = "ExpenseTrackerApp">
    <cfset this.applicationTimeOut = createTimeSpan(0, 12, 0, 0)>
    <cfset this.sessionManagement = true>
    <cfset this.sessionTimeOut = createTimeSpan(0, 1, 0, 0)>
    <cfset this.setClientCookies = true>


    <!---On Application Start is called when the application is started --->
      <cffunction name="onApplicationStart" returnType="boolean">
          <cfreturn true>
      </cffunction>


      <!--- On Session start is called when a new session starts --->
      <cffunction name="onSessionStart" returnType="void">
      </cffunction>

      <!--- onSessionEnd is called when a session ends --->
      <cffunction name="onSessionEnd" returnType="void">
      </cffunction>
</cfcomponent>
