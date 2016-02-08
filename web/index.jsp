<%-- 
    Document   : index
    Created on : Feb 7, 2016, 2:50:18 PM
    Author     : mcendrowski
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
    <head>
        <style>
            table, th, td {
                border: 1px solid black;
                border-collapse: collapse;
            }
            th, td {
                padding: 5px;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <title>JSP Page</title>
    </head>
    <body>

        <p></p>
        <form id="tableOfStringsForm" name="tableOfStringsForm" method="POST" action="TableController" >
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-md-offset-5">
                        <input type="submit" class="btn btn-info btn-large" name="submit" value="create a table of strings"/>
                    </div>
                </div>
            </div>
        </form>
        <p></p>
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <table class="table table-bordered table-striped table-hover">
                        <tr>
                            <th class="text-center">String</th>    
                            <th class="col-md-1 text-center">Length</th>
                        </tr>

                        <c:forEach var="item" items="${stringList}">

                            <tr>

                                <td class="text-left">${item}</td>
                                <td class="text-right">${fn: length(item)}</td>


                            </tr>
                        </c:forEach>


                    </table>
                </div>
            </div>
        </div>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    </body>
</html>
