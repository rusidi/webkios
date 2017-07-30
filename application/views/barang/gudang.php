<?php $this->load->view('shared/css_content');?>
    <div class="row" id="barang">
        <div class="col-md-12">
            <div class="card">
                <div class="card-content">
                    <h3 class="card-title"> <i class="fa fa fa-sign-out mr-10" aria-hidden="true"></i>  DAFTAR STOK GUDANG</h3>
                    <div class="toolbar">
                    </div>
                    <div class="material-datatables">
                        <div class="form-tambah">
                        </div>
                        <table id="kios-datatable" class="table table-striped table-no-bordered table-hover" cellspacing="0" width="100%" style="width:100%">
                            <div data-container="add-form" class="row hide" id="add-panel">
                                <div class="form-group" id="form-input-keluar">
                                    <div class="col-sm-12">
                                        <div class="row small-list-margin" style="margin-bottom:5px">
                                            <div class="col-lg-3 col-md-3 col-sm-3 text-bold"  style="padding-top: 12px">
                                                Nama Barang
                                            </div>
                                            <div class="col-lg-3 col-md-3 col-sm-3">
                                                <input type="number" name="nama" class="form-control" required>
                                            </div>
                                        </div>

                                     </div>
                                 <div class="col-sm-12" style="margin-top:10px">
                                        <a class="btn btn-sm btn-success" href="" id="save">Save</a>
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
                            <?php $no = 1; if(isset($barang)){ foreach($barang as $row) { ?>
                                <tr>
                                    <td><?php echo $no++;?></td>
                                    <td><?php echo $row->nama;?></td>
                                    <td class="text-right"><?php echo ($row->stok !='')?$row->stok:0;?></td>
                                    <td>
                                        <a href="" class="btn btn-sm btn-info"><i class="fa fa-pencil"></i> Edit</a>
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
		
		$("#barang").on("click","#save", function(){
			var barangEl = $("[name='barang']",$("#form-input-keluar"));
            var barang = $("option:selected",$(barangEl)).val();
            var tanggal = $("[name='tanggal']",$("#form-input-keluar")).val();
			var jumlah = $("[name='jumlah']",$("#form-input-keluar")).val();
            if(tanggal.trim() == ''){
                showAlerts('error',"Tanggal masih kosong");
                return false;
            }
            if(barang.trim() == ''){
                showAlerts('error',"Barang masih kosong");
                return false;
            }
            if(jumlah.trim() == ''){
                showAlerts('error',"Jumlah layanan masih kosong");
                return false;
            }    			
            $.ajax({
                url: "<?php echo my_url().'barang/tambah';?>",
                type: 'POST',
                dataType:'json',
                data: {
                   tanggal:tanggal,barang:barang,jumlah:jumlah
                },
                success: function(data) {
					//console.log(data); return false;
                    if(data.status == true){
                        showAlerts('success',data.message);
                        setTimeout(function(){// wait for 5 secs(2)
                            location.reload(); // then reload the page.(3)
                        }, 5000);
                    }
                    else {
                       showAlerts('error',data.message);
                    }
                },
                error: function(xhr, textStatus, ThrownException){
                    showAlerts('error',textStatus);
                }
            });
			return false;
        });

        $("#kios-datatable").on("click",".delete",function(){
            if(confirm("Yakin menghapus ini ?")){
                var id = $(this).attr("idrow");
                $.ajax({
                    url: "<?php echo my_url().'barang/hapus';?>",
                    type: 'POST',
                    dataType:'json',
                    data: {
                        id:id
                    },
                    success: function(data) {
                        //console.log(data); return false;
                        if(data.status == true){
                            showAlerts('success',data.message);
                            setTimeout(function(){// wait for 5 secs(2)
                                location.reload(); // then reload the page.(3)
                            }, 5000);
                        }
                        else {
                            showAlerts('error',data.message);
                        }
                    },
                    error: function(xhr, textStatus, ThrownException){
                        showAlerts('error',textStatus);
                    }
                });
                return false;
            }
            else {
                return false;
            }
        });

		return false;
    });
</script>