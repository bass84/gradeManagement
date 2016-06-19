<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
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
	})
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
                    <div style="text-align: right;">
                    	<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
                                등록
                        </button>
                    </div>
                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
			                                		<select class="form-control" id="collegeName" name="collageName">
			                                			<option value="1">충청대</option>
			                                		</select>
			                                	</td>
			                                </tr>
				                            <tr class="odd gradeX">
				                            	<th style="width:40%; text-align:center">연도구분</th>
				                            	<td><input type="text" id="year" name="year"/></td>
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
				                            	<td></td>
				                            </tr>
				                        </tbody>
                                    </table>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                                    <button type="button" class="btn btn-primary">저장</button>
                                </div>
                            </div>
                            <!-- /.modal-content -->
                        </div>
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


