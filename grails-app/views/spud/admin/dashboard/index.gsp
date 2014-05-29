<html>
	<head>
		<meta name="layout" content="spud/admin/application"/>
		<title>Spud Admin</title>

  </head>
  <body>
    <div class="sortable row">
      <g:each in="${adminApplications}" var="adminApplication" status="index">
        <div class="admin_application col-md-2 col-sm-3 col-xs-6" id="application_name_${adminApplication.name}">
          <g:link controller="${adminApplication.url.controller}" action="${adminApplication.url.action}" namespace="${adminApplication.url.namespace}">
            <div class="image_wrapper"><asset:image src="${adminApplication.thumbnail}"/></div>
            <span class="application_name">${adminApplication.name}</span>
          </g:link>
        </div>
      </g:each>

    </div>
    <div id="dashboard-editmode">
      <a href="#" class="btn btn-primary" id="dashboard-editsave">Done Editing</a>&nbsp;<a id="dashboard-editcancel" href="#" class="btn">Cancel</a>
    </div>
    <script type="text/javascript">
    $(document).ready(Spud.Admin.Dashboard.init);
    </script>

  </body>
</html>
