<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 2/29/2024
  Time: 5:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<c:url var="buildingAPI" value="/api/building" />
<html>
<head>
    <title>Thêm tòa nhà</title>
</head>
<body>
    <div class="main-content">
        <div class="main-content-inner">
            <div class="breadcrumbs" id="breadcrumbs">
                <script type="text/javascript">
                    try { ace.settings.check('breadcrumbs', 'fixed') } catch (e) { }
                </script>

                <ul class="breadcrumb">
                    <li>
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="#">Home</a>
                    </li>
                    <li class="active">Dashboard</li>
                </ul><!-- /.breadcrumb -->


            </div>

            <div class="page-content">

                <div class="page-header">
                    <h1>
                        Dashboard
                        <small>
                            <i class="ace-icon fa fa-angle-double-right"></i>
                            Quản lý tòa nhà
                        </small>
                    </h1>
                </div><!-- /.page-header -->


                <div class="row">
                    <div class="col-xs-12 ">


                    </div>
                </div>

                <div class="row" style="font-family: 'Times New Roman', Times, serif;">
                    <form:form modelAttribute="buildingEdit" id="listForm" method="get">
                        <div class="col-xs-12 ">
                            <form class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label class="col-xs-2">Tên tòa nhà</label>
                                    <div class="col-xs-10">
                                        <form:input path="name" class="form-control"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-2">Quận</label>
                                    <div class="col-xs-2">
                                        <form:select class="form-control" path="district">
                                            <form:option value="">---Chọn Quận---</form:option>
                                            <form:options items="${districts}"></form:options>
                                        </form:select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-2">Phường</label>
                                    <div class="col-xs-10">
                                        <form:input path="ward" class="form-control"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-2">Đường</label>
                                    <div class="col-xs-10">
                                        <form:input path="street" class="form-control" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-2">Kết cấu</label>
                                    <div class="col-xs-10">
                                        <form:input path="structure" class="form-control"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-2">Số tầng hầm</label>
                                    <div class="col-xs-10">
                                        <form:input path="numberOfBasement" class="form-control"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-2">Diện tích sàn</label>
                                    <div class="col-xs-10">
                                        <form:input path="floorArea" class="form-control"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-2">Hướng</label>
                                    <div class="col-xs-10">
                                        <form:input path="direction" class="form-control"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-2">Hạng</label>
                                    <div class="col-xs-10">
                                        <form:input path="level" class="form-control"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-2">Diện tích thuê</label>
                                    <div class="col-xs-10">
                                        <form:input path="rentArea" class="form-control"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-2">Gía thuê</label>
                                    <div class="col-xs-10">
                                        <form:input path="rentPrice" class="form-control"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-2">Mô tả giá</label>
                                    <div class="col-xs-10">
                                        <input type="text" id="rentpricedescription" name="rentpricedescription" class="form-control"/>
                                    </div>
                                </div>
                                <!-- <div class="form-group">
                                    <label class="col-xs-2">Phí dịch vụ</label>
                                    <div class="col-xs-10">
                                        <input type="number" id="name" name="name" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-2">Phí ô tô</label>
                                    <div class="col-xs-10">
                                        <input type="number" id="name" name="name" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-2">Phí mô tô</label>
                                    <div class="col-xs-10">
                                        <input type="number" id="name" name="name" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-2">Phí ngoài giờ</label>
                                    <div class="col-xs-10">
                                        <input type="number" id="name" name="name" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-2">Tiền điện</label>
                                    <div class="col-xs-10">
                                        <input type="number" id="name" name="name" class="form-control">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-2">Đặt cọc</label>
                                    <div class="col-xs-10">
                                        <input type="number" id="name" name="name" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-2">Thanh toán</label>
                                    <div class="col-xs-10">
                                        <input type="number" id="name" name="name" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-2">Thời hạn thuê</label>
                                    <div class="col-xs-10">
                                        <input type="number" id="name" name="name" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-2">Thời gian trang trí</label>
                                    <div class="col-xs-10">
                                        <input type="number" id="name" name="name" class="form-control">
                                    </div>
                                </div> -->
                                <div class="form-group">
                                    <label class="col-xs-2">Tên quản lý</label>
                                    <div class="col-xs-10">
                                        <form:input path="managerName" class="form-control"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-2">SĐT Quản lý</label>
                                    <div class="col-xs-10">
                                        <form:input path="managerPhone" class="form-control"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-2">Phí mô giới</label>
                                    <div class="col-xs-10">
                                        <form:input path="brokerageFee" class="form-control"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-2">Loại tòa nhà</label>
                                    <div class="col-xs-10">
                                        <form:checkboxes items="${typeCodes}" path="typeCode"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-2">Ghi chú</label>
                                    <div class="col-xs-10">
                                        <form:input path="note" class="form-control"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-2"></label>
                                    <div class="col-xs-10">
                                        <c:if test="${not empty buildingEdit.id}">
                                            <button type="button" class="btn btn-primary" id="btnAddOrUpdateBuilding" >Cập nhật tòa nhà</button>
                                            <button type="button" class="btn btn-danger" id="btnCancel">Hủy thao tác</button>
                                        </c:if>
                                        <c:if test="${empty buildingEdit.id}">
                                            <button type="button" class="btn btn-primary" id="btnAddOrUpdateBuilding" >Thêm tòa nhà</button>
                                            <button type="button" class="btn btn-danger" id="btnCancel">Hủy thao tác</button>
                                        </c:if>
                                    </div>
                                </div>
                                    <form:hidden path="id" id="buildingId" />
                            </form>
                        </div>
                    </form:form>

                </div>
            </div><!-- /.page-content -->
        </div>
    </div><!-- /.main-content -->

    <script>
        //Thu thap du lieu
        $('#btnAddOrUpdateBuilding').click(function(){
            var data = {};
            var typeCode =[];
            var formData = $('#listForm').serializeArray();
            $.each(formData, function(i, v){
                if(v.name != 'typeCode'){
                    data["" + v.name + ""] = v.value
                }else{
                    typeCode.push(v.value);
                }
            });
            data['typeCode'] = typeCode;
            if(typeCode != ''){
                addOrUpdateBuilding(data);
            }else {
                window.location.href = "<c:url value="/admin/building-edit?typeCode=require"/>";
            }

        });

        function addOrUpdateBuilding(data){
            //Call API
            $.ajax({
                type: "POST",
                url: "${buildingAPI}",
                data: JSON.stringify(data),  //định dạng dữ liệu từ client gửi xuống
                contentType: "application/json", //định dạng dữ liệu từ client gửi xuống
                dataType: JSON, // Định dạng dữ liệu từ server trả lên

                success: function(response){
                    console.log("Success");
                },
                error: function(response){
                    console.log("failed");
                    console.log(response);
                }
            });
        }

        $('#btnCancel').click(function (){
           window.location.href = "/admin/building-list";
        });

    </script>

</body>
</html>
