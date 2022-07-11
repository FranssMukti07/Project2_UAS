<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title><?= $title; ?></title>

  <style>
    .utama {
      background: #3C3B3F;
      /* fallback for old browsers */
      background: -webkit-linear-gradient(to right, #605C3C, #3C3B3F);
      /* Chrome 10-25, Safari 5.1-6 */
      background: linear-gradient(to right, #605C3C, #3C3B3F);
      /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
    }

    .pesan {
      color: #f6b52a;
    }

    .pesan i:hover {
      color: aqua;
    }
  </style>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?= base_url('assets/dashboard') ?>/plugins/fontawesome-free/css/all.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="<?= base_url('assets/dashboard') ?>/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="<?= base_url('assets/dashboard') ?>/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet" href="<?= base_url('assets/dashboard') ?>/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?= base_url('assets/dashboard') ?>/dist/css/adminlte.min.css">
</head>