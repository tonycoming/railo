<cfset error.message="">
<cfset error.detail="">
<cfparam name="url.action2" default="list">
<cfparam name="form.mainAction" default="none">
<cfparam name="form.subAction" default="none">



<!--- TODO  ---->
<cfset hasAccess=true>



<cfadmin 
	action="getORMSetting"
	type="#request.adminType#"
	password="#session["password"&request.adminType]#"
	returnVariable="settings">
<cfadmin 
	action="getORMEngine"
	type="#request.adminType#"
	password="#session["password"&request.adminType]#"
	returnVariable="engine">
    

    
<span class="CheckError">
The ORM Implementation is currently in Beta State. Its functionality can change before it's final release.
If you have any problems while using the ORM Implementation, please post the bugs and errors in our <a href="https://jira.jboss.org/jira/browse/RAILO" target="_blank" class="CheckError">bugtracking system</a>. 
<br /><br />
</span>


<cfinclude template="services.orm.list.cfm"/>

