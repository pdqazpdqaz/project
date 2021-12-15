<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

    
    <!DOCTYPE html>
<html lang="ko">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>AS ����-AS ��ȸ</title>

    
    <link href="/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    
    <link href="/css/sb-admin-2.min.css" rel="stylesheet">

    
    <link href="/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body id="page-top">

    
    <div id="wrapper">

   
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

   
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">AS ���� </div>
            </a>

   
            <hr class="sidebar-divider my-0">

            <hr class="sidebar-divider">



   
            <li class="nav-item active">
                <a class="nav-link" href="tables.html">
                    <i class="fas fa-fw fa-table"></i>
                    <span>AS Board</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

         

        </ul>
        <div id="content-wrapper" class="d-flex flex-column">

   
            <div id="content">

   
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    

                </nav>
                <div class="container-fluid">

   
                    <h1 class="h3 mb-2 text-gray-800">AS Dashboard</h1>
                    <p class="mb-4"> AS ó�� ��û �ڷ��Դϴ�. </p>

   
                    <div class="card shadow mb-4">
                        <div class="card-body">
						    <div style="text-align:right;padding-bottom:5px;">
							<button  class="btn btn-primary" onclick='as_new()'>�ű� ���</button>
						   </div>
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>����</th>
                                            <th>����</th>
                                            <th>��ǰ��</th>
                                            <th>������</th>
                                            <th>����</th>
                                        </tr>
                                    </thead>
                                    
                                    <tbody>
                                      <tr style='display:none;'>
                                      	<td></td><td></td><td></td><td></td><td></td><td></td>
                                      </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
   

            </div>
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2020</span>
                    </div>
                </div>
            </footer>
   

        </div>
   

    </div>
   

   
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

   
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">��</span>
                    </button>
                </div>
                <div class="modal-body">
                <form id="dataform" name="dataform" >
                	<input type = 'hidden' id="numno" name="num">
					<table>
						<tr>
						<td>����</td>
						<td><input type='text' id='title' name='title'></td>
						</tr>
						<tr>
						<td>��ǰ��</td>
						<td><input type='text' id='product' name='product'></td>
						</tr>
						<tr>
						<td>������</td>
						<td><input type='text' id='buydate' name='buydate'></td>
						</tr>
						<tr>
						<td>�ּ�</td>
						<td><input type='text' id='addr' name='addr'></td>
						</tr>
						<tr>
						<td>��ȭ��ȣ</td>
						<td><input type='text' id='phone' name='phone'></td>
						</tr>
						<tr>
						<td>�̸���</td>
						<td><input type='text' id='email' name='email'></td>
						</tr>
						<tr>
						<td>���� ����</td>
						<td><textarea id='contents' name='contents'></textarea></td>
						</tr>
						<tr>
						
						<td>ó������</td>
						<td>
							<select id="step" name="step" onchange="chkStep(this)">
								<option value='REG'>���</option>
								<option value='RPR'>������</option>
								<option value='DONE'>�Ϸ�</option>
							</select>
						</td>
						
						</tr>
						<tr id="answerTr" style="display:none;">
						<td>�亯 ����</td>
						<td><textarea id='answer' name='answer'></textarea></td>
						
						</tr>
						<tr id="mailTr" style="display:none;">
						<td>���Ϲ߼�</td>
						<td>
							<select id="mailYn" name="mailYn">
								<option value='Y'>�߼�</option>
								<option value='N'>�̹߼�</option>
							</select>
						</td>
						</tr>
					</table>
				</form>
				</div>
                <div class="modal-footer">
                	<a class="btn btn-primary" href="#" onclick="as_delete()">����</a>
                    <a class="btn btn-primary" href="#" onclick="save()">����</a>
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">�ݱ�</button>
                    
                </div>
            </div>
        </div>
    </div>
    
    <form id="ff" name="ff">
    	<input type="hidden" id="num" name="num">
    </form>

    <!-- Bootstrap core JavaScript-->
    <script src="/vendor/jquery/jquery.min.js"></script>
    <script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="/vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="/js/demo/datatables-demo.js"></script>

	<script>
		
		function search(){
			var formData = new FormData();
			
			$.ajax({
				data :formData,
				type:"POST",
				url : "/asinfo/search",
				cache : false,
				processData:false,
				contentType:false,
				success : search_Handler
			});
		}
		
		function search_Handler(data){
			$('#dataTable > tbody').empty();
			if(data==null || data.length==0){
				str="<tr>";
				str+="<td colspan='6'>�˻��� �ڷᰡ �����ϴ�.</td>";
				str+="</tr>	";
				
				$('#dataTable').append(str);  // tbody ���� �߰���.
				
			}else{
				for(var i=0;i<data.length;i++){
					str="<tr onclick=\"view('"+data[i].num+"')\">";
					str+="<td>"+(i+1)+"</td>";
					str+="<td>"+data[i].title+"</td>";
					str+="<td>"+data[i].name + "</td>";
					str+="<td>"+data[i].product +"</td>";
					str+="<td>"+data[i].buydate +"</td>";
					str+="<td>"+data[i].stepNm+"</td>";
					str+="</tr>	";
					
					$('#dataTable').append(str);  // tbody ���� �߰���.
				}
				
			}
			
		}
		
		
		function view(no){
			
			$('#num').val(no);
			
			var formData = $("#ff").serialize();
			
			
			$.ajax({
				data :formData,
				type:"POST",
				url : "/asinfo/view",
				cache : false,
				success : view_Handler
			});
			
			
			
		}
		
		function view_Handler(data){
			console.log(data);
			$('#numno').val(data.num);
			$('#title').val(data.title);
			$('#email').val(data.email);
			$('#contents').val(data.contents);
			$('#answer').val(data.answer);
			$('#buydate').val(data.buydate);
			
			
			$('#email').val(data.email);
			$('#addr').val(data.addr);
			$('#phone').val(data.phone);
			$('#product').val(data.product);
			$('#step').val(data.step);
			
			if ( $('#step').val()=='DONE' ) {
				$('#answerTr').css("display","");
				$('#mailTr').css("display","");
			}else{
				$('#answerTr').css("display","none");
				$('#mailTr').css("display","none");
			}
			
			
			$('#logoutModal').modal('show');
		}
	
		function save(){
			var formData = $("#dataform").serialize();
			
			
			$.ajax({
				data :formData,
				type:"POST",
				url : "/asinfo/save",
				cache : false,
				success : save_Handler
			});
		}
		
		function save_Handler(data){
			if(data){
				alert("������ �Ϸ�Ǿ����ϴ�.");
				$('#logoutModal').modal('hide');
				search();
			}else{
				
				alert("������ ������ �߻��Ͽ����ϴ�.");
			}
		}
		
		function as_new(){
			$('#numno').val('');
			$('#title').val('');
			$('#email').val('');
			$('#contants').val('');
			$('#buydate').val('');
			
			
			$('#email').val('');
			$('#addr').val('');
			$('#phone').val('');
			$('#product').val('');
			$('#step').val('');
			
			$('#logoutModal').modal('show');
		}
		
		
		function as_delete(){
			if($('#numno').val()==''){
				alert("������ �׸��� �����Ͽ� �ֽñ� �ٶ��ϴ�.");
				return;
			}
			
			if(confirm("�����Ͻðڽ��ϱ�?")){
				var formData = $("#dataform").serialize();
				
				
				$.ajax({
					data :formData,
					type:"POST",
					url : "/asinfo/delete",
					cache : false,
					success : delete_Handler
				});
			}
		}
		
		function delete_Handler(data){
			if(data){
				alert("������ �Ϸ�Ǿ����ϴ�.");
				$('#logoutModal').modal('hide');
				search();
			}else{
				
				alert("������ ������ �߻��Ͽ����ϴ�.");
			}
		} 
		
		search();
		
		
		//----------------------------------------------------------
		
		function chkStep(obj){
			if($(obj).val()=='DONE'){
				$('#answerTr').css("display","");
				$('#mailTr').css("display","");
			}else{
				$('#answerTr').css("display","none");
				$('#mailTr').css("display","none");
			}
		}
		
	</script>

</body>

</html>