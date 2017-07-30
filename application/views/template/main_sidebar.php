<div class="sidebar" data-active-color="purple" data-background-color="#1580b9">
    <!--
Tip 1: You can change the color of active element of the sidebar using: data-active-color="purple | blue | green | orange | red | rose"
Tip 2: you can also add an image using data-image tag
Tip 3: you can change the color of the sidebar with data-background-color="white | black"
-->

    <div class="sidebar-wrapper">
        <div class="user">
            <div class="photo">
            <?php
            $profile_pic = APPPATH."../public/uploads/profile/".$this->session->userdata('id').".jpg";            
            $s = file_exists($profile_pic);
            if($s){
            ?>
                <img src="<?php echo base_url();?>public/uploads/profile/<?php echo $this->session->userdata('id');?>.jpg" />
                <?php } else { ?>
                    <img src="<?php echo base_url();?>public/uploads/profile/user.jpg" />
                 <?php } ?>
            </div>
            <div class="info">
                <a data-toggle="collapse" href="#collapseExample" class="collapsed">
                <?php
                if($this->session->has_userdata('logged_in') && $this->session->userdata('logged_in')){
                    echo $this->session->userdata('name');
                }
                else {
                    echo "Noname";
                }
                ?>

                 <b class="caret"></b>
                    </a>
                <div class="collapse" id="collapseExample">
                 <ul class="nav">                        
                        <li>
                            <a href="<?php echo site_url('admin/profile/photo');?>">Ganti Foto</a>
                        </li>
                         <li>
                            <a href="<?php echo site_url('admin/profile/change_password');?>">Ganti Password</a>
                        </li>  
                        <li>
                            <a href="<?php echo site_url('admin/getlist');?>">Admin List</a>
                        </li>                       
                    </ul>
                </div>
            </div>
        </div>
        <ul class="nav">
            <li>
                <a href="<?php echo site_url('barang');?>" id="menu-3" class="side-menu <?php echo ($this->session->userdata('menu-active') == 'menu-3')?'menu-open':'';?>">
                    <i class="fa fa-building-o" aria-hidden="true"></i>
                    <p>Stok Barang</p>
                </a>
            </li>
            <li>
                <a href="<?php echo site_url('barang/Transaksi');?>" id="menu-7" class="side-menu <?php echo ($this->session->userdata('menu-active') == 'menu-7')?'menu-open':'';?>">
                    <i class="fa fa-database" aria-hidden="true"></i>
                    <p>Transaksi Barang</p>
                </a>
            </li>
            <?php /*
            <li>
                <a href="<?php echo site_url('gudang');?>" id="menu-6" class="side-menu <?php echo ($this->session->userdata('menu-active') == 'menu-6')?'menu-open':'';?>">
                    <i class="fa fa-building" aria-hidden="true"></i>
                    <p>Stok Gudang</p>
                </a>
            </li>*/?>
            <li>
                <a href="<?php echo site_url('barangmasuk/list');?>" id="menu-1" class="side-menu <?php echo ($this->session->userdata('menu-active') == 'menu-1')?'menu-open':'';?>">
                    <i class="fa fa-sign-in" aria-hidden="true"></i>
                    <p>Barang Masuk</p>
                </a>
            </li>
            <li>
                <a href="<?php echo site_url('barangkeluar/list');?>" id="menu-2" class="side-menu <?php echo ($this->session->userdata('menu-active') == 'menu-2')?'menu-open':'';?>">
                    <i class="fa fa-sign-out" aria-hidden="true"></i>
                    <p>Barang Keluar</p>
                </a>
            </li>
            <li>
                <a href="<?php echo site_url('gudangmasuk/list');?>" id="menu-4" class="side-menu <?php echo ($this->session->userdata('menu-active') == 'menu-4')?'menu-open':'';?>">
                    <i class="fa fa-sign-in" aria-hidden="true"></i>
                    <p>Gudang Masuk</p>
                </a>
            </li>
            <li>
                <a href="<?php echo site_url('gudangkeluar/list');?>" id="menu-5" class="side-menu <?php echo ($this->session->userdata('menu-active') == 'menu-5')?'menu-open':'';?>">
                    <i class="fa fa-sign-out" aria-hidden="true"></i>
                    <p>Gudang Keluar</p>
                </a>
            </li>            
            <li>
                <a href="<?php echo site_url('admin/backup_files');?>" id="menu-6" class="side-menu <?php echo ($this->session->userdata('menu-active') == 'menu-6')?'menu-open':'';?>">
                    <i class="fa fa-cloud-download" aria-hidden="true"></i>
                    <p>Backup Database</p>
                </a>
            </li>
        </ul>
    </div>
</div>