<?php $this->load->view('shared/css_content');?>
    <div class="row" id="barang">
        <div class="col-md-12">
            <div class="card">
                <div class="card-content">
                    <h3 class="card-title"> <i class="fa fa fa-sign-out mr-10" aria-hidden="true"></i>  DAFTAR STOK BARANG</h3>
                    <div class="toolbar">
                    </div>
                    <div class="material-datatables">
                        <div class="form-tambah">
                        </div>
                        <table id="kios-datatable" class="table table-striped table-no-bordered table-hover" cellspacing="0" width="100%" style="width:100%">
                            <div data-container="add-form" class="row hide" id="add-panel">
                                <div class="form-group-barang" id="form-input-barang">
                                    <div class="col-sm-12 row-barang">
                                        <div class="row small-list-margin" style="margin-bottom:5px">
                                            <div class="col-lg-1 col-md-1 col-sm-1 text-bold"  style="padding-top: 12px">
                                                Nama Barang
                                            </div>
                                            <div class="col-lg-3 col-md-3 col-sm-3">
                                                <input type="text" name="nama" class="form-control" required>
                                                <input type="hidden" name="id_barang" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-12" style="margin-top:10px">
                                        <button class="btn btn-sm btn-success" id="save-barang">Save</button>
                                            <a class="btn btn-sm btn-warning" href="" id="cancel-add">Cancel</a>
                                    </div>
                                </div>
                            </div>
                            <thead>
                            <tr>
                                <th>No</th>
                                <th>nama barang</th>
                                <th>stok terbaru</th>
                                <th class="actions">Actions</th>
                            </tr>
                            </thead>							
                            <tbody>
                            <?php //print_r($barang);?>
                            <?php $no = 1; if(isset($barang)){ foreach($barang as $row) { ?>
                                <tr>
                                    <td><?php echo $no++;?></td>
                                    <td><?php echo $row->nama;?></td>
                                    <td class="text-right"><?php echo ($row->stok !='')?$row->stok:0;?></td>
                                    <td>
                                        <button class="btn btn-sm btn-info btn-edit" data-nama="<?php echo $row->nama;?>" data-id="<?php echo $row->id;?>"><i class="fa fa-pencil"></i> Edit Nama</button>
                                        <button class="btn btn-sm btn-info btn-edit-stok" data-nama="<?php echo $row->nama;?>" data-id="<?php echo $row->id;?>" data-stok="<?php echo ($row->stok !='')?$row->stok:0;?>"><i class="fa fa-pencil"></i> Edit Stok</button>
                                        <button class="btn btn-sm btn-danger btn-delete" data-nama="<?php echo $row->nama;?>" data-id="<?php echo $row->id;?>" data-stok="<?php echo ($row->stok !='')?$row->stok:0;?>"><i class="fa fa-times"></i> Delete</button>
                                    </td>
                                </tr>
                            <?php }}?>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- end content-->
            </div>
            <!--  end card  -->
        </div>
        <!-- end col-md-12 -->
    </div>
<?php
$this->load->view('shared/js_content');
?>
<script type="text/javascript">
    $(document).ready(function() {	   
	    var dt_table;    			
    	dt_table = $("#kios-datatable").DataTable({
						"dom": "<'dt-actionbutton'><'dt-actionbulk'>flrB<'dt-advance-search'><'dt-add-new'><'dt-alert col-md-12 no-padding'>tip",
                        "order" : [[0, 'asc']],
				        "buttons": dtBtn
    				});	
		var initBar = function(){
            var actionbutton = '';
            actionbutton += '<button type="button" id="add" class="btn-new btn-single-group btn btn-sm btn-primary" style="margin-left:5px"><i class="fa fa-plus"></i><span style="padding-left:5px">Baru</span></button>';
           $(".dt-actionbutton").html(actionbutton);
			$('[data-container="add-form"]').prependTo($('.dt-add-new'));
        }
     		
		initBar();	
		$(this).on( 'draw.dt', function (e, settings) {
            $('.dt-filter input[type="search"]').keyup(function(){
                console.log('search draw');
                dt_table.draw();
            });
		    console.log( 'Redraw data at: '+new Date().getTime() );
		});
		var hideFormAddNew = function(){
            $(".dt-add-new").hide();
            $("#add-panel").addClass("hide");			
            $(".dt-add-new").slideUp(500);
			//console.log("h");
        }
        var showFormAddNew = function(){
			hideFormSearch();
            $(".dt-add-new").show();
			$("#add-panel").removeClass("hide");            
            $(".dt-add-new").slideDown(500);
			//console.log("s");
        }
		var hideFormSearch = function(){
            $(".dt-advance-search").hide();
            $("#search-panel").addClass("hide");			
            $(".dt-advance-search").slideUp(500);
			//console.log("h");
        }
        var showFormSearch = function(){
			hideFormAddNew();
            $(".dt-advance-search").show();
			$("#search-panel").removeClass("hide");            
            $(".dt-advance-search").slideDown(500);
			//console.log("s");
        }
		
		$("#barang").on("click","#add",function(){
            $(".row-stok",$("#add-panel")).remove();
            if($("#add-panel").hasClass('hide')){
                showFormAddNew();				
            }
            else {
                hideFormAddNew();				
            }
			return false;
        });
		
		$("#barang").on("click","#cancel-add",function(){
			hideFormAddNew();
			return false;
			});
		$("#barang").on("click","#cancel-search",function(){
			hideFormSearch();
			return false;
			});
			
		$("#barang").on("click","#adv-search",function(){
            if($("#search-panel").hasClass('hide')){
                showFormSearch();				
            }
            else {
                hideFormSearch();				
            }
			return false;
        });

        $("#kios-datatable").on("click",".btn-edit",function(){            
            if($("#add-panel").hasClass('hide')){
                $("[name='nama']",$("#add-panel")).val($(this).data('nama'));
                $("[name='id_barang']",$("#add-panel")).val($(this).data('id'));
                showFormAddNew();               
            }
            else {
                $("[name='nama']",$("#add-panel")).val('');
                $("[name='id_barang']",$("#add-panel")).val('');
                hideFormAddNew();               
            }
            return false;
        });

        
        $("#kios-datatable").on("click",".btn-edit-stok",function(){            
            if($("#add-panel").hasClass('hide')){
                $("[name='nama']",$("#add-panel")).val($(this).data('nama'));
                $("[name='id_barang']",$("#add-panel")).val($(this).data('id'));
                var stokForm = ' <div class="col-sm-12 row-stok"><div class="col-lg-1 col-md-1 col-sm-1 text-bold"  style="padding-top: 12px">Stok</div>';
                stokForm +='<div class="col-lg-3 col-md-3 col-sm-3"><input type="number" name="stok" class="form-control" value="'+$(this).data('stok')+'" required></div></div>';
                $(".row-barang").after(stokForm);
                showFormAddNew();               
            }
            else {
                $("[name='nama']",$("#add-panel")).val('');
                $("[name='id_barang']",$("#add-panel")).val('');
                $(".row-stok",$("#add-panel")).remove();
                hideFormAddNew();               
            }
            return false;
        });

        $("#kios-datatable").on("click",".btn-delete",function(){ 
            if(!confirm("Yakin menghapus ini ?")){
                return false;
            }
             var stok = $(this).data('stok');
             if(stok == '' || stok == 0 || stok == '0'){
                    $.ajax({
                    url: "<?php echo my_url().'barang/delete';?>",
                    type: 'POST',
                    dataType:'json',
                    data: {
                      barang:$(this).data('id')
                    },
                    success: function(data) {                   
                        if(data.status == true){
                            showAlerts('success',data.message);
                            setTimeout(function(){// wait for 5 secs(2)
                                location.reload(); // then reload the page.(3)
                            }, 3000);
                        }
                        else {
                           showAlerts('error',data.message);
                        }
                    },
                    error: function(xhr, textStatus, ThrownException){
                        showAlerts('error',textStatus);
                    }
                });
             }
             else {
                alert('Barang tidak bisa di hapus. Terdapat banyak data terkait')
             }
        });

		
		$("#barang").on("click","#save-barang", function(){           
			var barang = $("[name='nama']",$("#form-input-barang")).val();            
            if(barang == ''){
                showAlerts('error',"Barang masih kosong");
                return false;
            }  
            var idBarang = $("[name='id_barang']",$("#form-input-barang")).val();                 
            if(idBarang == ''){               			
                $.ajax({
                    url: "<?php echo my_url().'barang/tambah';?>",
                    type: 'POST',
                    dataType:'json',
                    data: {
                      barang:barang
                    },
                    success: function(data) {					
                        if(data.status == true){
                            showAlerts('success',data.message);
                            setTimeout(function(){// wait for 5 secs(2)
                                location.reload(); // then reload the page.(3)
                            }, 3000);
                        }
                        else {
                           showAlerts('error',data.message);
                        }
                    },
                    error: function(xhr, textStatus, ThrownException){
                        showAlerts('error',textStatus);
                    }
                });
            }
            else {
                if($("[name='stok']",$("#form-input-barang")).length > 0){
                    var newStok = $("[name='stok']",$("#form-input-barang")).val();
                    $.ajax({
                        url: "<?php echo my_url().'barang/edit_stok';?>",
                        type: 'POST',
                        dataType:'json',
                        data: {
                          id:idBarang,stok:newStok
                        },
                        success: function(data) {                   
                            if(data.status == true){
                                showAlerts('success',data.message);
                                setTimeout(function(){// wait for 5 secs(2)
                                    location.reload(); // then reload the page.(3)
                                }, 3000);
                            }
                            else {
                               showAlerts('error',data.message);
                            }
                        },
                        error: function(xhr, textStatus, ThrownException){
                            showAlerts('error',textStatus);
                        }
                    });
                }
                else {
                    $.ajax({
                        url: "<?php echo my_url().'barang/edit';?>",
                        type: 'POST',
                        dataType:'json',
                        data: {
                          barang:barang,id:idBarang
                        },
                        success: function(data) {                   
                            if(data.status == true){
                                showAlerts('success',data.message);
                                setTimeout(function(){// wait for 5 secs(2)
                                    location.reload(); // then reload the page.(3)
                                }, 3000);
                            }
                            else {
                               showAlerts('error',data.message);
                            }
                        },
                        error: function(xhr, textStatus, ThrownException){
                            showAlerts('error',textStatus);
                        }
                    });
                }
            }
			return false;
        });

        

		return false;
    });
</script>