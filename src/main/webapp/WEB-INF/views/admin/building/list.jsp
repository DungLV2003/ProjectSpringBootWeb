<%@ taglib prefix="fprm" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp"%>
<c:url var="buildingListURL" value="/admin/building-list" />
<c:url var="buildingAPI" value="/api/building"/>
<html>
<head>
    <title>Danh sách tòa nhà</title>
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
                        <a href="#">Trang chủ</a>
                    </li>
                    <li class="active">Quản lý tòa nhà</li>
                </ul><!-- /.breadcrumb -->
            </div>

            <div class="page-content">



                <div class="row">
                    <div class="col-xs-12 ">
                        <div class="widget-box ui-sortable-handle">
                            <div class="widget-header">
                                <h5 class="widget-title">Tìm kiếm </h5>

                                <div class="widget-toolbar">

                                    <a href="#" data-action="collapse">
                                        <i class="ace-icon fa fa-chevron-up"></i>
                                    </a>

                                </div>
                            </div>

                            <div class="widget-body" style="font-family: 'Times New Roman', Times, serif">
                                <div class="widget-main">
                                    <form:form id="listForm" modelAttribute="modelSearch" action="${buildingListURL}" method="GET">
                                        <div class="row">
                                            <div class="form-group">
                                                <div class="col-xs-12 ">
                                                    <div class="col-xs-6">
                                                        <label class="name">Tên tòa nhà</label>
<%--                                                        <input id="name" name="name" type="text" class="form-control" value="${modelSearch.name}">--%>
                                                        <form:input class="form-control" path="name"/>
                                                    </div>
                                                    <div class="col-xs-6">
                                                        <label class="name">Diện tích sàn</label>
<%--                                                        <input type="number" class="form-control" name="floorArea" value="${modelSearch.floorArea}">--%>
                                                        <form:input class="form-control" path="floorArea"/>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <div class="col-xs-12 ">
                                                    <div class="col-xs-2">
                                                        <label class="name">Quận</label>
                                                        <form:select class="form-control" path="district">
                                                            <form:option value="">---Chọn Quận---</form:option>
                                                            <form:options items="${districts}"></form:options>
                                                        </form:select>

                                                    </div>
                                                    <div class="col-xs-5">
                                                        <label class="name">Phường</label>
<%--                                                        <input type="text" class="form-control" name="ward" value="${modelSearch.ward}">--%>
                                                        <form:input class="form-control" path="ward"/>
                                                    </div>
                                                    <div class="col-xs-5">
                                                        <label class="name">Đường</label>
<%--                                                        <input type="text" class="form-control" name="street" value="${modelSearch.street}">--%>
                                                        <form:input class="form-control" path="street"/>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <div class="col-xs-12 ">
                                                    <div class="col-xs-4">
                                                        <label class="name">Số tầng hầm</label>
<%--                                                        <input type="text" class="form-control" name="numberOfBasement" value="${modelSearch.numberOfBasement}">--%>
                                                        <form:input class="form-control" path="numberOfBasement"/>
                                                    </div>
                                                    <div class="col-xs-4">
                                                        <label class="name">Hướng</label>
<%--                                                        <input type="text" class="form-control" name="direction" value="${modelSearch.direction}">--%>
                                                        <form:input class="form-control" path="direction"/>
                                                    </div>
                                                    <div class="col-xs-4">
                                                        <label class="name">Hạng</label>
<%--                                                        <input type="number" class="form-control" name="level" value="${modelSearch.level}">--%>
                                                        <form:input class="form-control" path="level"/>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-xs-12 ">

                                                    <div class="col-xs-3">
                                                        <label class="name">Diện tích từ</label>
<%--                                                        <input type="number" class="form-control" name="areaFrom" value="${modelSearch.areaFrom}">--%>
                                                        <form:input class="form-control" path="areaFrom"/>
                                                    </div>

                                                    <div class="col-xs-3">
                                                        <label class="name">Diện tích đến</label>
<%--                                                        <input type="number" class="form-control" name="areaTo" value="${modelSearch.areaTo}">--%>
                                                        <form:input class="form-control" path="areaTo"/>
                                                    </div>

                                                    <div class="col-xs-3">
                                                        <label class="name">Gía thuê từ</label>
<%--                                                        <input type="number" class="form-control" name="rentPriceFrom" value="">--%>
                                                        <form:input class="form-control" path="rentPriceFrom"/>
                                                    </div>
                                                    <div class="col-xs-3">
                                                        <label class="name">Gía thuê đến</label>
<%--                                                        <input type="number" class="form-control" name="rentPriceTo" value="">--%>
                                                        <form:input class="form-control" path="rentPriceTo"/>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group"><div class="col-xs-12 ">
                                                <div class="col-xs-5">
                                                    <label class="name">Tên quản lý</label>
<%--                                                    <input type="text" class="form-control" name="managerName" value="">--%>
                                                    <form:input class="form-control" path="managerName"/>
                                                </div>
                                                <div class="col-xs-5">
                                                    <label class="name">SĐT Quản lý</label>
<%--                                                    <input type="text" class="form-control" name="managerPhone" value="">--%>
                                                    <form:input class="form-control" path="managerPhone"/>
                                                </div>
<%--                                                <div class="col-xs-2">--%>
<%--                                                    <label class="name">Nhân viên</label>--%>
<%--                                                    <select class="form-control">--%>
<%--                                                        <option value="">---Chọn Nhân viên---</option>--%>
<%--                                                        <option value="1">Lê Văn Dũng</option>--%>
<%--                                                        <option value="2">Nguyễn Thị Dung</option>--%>
<%--                                                        <option value="3">Lê Củ Chuối</option>--%>
<%--                                                    </select>--%>
<%--                                                </div>--%>
                                                <div class="col-xs-2">
                                                    <label class="name">Nhân viên</label>
                                                    <form:select class="form-control" path="staffId">
                                                        <form:option value="">---Chọn Nhân viên---</form:option>
                                                        <form:options items="${listStaff}"/>
                                                    </form:select>
                                                </div>
                                            </div>
                                            </div>
                                            <div class="form-group"><div class="col-xs-12 ">
                                                <div class="col-xs-6">
                                                    <form:checkboxes items="${typeCodes}" path="typeCode"/>
                                                </div>
                                            </div></div>
                                            <div class="form-group"> <div class="col-xs-12 ">
                                                <div class="col-xs-6">
                                                    <button type="button" class="btn btn-xs btn-success"
                                                            id="btnSearchBuilding">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="16"
                                                             height="16" fill="currentColor" class="bi bi-search"
                                                             viewBox="0 0 16 16">
                                                            <path
                                                                    d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0">
                                                            </path>
                                                        </svg>
                                                        Tìm kiếm
                                                    </button>
                                                </div>
                                            </div></div>

                                        </div>
                                        </div>
                                    </form:form>

                                </div>
                            </div>
                        </div>
                        <div class="pull-right">
                            <a href="/admin/building-edit">
                                <button class="btn btn-info" title="Thêm tòa nhà">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                         class="bi bi-building-add" viewBox="0 0 16 16">
                                        <path
                                                d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7m.5-5v1h1a.5.5 0 0 1 0 1h-1v1a.5.5 0 0 1-1 0v-1h-1a.5.5 0 0 1 0-1h1v-1a.5.5 0 0 1 1 0" />
                                        <path
                                                d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v6.5a.5.5 0 0 1-1 0V1H3v14h3v-2.5a.5.5 0 0 1 .5-.5H8v4H3a1 1 0 0 1-1-1z" />
                                        <path
                                                d="M4.5 2a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5z" />
                                    </svg>
                                </button>
                            </a>

                            <button class="btn btn-danger" title="Xóa tòa nhà" id="btnDeleteBuilding">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                     class="bi bi-building-dash" viewBox="0 0 16 16">
                                    <path
                                            d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7M11 12h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1 0-1" />
                                    <path
                                            d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v6.5a.5.5 0 0 1-1 0V1H3v14h3v-2.5a.5.5 0 0 1 .5-.5H8v4H3a1 1 0 0 1-1-1z" />
                                    <path
                                            d="M4.5 2a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5z" />
                                </svg>
                            </button>
                        </div>
                    </div>
                </div>

                <div class="col-xs-12">
                    <table id="tableList" class="table table-striped table-bordered table-hover"
                           style="margin: 3em 0 2em">
                        <thead>
                        <tr>
                            <th class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" name="checkList" value="" class="ace">
                                    <span class="lbl"></span>
                                </label>
                            </th>
                            <th>Tên tòa nhà</th>
                            <th>Địa chỉ</th>
                            <th>Số tầng hầm</th>
                            <th>Tên quản lý</th>
                            <th>SĐT</th>
                            <th>DT trống</th>
                            <th>DT sàn</th>
                            <th>DT Thuê</th>
                            <th>Phí mô giới</th>
                            <th>Thao tác</th>
                        </tr>
                        </thead>

                        <tbody>
                        <c:forEach var="item" items="${buildingList}">
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace" name="checkList" value="${item.id}">
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>${item.name}</td>
                                <td>${item.address}</td>
                                <td>${item.numberOfBasement}</td>
                                <td>${item.managerName}</td>
                                <td>${item.managerPhone}</td>
                                <td>${item.floorArea}</td>
                                <td>${item.rentArea}</td>
                                <td>Feb 12</td>
                                <td>Expiring</td>
                                <td>
                                    <div class="hidden-sm hidden-xs btn-group">
                                        <button class="btn btn-xs btn-success" title="Giao tòa nhà"
                                                onclick="assignmentBuilding(${item.id})">
                                            <i class="ace-icon glyphicon glyphicon-list"></i>
                                        </button>

                                        <a class="btn btn-xs btn-info" title="Cập nhật" href="/admin/building-edit-${item.id}">
                                            <i class="ace-icon fa fa-pencil bigger-120"></i>
                                        </a>

                                        <button class="btn btn-xs btn-danger" title="Xóa tòa nhà" onclick="deleteBuilding(${item.id})">
                                            <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                        </button>

                                    </div>


                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>

            </div><!-- /.page-content -->
        </div>
    </div><!-- /.main-content -->

<div class="modal fade" id="assignmentBuildingModal" role="dialog"
     style="font-family: 'Times New Roman', Times, serif;">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title center">Danh sách nhân viên</h4>
            </div>

            <div class="modal-body">
                <table id="staffList" class="table table-striped table-bordered table-hover">
                    <thead class="center">
                    <tr>
                        <th class="center">
                            <label class="pos-rel">
                                <input type="checkbox" class="ace">
                                <span class="lbl"></span>
                            </label>
                        </th>
                        <th class="center">Tên nhân viên</th>
                    </tr>
                    </thead>

                    <tbody class="center"></tbody>
                </table>
                <input type="hidden" id="buildingId" name="BuildingId" >
            </div>

            <div class="modal-footer center">
                <button type="button" class="btn btn-default " id="btnassignmentBuilding">Giao tòa nhà</button>
                <button type="button" class="btn btn-default " data-dismiss="modal">Đóng</button>
            </div>
        </div>
    </div>
</div>

    <script>
        function assignmentBuilding(buildingId) {
            $('#assignmentBuildingModal').modal();
            loadStaff(buildingId);
            $('#buildingId').val(buildingId);

        }

        function loadStaff(buildingId){
            $.ajax({
                url: "${buildingAPI}/" + buildingId + '/staffs',
                type: "GET",
                // data: JSON.stringify(data),  //định dạng dữ liệu từ client gửi xuống
                // contentType: "application/json", //định dạng dữ liệu từ client gửi xuống
                dataType: 'json', // Định dạng dữ liệu từ server trả lên

                success: function (response){
                    var row = '';
                    $.each(response.data, function (index,item){
                        row += '<tr>';
                        row += '<td class ="text-center"><input type="checkbox" value=' + item.staffId + ' id="checkbox_' +
                            + item.staffId + '" class ="check-box-element "' + item.checked + '/></td>';
                        row += '<td class ="text-center">' + item.fullName + '</td>';
                        row += '</tr>'
                    });
                    $('#staffList tbody').html(row)
                    console.log("Success");
                },
                error: function(response){
                    console.log("failed");
                    window.location.href = "<c:url value="/admin/building-list?message=error"/>";
                    console.log(response);
                }
            });
        }

        $('#btnassignmentBuilding').click(function(e){
            e.preventDefault();
            var data ={};
            data['buildingId'] = $('#buildingId').val();
            var staffs = $('#staffList').find('tbody input[type = checkbox]:checked').map(function(){
                return $(this).val();
            }).get();
            data['staffs'] = staffs;
            if(  data['staffs'] != ""){
                assignment(data);
            }
        });

        function assignment(data){
            $.ajax({
                url: "${buildingAPI}/" + 'assignment',
                type: "POST",
                data: JSON.stringify(data),  //định dạng dữ liệu từ client gửi xuống
                contentType: "application/json", //định dạng dữ liệu từ client gửi xuống
                dataType: 'json', // Định dạng dữ liệu từ server trả lên

                success: function (response){

                    $('#staffList tbody').html(row)
                    console.log("Success");
                },
                error: function(response){
                    console.log("Assignment Building failed");
                    window.location.href = "<c:url value="/admin/building-list?message=error"/>";
                    console.log(response);
                }
            });
        }


        $('#btnSearchBuilding').click(function (e){
            e.preventDefault(); //tránh trường hợp load nhầm địa chỉ api
            $('#listForm').submit();
        });

        function deleteBuilding(id) {
            var buildingId = [id];
            deleteBuildings(buildingId);
        }

        $('#btnDeleteBuilding').click(function(e){
            e.preventDefault();
            var buildingIds = $('#tableList').find('tbody input[type = checkbox]:checked').map(function(){
                return $(this).val();
            }).get();
            deleteBuildings(buildingIds);
        });

        function deleteBuildings(ids){
            $.ajax({
                type: "DELETE",
                url: "${buildingAPI}/" + ids,
                data: JSON.stringify(ids),  //định dạng dữ liệu từ client gửi xuống
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

    </script>

</body>
</html>
