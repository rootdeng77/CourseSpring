<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Bootstrap 学生信息管理系统</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <nav class="navbar navbar-default" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">假装这里有什么</a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active">
                            <a href="#">假装这里有什么</a>
                        </li>
                        <li>
                            <a href="#">假装这里有什么</a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">假装这里有什么<strong class="caret"></strong></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="#">Action</a>
                                </li>
                                <li>
                                    <a href="#">Another action</a>
                                </li>
                                <li>
                                    <a href="#">Something else here</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="#">Separated link</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="#">One more separated link</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <form action="${pageContext.request.contextPath}/findStudentByName?name=name" class="navbar-form navbar-left" role="search" method="get">
                        <div class="form-group">
                            <input  type="text" name="name" class="form-control"/>
                        </div> <button type="submit" class="btn btn-default">Submit</button>
                    </form>
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="#">假装这里有什么</a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">假装这里有什么<strong class="caret"></strong></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="#">Action</a>
                                </li>
                                <li>
                                    <a href="#">Another action</a>
                                </li>
                                <li>
                                    <a href="#">Something else here</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="#">Separated link</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>

            </nav>
            <table class="table table-striped table-hover">
                <thead>
                <tr>
                    <th>
                        姓名
                    </th>
                    <th>
                        年龄
                    </th>
                    <th>
                        年级
                    </th>
                    <th>
                        学号
                    </th>
                    <th>
                        地址
                    </th>
                    <th>
                        状态
                    </th>
                    <th>
                        操作
                    </th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="student" items="${rows}">
                <tr>
                    <td>
                        ${student.name}
                    </td>
                    <td>
                        ${student.age}
                    </td>
                    <td>
                        ${student.gender}
                    </td>
                    <td>
                        ${student.number}
                    </td>
                    <td>
                        ${student.address}
                    </td>
                    <td>
                        ${student.status}
                    </td>
                    <td>
                        <a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#StudentEditDialog" onclick= "editStudent(${student.id})">修改</a>
                        <div class="modal fade" id="StudentEditDialog" role="dialog" aria-labelledby="myModalLabel" tabindex="-1">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                        <h4 class="modal-title" id="myModalLabel">
                                            修改学生信息
                                        </h4>
                                    </div>
                                    <div class="modal-body">
                                        <form role="form" id="editStudentForm">
                                            <input type="hidden" name="id" value="${student.id}"/>
                                            <div class="form-group">
                                                <label for="exampleName">姓名</label><input type="text"  class="form-control" id="exampleName" name="name"/>
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleAge">年龄</label><input type="text"  class="form-control" id="exampleAge" name="age"/>
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleGender">年级</label><input type="text"  class="form-control" id="exampleGender" name="gender"/>
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleNumber">学号</label><input type="text" value="${student.number}" class="form-control" id="exampleNumber" name="number"/>
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleAddress">地址</label><input type="text" value="${student.address}" class="form-control" id="exampleAddress" name="address"/>
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleStatus">状态</label><input type="text" value="${student.status}" class="form-control" id="exampleStatus" name="status"/>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                        <button type="button" class="btn btn-default" data-dismiss="modal" onclick="updateStudent()">保存修改</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a href="#" class="btn btn-danger btn-xs" onclick="deleteStudent(${student.id})">删除</a>
                    </td>
                </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    <h1 align="center">添加学生信息</h1>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <form role="form" action="/addStudent">
                <div class="form-group">
                    <label for="exampleInputEm">姓名</label><input type="text" class="form-control"  value="${student.name}" id="exampleInputEm" name="name"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputPa">年龄</label><input type="text" class="form-control" value="${student.age}" id="exampleInputPa" name="age"/>
                </div>
                <div class="form-group">
                    <label for="exampleGende">年级</label><input type="text" class="form-control" value="${student.gender}" id="exampleGende" name="gender"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputNumbe">学号</label><input type="text" class="form-control" value="${student.number}" id="exampleInputNumbe" name="number"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputAddres">地址</label><input type="text" class="form-control" value="${student.address}" id="exampleInputAddres" name="address"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputStatu">状态</label><input type="text" class="form-control" value="${student.status}" id="exampleInputStatu" name="status"/>
                </div>
                 <button type="submit" class="btn btn-default">提交</button>
            </form>
        </div>
    </div>
</div>
<div align="center" class="footer">
    <div class="wrap">
        <div class="section group">
        </div>
    </div>
    <div class="copy_right">
        <p>星际联邦-星际舰队企业号-2019-5-17</p>
    </div>
</div>
<script type="text/javascript">
    function editStudent(id) {
        $.ajax({
            type:"get",
            url:"/getStudentById",
            data:{"id":id},
            success:function(data) {
                $("#exampleName").val(data.name);
                $("#exampleAge").val(data.age);
                $("#exampleGender").val(data.gender);
                $("#exampleNumber").val(data.number)
                $("#exampleAddress").val(data.address)
                $("#exampleStatus").val(data.status)
            }
        });
    }
    function updateStudent() {
        $.post("/updateStudent",$("#editStudentForm").serialize(),function(data){
            if(data =="OK"){
                alert("学生信息更新成功！");
                window.location.reload();
            }else{
                alert("学生信息更新失败！");
                window.location.reload();
            }
        });
    }
    // 删除学生
    function deleteStudent(id) {
        if(confirm('确实要删除该学生吗?')) {
            $.post("/deleteStudent",{"id":id},
                function(data){
                    if(data =="OK"){
                        alert("学生删除成功！");
                        window.location.reload();
                    }else{
                        alert("删除学生失败！");
                        window.location.reload();
                    }
                });
        }
    }
</script>

</body>
</html>