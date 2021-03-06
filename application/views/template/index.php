<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="<?php echo base_url();?>public/assets/img/apple-icon.png" />
    <link rel="icon" type="image/png" href="<?php echo base_url();?>public/assets/img/favicon.png" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Web Kios</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
    <?php $this->load->view('template/header');?>
</head>

<body>
<div class="wrapper">
<?php $this->load->view('template/main_sidebar');?>
<div class="main-panel">
<?php $this->load->view('template/main_menu_top');?>
<div class="content">
<div class="container-fluid">
    <div id="main-alert" class="hide">
        <?php if ($this->session->flashdata('flash_success')) { ?>
            <div class="alert alert-success"> <?php echo $this->session->flashdata('flash_success'); ?> </div>
        <?php } ?>
        <?php if ($this->session->flashdata('flash_error')) { ?>
            <div class="alert alert-error"> <?php echo $this->session->flashdata('flash_error'); ?> </div>
        <?php } ?>
        <?php if($this->session->userdata('flash_success') != ''){ ?>
        <div class="alert alert-success"> <?php echo $this->session->userdata('flash_success'); $this->session->set_userdata('flash_success','')?> </div>
        <?php } ?>
        <?php if ($this->session->userdata('flash_error')) { ?>
            <div class="alert alert-error"> <?php echo $this->session->userdata('flash_error'); $this->session->set_userdata('flash_error','')?> </div>
        <?php } ?>
        <div class="alert"></div>
    </div>
<?php echo isset($content)?$content:'';?>
</div>
</div>
<?php //$this->load->view('template/main_footer');?>
</div>
</div>
</body>

<script src="<?php echo base_url();?>public/assets/js/material.min.js" type="text/javascript"></script>
<script src="<?php echo base_url();?>public/assets/js/perfect-scrollbar.jquery.min.js" type="text/javascript"></script>
<!-- Forms Validations Plugin -->
<script src="<?php echo base_url();?>public/assets/js/jquery.validate.min.js"></script>
<!--  Plugin for Date Time Picker and Full Calendar Plugin-->
<script src="<?php echo base_url();?>public/assets/js/moment.min.js"></script>
<!--  Charts Plugin -->
<?php /*<script src="<?php echo base_url();?>public/assets/js/chartist.min.js"></script>*/?>
<!--  Plugin for the Wizard -->
<script src="<?php echo base_url();?>public/assets/js/jquery.bootstrap-wizard.js"></script>
<!--  Notifications Plugin    -->
<script src="<?php echo base_url();?>public/assets/js/bootstrap-notify.js"></script>
<!-- DateTimePicker Plugin -->
<script src="<?php echo base_url();?>public/assets/js/bootstrap-datetimepicker.js"></script>
<!-- Vector Map plugin -->
<?php /*<script src="<?php echo base_url();?>public/assets/js/jquery-jvectormap.js"></script>*/?>
<!-- Sliders Plugin -->
<script src="<?php echo base_url();?>public/assets/js/nouislider.min.js"></script>
<!-- Select Plugin -->
<script src="<?php echo base_url();?>public/assets/js/jquery.select-bootstrap.js"></script>
<!--  DataTables.net Plugin    -->
<?php /*<script src="<?php echo base_url();?>public/assets/js/jquery.datatables.js"></script>*/?>
<!-- Sweet Alert 2 plugin -->
<script src="<?php echo base_url();?>public/assets/js/sweetalert2.js"></script>
<!--	Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
<script src="<?php echo base_url();?>public/assets/js/jasny-bootstrap.min.js"></script>
<!--  Full Calendar Plugin    -->
<script src="<?php echo base_url();?>public/assets/js/fullcalendar.min.js"></script>
<!-- TagsInput Plugin -->
<script src="<?php echo base_url();?>public/assets/js/jquery.tagsinput.js"></script>
<!-- Material Dashboard javascript methods -->
<script src="<?php echo base_url();?>public/assets/js/material-dashboard.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
     $('[name="tanggal"]').datetimepicker({
            format: 'YYYY-MM-DD',
            icons: {
                time: "fa fa-clock-o",
                date: "fa fa-calendar",
                up: "fa fa-chevron-up",
                down: "fa fa-chevron-down",
                previous: 'fa fa-chevron-left',
                next: 'fa fa-chevron-right',
                today: 'fa fa-screenshot',
                clear: 'fa fa-trash',
                close: 'fa fa-remove',
                inline: true
            }
         });
     return false;
    });
</script>


</html>