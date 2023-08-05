<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="webjars/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.standalone.min.css" rel="stylesheet" >
    <title>New Todo</title>
  </head>
  <body class="bg-slate-200	">
  	<%@ include file="common/navigation.jspf" %>
  	<div class="container mx-auto">
  		<div class="flex flex-wrap">
  			<div class="w-full my-4">
			  	<p class="text-2xl py-2">Enter Todo Details</p>
  			</div>
		  	<div class="w-full">
		  		<form:form method="POST" modelAttribute="todo">
		  		
		  			<form:input
		  				type="hidden"
		  				path="id"
		  			/>
		  			
		  			<fieldset class="mb-3">
		  				<form:label path="description" cssClass="text-gray-700 text-lg font-bold mr-4">Description</form:label>
		  				<form:input type="text" path="description" required="required" cssClass="shadow appearance-none border rounded w-80 py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline mb-2"/>
		  				<form:errors path="targetDate" cssClass="text-red-500" />
		  			</fieldset>

		  			<form:errors path="description" cssClass="text-gray-500" />
		  			
		  			<fieldset class="mb-3">
		  				<form:label path="targetDate" cssClass="text-gray-700 text-lg font-bold mr-4">Target Date</form:label>
		  				<form:input type="text" path="targetDate" required="required" cssClass="shadow appearance-none border rounded w-80 py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline mb-2"/>
		  				<form:errors path="targetDate" cssClass="text-red-500" />
		  			</fieldset>	
		  			
		  			<fieldset class="mb-3">
		  				<form:label path="done" cssClass="text-gray-700 text-lg font-bold mr-4">Done?</form:label>
		  				<form:radiobutton path="done" value="true" cssClass="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600"/>
		  				<form:errors path="done" cssClass="text-red-500" />
		  			</fieldset>
		  			<button
		  				type="submit"
		    			class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded-full w-80"
		  			>
		  				Submit
		  			</button>
		  			
		  		</form:form>
		  	</div>
  		</div>
  	</div>
  	<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
  	<script src="webjars/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
	<script type="text/javascript">
		$('#targetDate').datepicker({
		    format: 'yyyy-mm-dd'
		});
	</script>
  </body>
</html>