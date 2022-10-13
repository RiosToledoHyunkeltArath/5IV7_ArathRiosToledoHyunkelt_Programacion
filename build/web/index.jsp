<%-- 
    Document   : index
    Created on : 12 oct 2022
    Author     : Arath
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cifrado DES</title>
    </head>
    <body>
        <div>
            <%if(request.getAttribute("Falla")!=null){
                out.println("Falla. Solo archivos en .txt o .des");
            }else if(request.getAttribute("error2")!=null){
                out.println("Falla. Inserte un archivo y una clave(8 caracteres)");
            }%>
            <form action="main" method="post" enctype="multipart/form-data">
             <div>
               <label for="Clave"" >Clave</label>
               <div>
                   <input type="text" name="clave" id="Clave" placeholder="8 caracteres">
               </div>
             </div>
             <div>
               <label for="file" >Txt o Des</label>
               <div>
                   <input type="file" name="archivo" accept=".txt,.des" id="file">
               </div>
             </div>
             <button type="submit">Cifrar</button>
           </form>
        </div>
    </body>
</html>
