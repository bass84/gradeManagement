<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script type="text/javascript">
	$(document).ready(function() {
		
    
		$("#year").datepicker({
	        changeYear: true,
	        showButtonPanel: true,
	        dateFormat: 'yy',
	        onClose: function(dateText, inst) { 
	            var year = $("#ui-datepicker-div .ui-datepicker-year :selected").val();
	            $(this).datepicker('setDate', new Date(year));
	        }

		});
			$("#subjectManagementAddForm").validate({
				rules : {
					year : {
						required : true
					},
					className : {
						required : true
					},
					attendanceScoreRatio : {
						required : true,
						number : true
					}
				},
				messages: {
					year : {
						required: "연도를 입력하세요."
					},
					className : {
						required: "수업이름을 입력하세요."
					},
					attendanceScoreRatio : {
						required : "출결점수 비율을 입력하세요.",
						number : "숫자만 입력하세요."
					}
				},
				submitHandler: function() {
					if(confirm("이대로 저장하시겠습니까?")) {
						return true
					}
					else {
						return false;
					}
				}
			});
			
			$('#dataTables-example').DataTable({
                responsive: true
        	});
			$(".col-sm-6").eq(1).css("text-align", "right");
			$(".col-sm-6").eq(3).css("text-align", "left");
			//$("#dataTables-example_info").css("width", "500").css("margin-right", "0");
			$(".col-sm-6").eq(2).css("width", "42%");
	        //$(".col-sm-6").eq(0).hide();
	        //$(".col-sm-6").eq(1).hide();
	        //$(".col-sm-6").eq(2).hide();
	        //$(".col-sm-6").eq(3).hide();
	
	});
</script>
<style>
.ui-datepicker-calendar {
    display: none;
    }
</style>

<div class="row">
             <div class="col-lg-12">
                 <div class="panel panel-default">
                     <div class="panel-heading">
                         DataTables Advanced Tables
                     </div>
                     <!-- /.panel-heading -->
            <div class="panel-body">
                <div class="dataTable_wrapper">
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                        <thead>
                            <tr>
                                <th>학교이름</th>
                                <th>연도구분</th>
                                <th>학기구분</th>
                                <th>학점정보</th>
                                <th>과목이름</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="odd gradeX">
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                        </tbody>
                    </table>
                    <div style="text-align: right; position:relative; top:-87px;">
                    	<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
                                등록
                        </button>
                    </div>
                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <form id="subjectManagementAddForm" action="${pageContext.request.contextPath}/subjectManagement/addSubjectManagement" method="POST">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title" id="myModalLabel">관리정보입력</h4>
                                </div>
                                <div class="modal-body">
	                                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
					                        <tbody>
				                                <tr class="odd gradeX">
				                                	<th style="width:40%; text-align:center">학교이름</th>
				                                	<td>
				                                		<select class="form-control" id="collegeId" name="collegeId">
				                                			<option value="1">충청대</option>
				                                		</select>
				                                	</td>
				                                </tr>
					                            <tr class="odd gradeX">
					                            	<th style="width:40%; text-align:center">연도구분</th>
					                            	<td><input type="text" class="form-control" placeholder="연도를 입력하세요." id="year" name="year" style="text-align:center;"/></td>
					                            </tr>
					                            <tr class="odd gradeX">
					                            	<th style="width:40%; text-align:center">학기구분</th>
					                            	<td>
					                            		<select class="form-control" id="semester" name="semester">
				                                			<option value="1">1학기</option>
				                                			<option value="2">2학기</option>
				                                		</select>
					                            	</td>
					                            </tr>
					                            <tr class="odd gradeX">
					                            	<th style="width:40%; text-align:center">학점정보</th>
					                            	<td>
					                            		<select class="form-control" id="gradeType" name="gradeType">
				                                			<option value="1">절대평가</option>
				                                			<option value="2">상대평가</option>
				                                		</select>
					                            	</td>
					                            </tr>
					                            <tr class="odd gradeX">
					                            	<th style="width:40%; text-align:center">과목이름</th>
					                            	<td><input type="text" id="subjectName" name="subjectName" class="form-control" placeholder="과목 이름을 입력하세요." style="text-align:center;"/></td>
					                            </tr>
					                            <tr class="odd gradeX">
					                            	<th style="width:40%; text-align:center">출결점수 비율</th>
					                            	<td><input type="text" id="attendanceScoreRatio" name="attendanceScoreRatio" class="form-control" placeholder="100점 만점 출결점수를 입력하세요." style="text-align:center;"/></td>
					                            </tr>
					                        </tbody>
	                                    </table>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                                    <input type="submit" class="btn btn-primary" id="addButton" value="저장"/>
                                </div>
                            </div>
                            <!-- /.modal-content -->
                        </div>
                        </form>
                        <!-- /.modal-dialog -->
                    </div>
                </div>
            </div>
            <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
    </div>
    <!-- /.col-lg-12 -->
</div>


