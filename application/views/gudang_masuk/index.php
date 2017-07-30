<?php $this->load->view('shared/css_content');?>
    <div class="row" id="gudang-masuk">
        <div class="col-md-12">
            <div class="card">
                <div class="card-content">
                    <h3 class="card-title"> <i class="fa fa-sign-in mr-10" aria-hidden="true"></i>  GUDANG MASUK</h3>
                    <div class="toolbar">
                    </div>
                    <div class="material-datatables">
                        <div class="form-tambah">
                        </div>
                        <table id="kios-datatable" class="table table-striped table-no-bordered table-hover" cellspacing="0" width="100%" style="width:100%">
                            <div data-container="add-form" class="row hide" id="add-panel">
                                <div class="form-group" id="form-input-masuk">                                   
                                    <div class="col-sm-12">
                                        <div class="row small-list-margin" style="margin-bottom:5px">
                                            <div class="col-lg-3 col-md-3 col-sm-3 text-bold" style="padding-top: 12px">
                                                Tanggal
                                            </div>
                                            <div class="col-lg-3 col-md-3 col-sm-3">
                                                <input type="text" name="tanggal" class="form-control" required>
                                            </div>
                                        </div>
                                        <div class="row small-list-margin" style="margin-bottom:5px">
                                            <div class="col-lg-3 col-md-3 col-sm-3 text-bold" style="padding-top: 12px">
                                                Barang
                                            </div>
                                            <div class="col-lg-3 col-md-3 col-sm-3">
                                               <select id="barang-ddl" name="barang" class="form-control" required>
                                                    <option value="">Pilih Barang</option>
                                                    <?php if(isset($barang)){ foreach($barang as $row) { ?>
                                                        <option value="<?php echo $row->id;?>"><?php echo $row->nama;?></option>
                                                    <?php }}?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row small-list-margin" style="margin-bottom:5px">
                                            <div class="col-lg-3 col-md-3 col-sm-3 text-bold"  style="padding-top: 12px">
                                                Jumlah
                                            </div>
                                            <div class="col-lg-3 col-md-3 col-sm-3">
                                                <input type="number" name="jumlah" class="form-control" required>
                                            </div>
                                        </div>

                                     </div>
                                 <div class="col-sm-12" style="margin-top:10px">
                                        <a class="btn btn-sm btn-success" href="" id="save">Save</a>
                                        <a class="btn btn-sm btn-warning" href="" id="cancel-add">Cancel</a>
                                    </div>
                                </div>
                            </div>
							<div data-container="search-form" class="row hide" id="search-panel">
								<div class="form-group" id="form-search-masuk">                                    
                                    <div class="col-sm-12">
                                        <div class="row small-list-margin" style="margin-bottom:5px">
                                            <div class="col-lg-3 col-md-3 col-sm-3 text-bold" style="padding-top: 12px">
                                                Tanggal
                                            </div>
                                            <div class="col-lg-3 col-md-3 col-sm-3">
                                                <select name="petunjuk" class="form-control" required>
                                                    <option value="0">Sama dengan</option>
                                                    <option value="1">Sebelum</option>
                                                    <option value="2">Setelah</option>
                                                </select>
                                            </div>
                                            <div class="col-lg-6 col-md-6 col-sm-6">
                                                <input type="text" name="tanggal" class="form-control">
                                            </div>
                                        </div>
                                        <div class="row small-list-margin" style="margin-bottom:5px">
                                            <div class="col-lg-3 col-md-3 col-sm-3 text-bold" style="padding-top: 12px">
                                                Barang
                                            </div>
                                            <div class="col-lg-9 col-md-9 col-sm-9">
                                               <select id="barang-ddl" name="barang" class="form-control" required>
                                                    <option value="">Pilih Barang</option>
                                                    <?php if(isset($barang)){ foreach($barang as $row) { ?>
                                                        <option value="<?php echo $row->id;?>"><?php echo $row->nama;?></option>
                                                    <?php }}?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row small-list-margin" style="margin-bottom:5px">
                                            <div class="col-lg-3 col-md-3 col-sm-3 text-bold"  style="padding-top: 12px">
                                                Jumlah
                                            </div>
                                            <div class="col-lg-3 col-md-3 col-sm-3">
                                                <select name="operator" class="form-control" required>
                                                    <option value="0">Sama dengan</option>
                                                    <option value="1">Lebih kecil</option>
                                                    <option value="2">Lebih besar</option>
                                                </select>
                                            </div>
                                            <div class="col-lg-6 col-md-6 col-sm-6">
                                                <input type="number" name="jumlah" class="form-control" >
                                            </div>
                                        </div>
                                    </div>
									<div class="col-sm-12" style="margin-top:10px">
                                        <a class="btn btn-sm btn-success" href="" id="go-search">Search</a>                                        
										<a class="btn btn-sm btn-warning" href="" id="cancel-search">Cancel</a>
									</div>
							</div>
							 </div>
                            <thead>
                            <tr>
                                <th>tanggal</th>
                                <th>barang</th>
                                <th>sisa sebelum</th>
                                <th>jumlah</th>
                                <th>sisa stok</th>                               
                                <th class="actions">Actions</th>
                            </tr>
                            </thead>							
                            <tbody>                           
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
				"processing": true,
				    	"serverSide": true,
				    	"ajax"		: {
				            			"url": "<?php echo my_url();?>gudangmasuk/data",
							            "data": function ( d ) {
							            	var _filter = new Array();
							                _filter['search'] = {value: $('.dt-filter input[type="search"]').val()};
                                            if($('[name="tanggal"]',$("#search-panel")).val()){
                                                _filter['filter_tanggal'] = $('[name="tanggal"]',$("#search-panel")).val();
                                                var pet = $('[name="petunjuk"]',$("#search-panel"));
                                                _filter['filter_tanggal_petunjuk'] = $('option:selected',$(pet)).val();
                                            }
                                            var targetDll = $('[name="barang"]',$("#search-panel"));
                                            if($('option:selected',$(targetDll)).val()){
                                                _filter['filter_barang'] = $('option:selected',$(targetDll)).val();
                                            }
                                            if($('[name="jumlah"]',$("#search-panel")).val()){
                                                _filter['filter_jumlah'] = $('[name="jumlah"]',$("#search-panel")).val();
                                                var target = $('[name="operator"]',$("#search-panel"));
                                                _filter['filter_jumlah_operator'] = $('option:selected',$(target)).val();
                                            }
							                return $.extend(true, d, _filter);
							            }
				        },
						"dom": "<'dt-actionbutton'><'dt-actionbulk'>flrB<'dt-advance-search'><'dt-add-new'><'dt-alert col-md-12 no-padding'>tip",
                        //"order" : [[0, 'desc']],
                        "bSort": false,
                        "columns": [
				        	{'data' : 'tanggal', 'name' : 'tanggal', 'target' : 0,'orderable': true, 'className' : 'bm-tanggal'},
				        	{'data' : 'barang_id', 'name' : 'barang', 'target' : 1, 'orderable': true, 'className' : 'bm-barang_id'},
                            {'data' : 'stok_sebelum', 'name' : 'stok_sebelum', 'target' : 2, 'orderable': false,'className' : 'text-right'},
                            {'data' : 'jumlah', 'name' : 'jumlah', 'target' : 3,'orderable': false, 'className' : 'bm-jumlah text-right'},
				        	{'data' : 'stok_setelah', 'name' : 'stok_setelah', 'orderable': false, 'target' : 4, 'className' : 'text-right'},
							{'data' : 'id', 'name' : null, 'orderable': false,'target' : 5, 'className' : 'text-center'}
				        ],
				        "columnDefs" : [
				        	{
				                "render": function ( data, type, row ) {
				                    return '<a href="<?php echo my_url();?>barang/detail/'+data+'">'+row.nama_barang+'</a>';
				                },
				                "targets": 1
				            },				            
				            {
				                "render": function ( data, type, row ) {
				                    return '<a class="delete btn btn-sm btn-danger" title="Delete Row" idrow="'+data+'"><i class="fa fa-times"></i> Delete</a>';
				                },
				                "targets": 5
				            }
				        ],
				        "bStateSave": true,
				        "fnStateSave": function (oSettings, oData) {
				            localStorage.setItem('offersDataTables', JSON.stringify(oData));
				        },
				        "fnStateLoad": function (oSettings) {
				            return JSON.parse(localStorage.getItem('offersDataTables'));
				        },
				        "buttons": dtBtn
    				});	
		var initBar = function(){
            var actionbutton = '';
            actionbutton += '<button type="button" id="add" class="btn-new btn-single-group btn btn-sm btn-primary" style="margin-left:5px"><i class="fa fa-plus"></i><span style="padding-left:5px">Baru</span></button>';
            actionbutton += '<button type="button" id="adv-search" class="btn-new btn-single-group btn btn-sm btn-primary" style="margin-left:5px"><i class="fa fa-search"></i><span style="padding-left:5px">Cari</span></button>';
            $(".dt-actionbutton").html(actionbutton);
			$('[data-container="add-form"]').prependTo($('.dt-add-new'));			
			$('[data-container="search-form"]').prependTo($('.dt-advance-search'));
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
		
		$("#gudang-masuk").on("click","#add",function(){
            if($("#add-panel").hasClass('hide')){
                showFormAddNew();				
            }
            else {
                hideFormAddNew();				
            }
			return false;
        });
		
		$("#gudang-masuk").on("click","#cancel-add",function(){
			hideFormAddNew();
			return false;
			});
		$("#gudang-masuk").on("click","#cancel-search",function(){
			hideFormSearch();
			return false;
			});
			
		$("#gudang-masuk").on("click","#adv-search",function(){
            if($("#search-panel").hasClass('hide')){
                showFormSearch();				
            }
            else {
                hideFormSearch();				
            }
			return false;
        });
		
		$("#gudang-masuk").on("click","#save", function(){
			var barangEl = $("[name='barang']",$("#form-input-masuk"));
            var barang = $("option:selected",$(barangEl)).val();
            var tanggal = $("[name='tanggal']",$("#form-input-masuk")).val();
			var jumlah = $("[name='jumlah']",$("#form-input-masuk")).val();            
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
                url: "<?php echo my_url().'gudangmasuk/tambah';?>",
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
                    url: "<?php echo my_url().'gudangmasuk/hapus';?>",
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

        $("#gudang-masuk").on("click","#go-search",function(){
            dt_table.draw();
            return false;
        });
		
		return false;
    });
</script>