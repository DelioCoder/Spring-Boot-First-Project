<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Welcome</title>
    <script src="https://cdn.tailwindcss.com"></script>
  </head>
  <body class="bg-slate-200">
    <%@ include file="common/navigation.jspf" %>
    <div class="container mx-auto h-screen">
    	<div class="flex flex-col items-center justify-center self-center h-full">
	    	<p class="text-6xl py-8">Welcome, ${ name }</p>
	    	<div>
	    		<a href="list-todos" class="text-sky-500 hover:underline text-4xl">go for todo's list</a>
	    	</div>
    	</div>
    	
    </div>
    
  </body>
</html>