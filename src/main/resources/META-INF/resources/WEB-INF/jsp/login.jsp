<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>
    <script src="https://cdn.tailwindcss.com"></script>
  </head>
  <body>
    
    <div class="container mx-auto h-screen">
    	<div class="flex flex-col items-center justify-center self-center h-full">
	    	<div class="w-2/6">
		    	<form method="post">
		    		<pre> ${ errorMessage } </pre>
		    		<label class="block text-gray-700 text-sm font-bold mb-2">
		    		Name:
		    		</label>
		    		<input
		    			type="text"
		    			name="name"
		    			class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline mb-2"
		    		/>
		    		<label class="block text-gray-700 text-sm font-bold mb-2">
		    			Password
		    		</label>
		    		<input
		    			type="password"
		    			name="password"
		    			class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline mb-2"
		    		/>
		    		<button
		    			type="submit"
		    			class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded-full w-full"
		    		>
		    		Login
		    		</button>
		    	</form>
	    	</div>
    	</div>
    	
    </div>
    
  </body>
</html>