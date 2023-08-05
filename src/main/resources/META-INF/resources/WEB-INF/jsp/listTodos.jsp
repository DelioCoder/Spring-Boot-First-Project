<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Todo list</title>
  </head>
  <body class="bg-slate-200	">
  	<%@ include file="common/navigation.jspf" %>
  	<div class="container mx-auto">
  		<div class="flex flex-wrap">
  			<div class="w-full my-4">
			  	<p class="text-2xl py-2">hello, ${ name }</p>
			  	<p class="text-5xl">Your <span class="text-blue-500">Todo List</span></p>
  			</div>
		  	<table class="w-full text-sm text-left text-gray-500 dark:text-gray-400 my-4">
		  		<thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
		  			<tr>
		  				<th scope="col" class="px-6 py-3">Id</th>
			  			<th scope="col" class="px-6 py-3">Description</th>
			  			<th scope="col" class="px-6 py-3">Target Date</th>
			  			<th scope="col" class="px-6 py-3">Is Done?</th>
			  			<th scope="col" class="px-6 py-3"></th>
			  			<th scope="col" class="px-6 py-3"></th>
		  			</tr>
		  		</thead>
		  		<tbody>
				    <c:forEach items="${ todos }" var="todo">
				    	<tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
				    		<td class="px-6 py-4">${ todo.id }</td>
				    		<td class="px-6 py-4">${ todo.description }</td>
				    		<td class="px-6 py-4">${ todo.targetDate }</td>
				    		<td class="px-6 py-4">${ todo.done }</td>
				    		<td> <a href="delete-todo?id=${ todo.id }" class="bg-red-400 hover:bg-gray-600 text-white font-bold py-2 px-4 rounded cursor-pointer">Delete</a> </td>
            	    		<td> <a href="update-todo?id=${ todo.id }" class="bg-yellow-400 hover:bg-gray-600 text-white font-bold py-2 px-4 rounded cursor-pointer">Update</a> </td>

				    	</tr>
				    </c:forEach>  		
		  		</tbody>
		  	</table>
		  	<div class="w-full my-2">
		  		<a href="add-todo"
		  			class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded cursor-pointer	">
		  			Add todo
		  		</a>
		  	</div>
  		</div>
  	</div>
  </body>
</html>