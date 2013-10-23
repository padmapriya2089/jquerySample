<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>
 <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
 <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script> 
  <link rel="stylesheet" type="text/css" href="/css/style.css" /> 
<script>
 $(function() {    
var availableTags = [     "ActionScript",      "AppleScript",      "Asp",      "BASIC",      "C",      "C++",      "Clojure",      "COBOL",      "ColdFusion",      "Erlang",      "Fortran",      "Groovy",      "Haskell",      "Java",      "JavaScript",      "Lisp",      "Perl",      "PHP",      "Python",      "Ruby",      "Scala",      "Scheme"    ];    
$( "#tags" ).autocomplete({ source: availableTags    });  }); 
</script>
</head>
<body>

</body>
</html>