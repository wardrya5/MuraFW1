<cfsilent>
<!---

This file is part of MuraFW1

Copyright 2010-2015 Stephen J. Withington, Jr.
Licensed under the Apache License, Version v2.0
http://www.apache.org/licenses/LICENSE-2.0

--->
</cfsilent>
<cfoutput>
	<div class="row-fluid mfw1-example">
		<h3>Application ##3</h3>
		<div>
			<ul class="nav nav-tabs" role="tablist">
				<li<cfif rc.action eq 'app3:main.default'> class="active"</cfif>>
					<a href="#buildURL('app3:main')#">Registrations</a>
				</li>
				<li<cfif rc.action eq 'app3:main.form'> class="active"</cfif>>
					<a href="#buildURL('app3:main.form')#">Add Registration</a>
				</li>
			</ul>
		</div>
		<div>#body#</div>

		<!--- Admin Link --->
		<cfif $.currentUser().isSuperUser()>
			<div class="row">
				<div class="col-md-12">
					<div class="mfw1-admin-links">
						<a class="btn btn-primary frontEndToolsModal" href="#rc.$.globalConfig('context')#/plugins/#rc.pc.getDirectory()#/index.cfm?MuraFW1Action=admin:main.default&amp;compactDisplay=true">Admin</a>
					</div>
				</div>
			</div>
		</cfif>
		<!--- /Admin Link --->

	</div>
</cfoutput>