<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller']            = 'barang';

$route['barang']                  = 'barang/index';
$route['barang/tambah']                  = 'barang/add';
$route['barang/delete']                  = 'barang/delete';
$route['barang/edit']                  = 'barang/edit';
$route['barang/edit_stok']                  = 'barang/edit_stok';
$route['barang/transaksi']                  = 'barang/transaksi';
$route['barang/transaksi_data']                  = 'barang/transaksi_data';
$route['barang/transaksi_hapus']                  = 'barang/transaksi_delete';


$route['gudang']                  = 'barang/gudang';
$route['gudang/tambah']                  = 'barang/gudang_add';
$route['gudang/edit']                  = 'barang/gudang_edit';
$route['gudang/transaksi']                  = 'barang/gudang_transaksi';

$route['barangmasuk/list']                  = 'barang_masuk/index';
$route['barangmasuk/data']                  = 'barang_masuk/data';
$route['barangmasuk/tambah']                  = 'barang_masuk/add';
$route['barangmasuk/hapus']                  = 'barang_masuk/delete';

$route['barangkeluar/list']                  = 'barang_keluar/index';
$route['barangkeluar/data']                  = 'barang_keluar/data';
$route['barangkeluar/tambah']                = 'barang_keluar/add';
$route['barangkeluar/hapus']                  = 'barang_keluar/delete';

$route['gudangmasuk/list']                  = 'gudang_masuk/index';
$route['gudangmasuk/data']                  = 'gudang_masuk/data';
$route['gudangmasuk/tambah']                  = 'gudang_masuk/add';
$route['gudangmasuk/hapus']                  = 'gudang_masuk/delete';

$route['gudangkeluar/list']                  = 'gudang_keluar/index';
$route['gudangkeluar/data']                  = 'gudang_keluar/data';
$route['gudangkeluar/tambah']                = 'gudang_keluar/add';
$route['gudangkeluar/hapus']                  = 'gudang_keluar/delete';



$route['admin/profile/add']              = 'adminweb/profile_add';
$route['admin/profile/edit']             = 'adminweb/profile_edit';
$route['admin/profile/delete']           = 'adminweb/profile_delete';
$route['admin/profile/photo']            = 'adminweb/profile_photo';
$route['admin/upload/photo']             = 'adminweb/upload_photo';
$route['admin/getlist']                     = 'adminweb/getlist';
$route['admin/log']                      = 'adminweb/log';
$route['admin/profile/change_password']           = 'auth/update_password';
$route['admin/profile/save_new_password']           = 'auth/do_update_password';
$route['admin/backup_database']           = 'adminweb/backup_database';
$route['admin/backup_files']           = 'adminweb/backup_files';
$route['admin/backup_delete']           = 'adminweb/backup_delete';

$route['login']         = 'auth/login';
$route['login/auth']    = 'auth/do_login';
$route['logout']    = 'auth/logout';


//$route['404_override'] = 'mypage/my404';
$route['translate_uri_dashes'] = FALSE;
