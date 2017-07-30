<?php $this->load->view('shared/css_content');?>
    <div class="row" id="backup">
        <div class="col-md-12">
            <div class="card">
                <div class="card-content">
                    <h3 class="card-title"> <i class="fa fa fa-sign-out mr-10" aria-hidden="true"></i>  DAFTAR FILE BACKUP</h3>                    
                    <div class="toolbar">
                    </div>
                    <div class="material-datatables">
                        <div class="form-tambah">
                        </div>
                        <table id="kios-datatable" class="table table-striped table-no-bordered table-hover" cellspacing="0" width="100%" style="width:100%">                           
                            <thead>
                            <tr>
                                <th>No</th>
                                <th>File</th> 
                                <th>Ukuran File</th> 
                                <th>Tanggal Backup</th>                                
                                <th class="actions">Actions</th>
                            </tr>
                            </thead>							
                            <tbody>                           
                            <?php $no = 1; $tbytes = 0; if(isset($files)){ foreach($files as $file) { ?>
                                <tr>
                                    <td><?php echo $no++;?></td>
                                    <td>                                   
                                    <?php echo $file;?>                                      
                                    </td>
                                    <td>
                                    <?php
                                    $bytes = filesize (APPPATH."../public/dbbackups/".$file);
                                    $tbytes += $bytes;
                                    if ($bytes >= 1073741824)
                                    {
                                        $bytes = number_format($bytes / 1073741824, 2) . ' GB';
                                    }
                                    elseif ($bytes >= 1048576)
                                    {
                                        $bytes = number_format($bytes / 1048576, 2) . ' MB';
                                    }
                                    elseif ($bytes >= 1024)
                                    {
                                        $bytes = number_format($bytes / 1024, 2) . ' KB';
                                    }
                                    elseif ($bytes > 1)
                                    {
                                        $bytes = $bytes . ' bytes';
                                    }
                                    elseif ($bytes == 1)
                                    {
                                        $bytes = $bytes . ' byte';
                                    }
                                    else
                                    {
                                        $bytes = '0 bytes';
                                    }
                                    echo $bytes;
                                    ?>
                                    </td>
                                     <td>
                                     <?php 
                                     //2007 1020
                                        $x = explode("_",$file);
                                        $year =  substr($x[1],0,4);
                                        $month =  substr($x[1],4,2);
                                        $date =  substr($x[1],6,2);

                                        $hour =  substr($x[2],0,2);
                                        $min =  substr($x[2],2,2);
                                        $sec =  substr($x[2],4,2);
                                        echo $year.'/'.$month.'/'.$date.' '.$hour.':'.$min.':'.$sec;
                                     ?>                                         
                                     </td>                                   
                                    <td>                                                                             
                                        <button class="btn btn-sm btn-danger btn-delete" data-file_name="<?php echo $file;?>" ><i class="fa fa-times"></i> Delete</button>
                                        
                                        <a class="btn btn-sm btn-primary" href="<?php echo base_url().'public/dbbackups/'.$file?>"><i class="fa fa-cloud-download"></i>
                                            Download
                                      </a> 
                                    </td>
                                </tr>
                            <?php }}?>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="col col-md-6" style="margin-bottom:20px">
                <b>NOTE : TOTAL </b>data backup anda adalah
                <?php                
                 if ($tbytes >= 1073741824)
                                    {
                                        $tbytes = number_format($tbytes / 1073741824, 2) . ' GB';
                                    }
                                    elseif ($tbytes >= 1048576)
                                    {
                                        $tbytes = number_format($tbytes / 1048576, 2) . ' MB';
                                    }
                                    elseif ($tbytes >= 1024)
                                    {
                                        $tbytes = number_format($tbytes / 1024, 2) . ' KB';
                                    }
                                    elseif ($tbytes > 1)
                                    {
                                        $tbytes = $tbytes . ' bytes';
                                    }
                                    elseif ($tbytes == 1)
                                    {
                                        $tbytes = $tbytes . ' byte';
                                    }
                                    else
                                    {
                                        $tbytes = '0 bytes';
                                    }
                                    echo "<b>".$tbytes."</b>";                                    
                ?>, Jika ruang penyimpanan anda terbatas, silahkan pindahkan file backup anda dengan cara download tiap file setelah itu delete file tersebut.
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
				        "buttons": []
    				});	
		var initBar = function(){
            var actionbutton = '';
            actionbutton += '<button type="button" id="add" class="btn-new btn-single-group btn btn-sm btn-primary" style="margin-left:5px"><i class="fa fa-plus"></i><span style="padding-left:5px">Backup Database >></span></button>';
           $(".dt-actionbutton").html(actionbutton);
			$('[data-container="add-form"]').prependTo($('.dt-add-new'));
        }
     		
		initBar();	
		$(this).on( 'draw.dt', function (e, settings) {
            $('.dt-filter input[type="search"]').keyup(function(){
                console.log('search draw');
                dt_table.draw();
            });
		    //console.log( 'Redraw data at: '+new Date().getTime() );
		});
		
		$("#backup").on("click","#add",function(){
            if(!confirm("Yakin menjalankan proses backup database sekarang ?")){
                return false;
            }
            $.ajax({
                    url: "<?php echo my_url().'admin/backup_database';?>",
                    type: 'POST',
                    dataType:'json',
                    data: {},
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
			return false;
        });
		
        $("#kios-datatable").on("click",".btn-delete",function(){ 
            if(!confirm("Yakin menghapus data backup ?")){
                return false;
            }
            $.ajax({
                    url: "<?php echo my_url().'admin/backup_delete';?>",
                    type: 'POST',
                    dataType:'json',
                    data: {
                      file_name:$(this).data('file_name')
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
        });

		return false;
    });
</script>