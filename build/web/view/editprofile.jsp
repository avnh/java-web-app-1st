<%-- 
    Document   : editprofile
    Created on : Oct 18, 2017, 4:29:40 PM
    Author     : Viet Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <title>Students information</title>

    <style type="text/css">

        body {

            text-align: center;
            min-width: 860px;
            background: #F1F1F1;

        }
        #menu{
            width: 1000px;
            text-align: right;
            /*color: #fff;*/
        }
        #wrapper {
            width: 800px;
            margin: 0 auto;
            background: #fff;
            font-family:"Arial";
        }
        #section{
            text-align: left;
            color: #fff;
        }


    </style>

</head>

<body>

    <div id="menu">
        <a href='home' style='padding:3pt 6pt 3pt 6pt'>Home</a>
        <a href='logout' style='padding:3pt 6pt 3pt 6pt'>Logout</a>
    </div>

    <div id="wrapper">

        <h1>Students information</h1>

        <table border="0" cellpadding="5" style='font-size: 14px; text-align: left'>


            <tr>
                <td style='width:800px; background:#006997;padding:3pt 6pt 3pt 6pt'>
                    <div id ="section">
                        <b>Basic information</b>
                    </div>
                </td>		
            </tr>
            <tr><td>
                    <table border="0" cellpadding="5" style='font-size: 14px'>
                        <tr>
                            <td>
                                <!--<?php echo '<input type="hidden" id="uid" value="'.$row[0].'">' ?>-->
                                <p>
                                    <b>Fullname: </b>
                                <div class="fullname">
                                    <span class="text">${user.fullname} </span>
                                    <a href="#" class="edit" id="fname-edit">Edit</a>
                                    <a href="#" class="save" id="fname-save">Save</a>
                                    <a href="#" class="cacel" id="fname-cacel">Cacel</a>
                                </div>
                                </p>

                                <p>
                                    <b>Age: </b>
                                <div class="age">
                                    <span class="text">${user.age} </span>
                                    <a href="#" class="edit" id="age-edit">Edit</a>
                                    <a href="#" class="save" id="age-save">Save</a>
                                    <a href="#" class="cacel" id="age-cacel">Cacel</a>
                                </div>
                                </p>

                                <p>
                                    <b>Email: </b>
                                <div class="email">
                                    <span class="text">${user.email} </span>
                                    <a href="#" class="edit" id="email-edit">Edit</a>
                                    <a href="#" class="save" id="email-save">Save</a>
                                    <a href="#" class="cacel" id="email-cacel">Cacel</a>
                                </div>
                                </p>

                            </td>	
                        </tr>
                    </table>
                </td></tr>
            <tr>
                <td style='width:800px; background:#006997;padding:3pt 6pt 3pt 6pt'>
                    <div id ="section">
                        <b>More information</b>
                    </div>
                </td>		
            </tr>

            <tr><td>
                    <p>
                        <b>Job: </b>
                    <div class="job">
                        <span class="text">${user.job} </span>
                        <a href="#" class="edit" id="job-edit">Edit</a>
                        <a href="#" class="save" id="job-save">Save</a>
                        <a href="#" class="cacel" id="job-cacel">Cacel</a>
                    </div>
                    </p>

                    <p>
                        <b>Introduction: </b>
                    <div class="introduction">
                        <span class="text">${user.introduction} </span>
                        <a href="#" class="edit" id="introduction-edit">Edit</a>
                        <a href="#" class="save" id="introduction-save">Save</a>
                        <a href="#" class="cacel" id="introduction-cacel">Cacel</a>
                    </div>
                    </p>

                </td></tr>

        </table>
    </div>
    <script src='templates/js/jquery.min.js'></script>
    <script src="templates/js/edit.js"></script>

</body>

</html>
