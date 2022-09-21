<%--
  Created by IntelliJ IDEA.
  User: SW2-PC
  Date: 9/17/2022
  Time: 9:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
@php
if (Auth::user()->role=='Superadmin'){
}
elseif (Auth::user()->role=='Asset Department'){
$display = 'none';
$readonly = 'readonly';
$disable = 'disabled';
}
@endphp
@extends('layouts.Superdmin-layout')
@section('style')
<!-- DataTables -->
<link rel="stylesheet" href="{{asset('assets/plugins/datatables-bs4/css/dataTables.bootstrap4.css')}}">
<link rel="stylesheet" href="{{ asset('assets/datatable/buttons.dataTables.min.css') }}">
<!-- Ekko Lightbox -->
<link rel="stylesheet" href="{{ asset('assets/plugins/ekko-lightbox/ekko-lightbox.css') }}">
<style type="text/css">
    .form-group {
        margin-bottom: 0.3rem;
    }
    .add_imagePreview_meid {
        background-size: 100% 100%;
        border: none;
    }
    .edit_imagePreview_meid {
        background-size: 100% 100%;
        border: none;
    }
    .middle{
        vertical-align: middle;
    }th{
         font-size: 0.8rem;
     }.dataTables_scrollBody {
          transform:rotateX(180deg);
      }
    .dataTables_scrollBody table {
        transform:rotateX(180deg);
    }.mid{
         vertical-align: middle!important;
     }.td-limit {
          max-width: 200px;
          text-overflow: ellipsis;
          white-space: nowrap;
          overflow: hidden;
      }
</style>
@endsection
@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">

            <div class="row">
                <div class="col-12">
                    <div class="card card-info card-outline card-tabs">
                        <div class="card-body text-sm" style="padding-bottom: 0px;">

                            <div style="display:{{$display ?? '' }}" class="btn-group" id="divAddNew">
                                <button title="Add new" class="btn btn-danger" data-toggle="modal" data-target="#modal-add"><i class="fa fa-fw fa-plus"></i><span class="hide-on-mobile">&nbsp;&nbsp;Add Record</span></button>
                            </div>
                            <div style="display:{{$display ?? '' }}" class="btn-group" id="divDelete">
                                <button type="button" title="Delete" class="btn btn-info btn-delete-check"><i class="fas fa-trash-alt"></i><span class="hide-on-mobile">&nbsp;&nbsp;Delete Record</span></button>
                            </div>

                            <div class="btn-group">
                                <button title="Show All" class="btn btn-info" id="btn_show_all"><i class="fa fa-fw fa-list"></i><span class="hide-on-mobile">&nbsp;&nbsp;Show All</span></button>
                            </div>
                        </div>

                        <!-- /.card-header -->
                        <div class="card-body text-sm" style="overflow: auto; margin-top: 0px;">
                            <table id="table-phone" class="table table-bordered table-hover dataTable">
                                <thead>
                                <tr>

                                    <th class="text-nowrap">Employee Name 使用人</th>
                                    <th class="text-nowrap">Position 职位</th>
                                    <th class="text-nowrap">Department 使用部门</th>
                                    <th class="text-nowrap">Phone Model 手机规格型号</th>
                                    <th class="text-nowrap">Phone MEID number 手机MEID/IMEI号</th>
                                    <th class="text-nowrap">Phone MEID 手机型号图</th>
                                    <th class="text-nowrap">Accessories 电话配件</th>
                                    <th class="text-nowrap">Quantity 数量</th>
                                    <th class="text-nowrap">Company Phone Number 公司手机号码</th>
                                    <th class="text-nowrap">Collect Date 领取日期</th>
                                    <th class="text-nowrap">Return Date 退回日期</th>
                                    <th class="text-nowrap">Get From 向谁领取</th>
                                    <th class="text-nowrap">Status of Use 使用状态</th>
                                    <th class="td-limit">Remark 备注</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach ($phone as $item)
                                <tr data-phone_id="{{$item->phone_id}}"
                                    data-phone_user="{{$item->phone_user}}"
                                    data-employee_position="{{$item->employee_position}}"
                                    data-employee_department="{{$item->employee_department}}"
                                    data-phone_model="{{$item->phone_model}}"
                                    data-phone_meid="{{$item->phone_meid}}"
                                    data-phone_meid_image="{{$item->phone_meid_image}}"
                                    data-phone_accesories="{{$item->phone_accesories}}"
                                    data-phone_quantity="{{$item->phone_quantity}}"
                                    data-phone_number="{{$item->phone_number}}"
                                    data-phone_collect_date="{{$item->phone_collect_date}}"
                                    data-phone_return_date="{{$item->phone_return_date}}"
                                    data-phone_get_from="{{$item->phone_get_from}}"
                                    data-phone_status="{{$item->phone_status}}"
                                    data-phone_remark="{{$item->phone_remark}}" data-toggle="modal" data-target="#modal-edit">



                                    <td  class="text-nowrap mid">{{$item->phone_user}}</td>
                                    <td  class="text-nowrap mid" class="text-nowrap mid">{{$item->employee_position}}</td>
                                    <td  class="text-nowrap mid">{{$item->employee_department}}</td>
                                    <td  class="text-nowrap mid">{{$item->phone_model}}</td>
                                    <td  class="text-nowrap" style="vertical-align: middle; text-align: center;">{{$item->phone_meid}}</td>

                                    <td class="text-center mid">
                                        <a href="asset/public/storage/images/asset/phone/$item->phone_meid_image" data-toggle="lightbox" data-gallery="gallery">
                                        <!--<img src="{{asset("/public/storage/images/asset/phone/$item->phone_meid_image")}}" class="img-55" alt="NO-IMAGE">-->
                                        <p>CLICK IMAGE</p>
                                        </a>
                                    </td>

                                    <td class="text-nowrap mid">{{$item->phone_accesories}}</td>
                                    <td class="text-nowrap mid text-center">{{$item->phone_quantity}}</td>
                                    <td class="text-nowrap mid">{{$item->phone_number}}</td>
                                    <td class="text-nowrap mid">{{$item->phone_collect_date}}</td>
                                    <td class="text-nowrap mid">{{$item->phone_return_date}}</td>
                                    <td class="text-nowrap mid">{{$item->phone_get_from}}</td>
                                    <td class="text-nowrap mid">{{$item->phone_status}}</td>
                                    <td class="td-limit mid">{{$item->phone_remark}}</td>
                                </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                </div>
                <!-- /.col -->
            </div>
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
</div>

<div class="modal fade" id="modal-add">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <!--Header-->
            <div class="modal-header" style="padding-bottom: 0px;">
                <p class="heading lead"><strong>Add Asset Record</strong>
                </p>
            </div>
            <form method="post" id="form-add" enctype="multipart/form-data">
                @csrf
                <div class="modal-body">
                    <span id="form_result"></span>
                    <!-- BEGIN FORM-->
                    <div class="row justify-content-md-center">
                        <div class="col-md-12">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="item_category">Employee Name 使用人  </label>
                                        <input class="form-control" required name="phone_user" id="phone_user" type="text">
                                    </div>
                                </div>
                            </div> <!-- END ROW-->
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="item_category">Position 职位</label>
                                        <input  type="text" class="form-control" name="employee_position" id="employee_position">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="item_category">Department 使用部门</label>
                                        <input  type="text" class="form-control" name="employee_department" id="employee_department">
                                    </div>
                                </div>
                            </div> <!-- END ROW-->
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="item_category">Phone Model 手机规格型号</label>
                                        <input  type="text" class="form-control" name="phone_model" id="phone_model">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="item_category">Phone MEID 手机MEID/IMEI号</label>
                                        <input  type="text" class="form-control" name="phone_meid" id="phone_meid">
                                    </div>
                                </div>
                            </div> <!-- END ROW-->
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="item_category">Accessories 电话配件 </label>
                                        <input type="text" class="form-control" name="phone_accesories" id="phone_accesories">
                                    </div>
                                </div>
                            </div> <!-- END ROW-->
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="item_category">Quantity 数量  </label>
                                        <input  type="number" class="form-control" name="phone_quantity" id="phone_quantity">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="item_category">Company Phone Number 公司手机号码</label>
                                        <input type="text" class="form-control" name="phone_number" id="phone_number">
                                    </div>
                                </div>
                            </div> <!-- END ROW-->
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="item_category">Collect Date 领取日期</label>
                                        <input  type="text" class="form-control" name="phone_collect_date" id="phone_collect_date">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="item_category">Return Date 退回日期 </label>
                                        <input  type="text" class="form-control" name="phone_return_date" id="phone_return_date">
                                    </div>
                                </div>
                            </div> <!-- END ROW-->

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="item_category">Get From 向谁领取</label>
                                        <input  type="text" class="form-control" name="phone_get_from" id="phone_get_from">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="item_category">Status of Use 使用状态</label>
                                        <select class="form-control" name="phone_status" id="phone_status">
                                        <option value="">Select</option>
                                        <option value="Used">Used</option>
                                        <option value="Spare">Spare</option>
                                        <option value="-NIL-">-NIL-</option>
                                        </select>
                                    </div>
                                </div>
                            </div> <!-- END ROW-->
                            <div class="row" style="margin-top: 10px; text-align: center; margin-bottom: 10px">
                                <div class="col-md-12 add_imgUp_meid">
                                    <div class="form-group">
                                        <label for="customFile">Phone MEID Number 手机型号图</label>
                                        <div class="custom-file">
                                            <input type="file" class="add_uploadFile_meid custom-file-input" name="add_uploadFile_meid">
                                            <label class="custom-file-label" for="customFile">Choose</label>
                                        </div>
                                    </div>
                                    <center>
                                        <div class="row" style="display: block;">
                                            <div class="img-responsive add_imagePreview_meid"></div>
                                        </div>
                                    </center>
                                </div>
                            </div> <!-- END ROW-->
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="item_category">Remark 备注</label>
                                        <textarea rows="4" class="form-control" name="phone_remark" id="phone_remark"></textarea>
                                    </div>
                                </div>
                            </div> <!-- END ROW-->
                        </div>
                    </div> <!-- END FORM-->
                    <!--Footer-->
                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-danger" id="btn-add">Save</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- EDIT MODAL -->
<div class="modal fade" id="modal-edit">
    <div class="modal-dialog modal-lg" style="overflow-y: initial !important">
        <div class="modal-content">
            <!--Header-->
            <div class="modal-header" style="padding-bottom: 0px;">
                <p class="heading lead"><strong>Edit Asset Record</strong>
                </p>
                <button style="" type="button" class="btn btn-danger" data-toggle="modal" data-target="#modal-delete" style="float: right;">Delete</button>
            </div>
            <form method="post" id="form-edit" enctype="multipart/form-data">
                @csrf
                <div class="modal-body" style="height: 80vh;overflow-y: auto;">
                    <!-- BEGIN FORM-->
                    <div class="row justify-content-md-center">
                        <div class="col-md-12">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input name="phone_id" id="phone_id" type="hidden">
                                    </div>
                                </div>
                            </div> <!-- END ROW-->
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="item_category">Phone User Name 使用人  </label>
                                        <input class="form-control" required name="phone_user" id="phone_user" type="text">
                                    </div>
                                </div>
                            </div> <!-- END ROW-->
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="item_category">Position 职位</label>
                                        <input type="text" class="form-control" name="employee_position" id="employee_position">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="item_category">Department 使用部门</label>
                                        <input type="text" class="form-control" name="employee_department" id="employee_department">
                                    </div>
                                </div>
                            </div> <!-- END ROW-->
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="item_category">Phone Model 手机规格型号</label>
                                        <input type="text" class="form-control" name="phone_model" id="phone_model">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="item_category">Phone MEID 手机MEID/IMEI号</label>
                                        <input type="text" class="form-control" name="phone_meid" id="phone_meid">
                                    </div>
                                </div>
                            </div> <!-- END ROW-->
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="item_category">Accessories 电话配件 </label>
                                        <input type="text" class="form-control" name="phone_accesories" id="phone_accesories">
                                    </div>
                                </div>
                            </div> <!-- END ROW-->
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="item_category">Quantity 数量  </label>
                                        <input type="number" class="form-control" name="phone_quantity" id="phone_quantity">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="item_category">Company Phone Number 公司手机号码</label>
                                        <input type="text" class="form-control" name="phone_number" id="phone_number">
                                    </div>
                                </div>
                            </div> <!-- END ROW-->
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="item_category">Collect Date 领取日期</label>
                                        <input type="text" class="form-control" name="phone_collect_date" id="phone_collect_date">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="item_category">Return Date 退回日期 </label>
                                        <input type="text" class="form-control" name="phone_return_date" id="phone_return_date">
                                    </div>
                                </div>
                            </div> <!-- END ROW-->

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="item_category">Get From 向谁领取</label>
                                        <input type="text" class="form-control" name="phone_get_from" id="phone_get_from">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="item_category">Status of Use 使用状态</label>
                                        <select class="form-control" name="phone_status" id="phone_status">
                                        <option value="">Select</option>
                                        <option value="Used">Used</option>
                                        <option value="Spare">Spare</option>
                                        <option value="-NIL-">-NIL-</option>
                                        </select>
                                    </div>
                                </div>
                            </div> <!-- END ROW-->
                            <div class="row" style="margin-top: 10px; text-align: center; margin-bottom: 10px">
                                <div class="col-md-12 edit_imgUp_meid">
                                    <div class="form-group">
                                        <label for="customFile">Phone MEID Number 手机型号图</label>
                                        <div class="custom-file">
                                            <input {{ $readonly ?? '' }}type="file" class="edit_uploadFile_meid custom-file-input" name="edit_uploadFile_meid">
                                            <label class="custom-file-label" for="customFile">Choose</label>
                                        </div>
                                    </div>
                                    <center>
                                        <div class="row" style="display: block;">
                                            <div class="img-responsive edit_imagePreview_meid"></div>
                                        </div>
                                    </center>
                                </div>
                            </div> <!-- END ROW-->
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="item_category">Remark 备注</label>
                                        <textarea rows="4" class="form-control" name="phone_remark" id="phone_remark"></textarea>
                                    </div>
                                </div>
                            </div> <!-- END ROW-->
                        </div>
                    </div> <!-- END FORM-->
                    <!--Footer-->
                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button style="" type="submit" class="btn btn-danger" id="btn-edit">Save</button>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- EDIT MODAL -->

<!-- DELETE SINGLE MODAL-->
<div class="modal fade" id="modal-delete">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header" style="padding-bottom: 0px;">
                <p class="heading lead">Confirm delete</p>
            </div>
            <div class="modal-body" class="alert alert-danger">
                <p>Are you sure you want to delete this record?</p>
                <input type="hidden" id="delete_id">
            </div>

            <!--Footer-->
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                <button type="button" class="btn btn-danger btn-delete-single-confirm">Confirm</button>
            </div>
        </div>
    </div>
</div>


<!-- DELETE MULTIPLE MODAL -->
<div class="modal fade" id="modal-delete-multiple">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header" style="padding-bottom: 0px;">
                <p class="heading lead">Confirm delete</p>
            </div>
            <div class="modal-body" class="alert alert-danger">
                <p>Are you sure you want to delete this item(s)?</p>
            </div>

            <!--Footer-->
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                <button type="button" class="btn btn-danger btn-delete-multiple-confirm">Delete</button>
            </div>
        </div>
    </div>
</div>

<!-- ALERT DELETE MULTIPLE -->
<div class="modal fade" id="modal-delete-alert">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header" style="padding-bottom: 0px;">
                <p class="heading lead">Alert</p>
            </div>
            <div class="modal-body" class="alert alert-danger">
                <p>Please check item to delete</p>
            </div>

            <!--Footer-->
            <div class="modal-footer justify-content-between">
                <button type="submit" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

@endsection
@section('script')
<!-- DataTables -->
<script src="{{asset('assets/plugins/datatables/jquery.dataTables.js')}}"></script>
<script src="{{asset('assets/plugins/datatables-bs4/js/dataTables.bootstrap4.js')}}"></script>
<script src="{{ asset('assets/datatable/dataTables.buttons.min.js')}}"></script>
<script src="{{ asset('assets/datatable/buttons.flash.min.js')}}"></script>
<script src="{{ asset('assets/datatable/jszip.min.js')}}"></script>
<script src="{{ asset('assets/datatable/pdfmake.min.js')}}"></script>
<script src="{{ asset('assets/datatable/vfs_fonts.js')}}"></script>
<script src="{{ asset('assets/datatable/buttons.html5.min.js')}}"></script>
<script src="{{ asset('assets/datatable/buttons.print.min.js')}}"></script>
<!-- Ekko Lightbox -->
<script src="{{ asset('assets/plugins/ekko-lightbox/ekko-lightbox.min.js')}}"></script>
<!-- FIRST SCRIPT -->
<script>
    //DATATABLE

    $(document).ready(function(){
        var oSettings;
        var dataTable = $('#table-phone').DataTable({
            ordering: false,
            scrollX: true,
            initComplete: function () {
                this.api().columns().every( function () {
                    var column = this;
                    var select = $('<select><option value=""></option></select>')
                        .appendTo( $(column.footer()).empty() )
                        .on( 'change', function () {
                            var val = $.fn.dataTable.util.escapeRegex(
                                $(this).val()
                            );

                            column
                                .search( val ? '^'+val+'$' : '', true, false )
                                .draw();
                        } );

                    column.data().unique().sort().each( function ( d, j ) {
                        select.append( '<option value="'+d+'">'+d+'</option>' )
                    } );
                } );
            },
            dom: 'Bfrtip', //dom: 'Blfrtip',
            buttons:
                [
                    {
                        extend: 'copy',
                        exportOptions: {
                            columns: [0,1,2,3,4,5,7,8,9,10,11,12,13]
                        }
                    },
                    // {
                    // extend: 'pdf',
                    // exportOptions: {
                    //     columns: [1, 2, 3, 4 ]
                    // },
                    //     title: 'Phone Asset List - {{date("F j, Y")}}',
                    // },
                    {
                        extend: 'excel',
                        exportOptions: {
                            columns: [0,1,2,3,4,5,7,8,9,10,11,12,13]
                        },
                        title: 'Phone Asset List - {{date("F j, Y")}}',
                    },
                    {
                        extend: 'print',title: '',customize: function(win)
                        {

                            var last = null;
                            var current = null;
                            var bod = [];

                            var css = '@page { size: landscape; }',
                                head = win.document.head || win.document.getElementsByTagName('head')[0],
                                style = win.document.createElement('style');

                            style.type = 'text/css';
                            style.media = 'print';

                            if (style.styleSheet)
                            {
                                style.styleSheet.cssText = css;
                            }
                            else
                            {
                                style.appendChild(win.document.createTextNode(css));
                            }

                            head.appendChild(style);
                        },
                        exportOptions: {
                            columns: [0,1,2,3,4,5,6,7,8,9,10,11,12,13]
                        }
                    },

                ]
        });
        //END DATATABLE
        oSettings = dataTable.settings();

        $("#btn_show_all").on('click',function(){
            oSettings[0]._iDisplayLength = oSettings[0].fnRecordsTotal();
            dataTable.draw();
        });

        //ADD AJAX FUNCTION
        $("#btn-add").click(function (event) {
            event.preventDefault();
            var form = $('#form-add')[0];
            var data = new FormData(form);
            $.ajax({
                url:"{{ url('phone/add') }}",
                beforeSend:function(){
                    $('#btn-add').text('Submitting...');
                },
                type: "POST",
                enctype: 'multipart/form-data',
                headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
                data: data,
                dataType:"json",
                contentType: false,
                cache:false,
                processData: false,
                success:function(data)
                {
                    if (data.errors) {
                        for( var count = 0; count < data.errors.length; count++)
                        {
                            toastr.error(data.errors[count])
                        }
                        $('#btn-add').text('Save');

                    }else{

                        setTimeout(function(){
                            location.reload();
                            $('#modal-add').modal('hide');
                            $('#btn-add').text('Save');
                            $('#form-add')[0].reset();

                            Swal.fire({
                                icon: 'success',
                                title: 'Success',
                                text: 'Record Added Successfully',
                                timer: 1000,
                            })

                        }, 150);

                    }
                }//END SUCCESS
            })

        });
        //END FUNCTION

        //ADD EDIT FUNCTION
        $("#btn-edit").click(function (event) {
            event.preventDefault();
            var form = $('#form-edit')[0];
            var data = new FormData(form);
            $.ajax({
                url:"{{ url('phone/edit') }}",
                beforeSend:function(){
                    $('#btn-edit').text('Submitting...');
                },
                type: "POST",
                enctype: 'multipart/form-data',
                headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
                data: data,
                dataType:"json",
                contentType: false,
                cache:false,
                processData: false,
                success:function(data)
                {
                    if (data.errors) {
                        for( var count = 0; count < data.errors.length; count++)
                        {
                            toastr.error(data.errors[count])
                        }
                        $('#btn-add').text('Save');

                    }else{

                        setTimeout(function(){
                            location.reload();
                            $('#modal-add').modal('hide');
                            $('#btn-add').text('Save');
                            $('#form-add')[0].reset();

                            Swal.fire({
                                icon: 'success',
                                title: 'Success',
                                text: 'Record Update Successfully',
                                timer: 1000,
                            })

                        }, 150);

                    }
                }//END SUCCESS
            })

        });
        //END FUNCTION

        //DELETE SINGLE FUNCTION
        $("button.btn-delete-single-confirm").click(function() {
            var delete_id = $('#delete_id').val();
            $.ajax({
                url: "{{ url('phone/delete') }}",
                beforeSend:function(){
                    $('.btn-delete-single-confirm').text('Deleting...');
                },
                type: 'POST',
                headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
                data: 'delete_id='+delete_id,
                success: function (data) {
                    setTimeout(function(){

                        $('#modal-delete').modal('hide');
                        $('.btn-delete-single-confirm').text('Delete');
                        location.reload();

                        Swal.fire({
                            icon: 'success',
                            title: 'Success',
                            text: 'Item Deleted Successfully!',
                            timer: 1000,
                        })


                    }, 150);
                }
            });
        });
        //END FUNCTION


        //DELETE FUNCTION MODAL
        $("button.btn-delete-check").click(function() {
            var idsArr = [];
            $(".checkbox:checked").each(function() {
                idsArr.push($(this).attr('data-id'));
            });
            if(idsArr.length <=0)
            {
                $('#modal-delete-alert').modal('show');
            }else{
                $('#modal-delete-multiple').modal('show');
            }
        });
        //END FUNCTION

        //DELETE MULTIPLE FUNCTION
        $("button.btn-delete-multiple-confirm").click(function() {
            var idsArr = [];
            $(".checkbox:checked").each(function() {
                idsArr.push($(this).attr('data-id'));
            });
            var strIds = idsArr.join(",");
            $.ajax({
                url: "{{ url('phone/multiple/delete') }}",
                beforeSend:function(){
                    $('.btn-delete-multiple-confirm').text('Deleting...');
                },
                type: 'POST',
                headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
                data: 'ids='+strIds,
                success: function (data) {
                    setTimeout(function(){

                        location.reload();
                        $('#modal-delete-multiple').modal('hide');
                        $("input:checkbox").prop('checked', false);
                        $('.btn-delete-multiple-confirm').text('Delete');

                        Swal.fire({
                            icon: 'success',
                            title: 'Success',
                            text: 'Item(s) Deleted Successfully!',
                            timer: 1000,
                        })

                    }, 150);
                }
            });
        });
        //END FUNCTION

        //CHECK ALL
        $("#check-all").change(function () {
            $("input:checkbox").prop('checked', $(this).prop("checked"));
        });
        //END FUNCTION

    });//END DOCUMENT READY FUNCTION

    //DELETE MODAL FUNCTION
    $('#modal-delete').on('show.bs.modal', function (event) {
        var phone_id = $('#phone_id').val();
        var modal = $(this)
        modal.find('.modal-body #delete_id').val(phone_id)
    })
    //END FUNCTION

    //EDIT MODAL FUNCTION
    $('#modal-edit').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget) // Button that triggered the modal
        var phone_id = button.data('phone_id')
        var phone_user = button.data('phone_user')
        var employee_position = button.data('employee_position')
        var employee_department = button.data('employee_department')
        var phone_model = button.data('phone_model')
        var phone_meid = button.data('phone_meid')
        var phone_meid_image = button.data('phone_meid_image')
        var phone_accesories = button.data('phone_accesories')
        var phone_quantity = button.data('phone_quantity')
        var phone_number = button.data('phone_number')
        var phone_collect_date = button.data('phone_collect_date')
        var phone_return_date = button.data('phone_return_date')
        var phone_get_from = button.data('phone_get_from')
        var phone_status = button.data('phone_status')
        var phone_remark = button.data('phone_remark')

        var modal = $(this)
        modal.find('.modal-body #phone_id').val(phone_id)
        modal.find('.modal-body #phone_user').val(phone_user)
        modal.find('.modal-body #employee_position').val(employee_position)
        modal.find('.modal-body #employee_department').val(employee_department)
        modal.find('.modal-body #phone_model').val(phone_model)
        modal.find('.modal-body #phone_meid').val(phone_meid)
        modal.find('.modal-body #phone_accesories').val(phone_accesories)
        modal.find('.modal-body #phone_quantity').val(phone_quantity)
        modal.find('.modal-body #phone_number').val(phone_number)
        modal.find('.modal-body #phone_collect_date').val(phone_collect_date)
        modal.find('.modal-body #phone_return_date').val(phone_return_date)
        modal.find('.modal-body #phone_get_from').val(phone_get_from)
        modal.find('.modal-body #phone_status').val(phone_status)
        modal.find('.modal-body #phone_remark').val(phone_remark)
        $('.edit_imagePreview_meid').css("background-image", "url(/public/storage/images/asset/phone/"+phone_meid_image+")");
        $('.edit_imagePreview_meid').css('width','600px');
        $('.edit_imagePreview_meid').css('height','400px');
    })
    //END FUNCTION


    //DISPLAY IMAGE ONCHANGE FUNCTION
    $(function() {


        $(document).on("change",".add_uploadFile_meid", function()
        {
            var uploadFile = $(this);
            var files = !!this.files ? this.files : [];
            if (!files.length || !window.FileReader) return; // no file selected, or no FileReader support
            if (/^image/.test( files[0].type)){ // only image file
                var reader = new FileReader(); // instance of the FileReader
                reader.readAsDataURL(files[0]); // read the local file
                reader.onloadend = function(){ // set image data as background of div
                    //alert(uploadFile.closest(".upimage").find('.imagePreview').length);
                    uploadFile.closest(".add_imgUp_meid").find('.add_imagePreview_meid').css("background-image", "url("+this.result+")");
                    $('.add_imagePreview_meid').css('width','600px');
                    $('.add_imagePreview_meid').css('height','400px');
                    $('.add_imagePreview_meid').css('margin','10px 20px');

                }
            }
        });
        // END ADD MEID

        $(document).on("change",".edit_uploadFile_meid", function()
        {
            var uploadFile = $(this);
            var files = !!this.files ? this.files : [];
            if (!files.length || !window.FileReader) return; // no file selected, or no FileReader support
            if (/^image/.test( files[0].type)){ // only image file
                var reader = new FileReader(); // instance of the FileReader
                reader.readAsDataURL(files[0]); // read the local file
                reader.onloadend = function(){ // set image data as background of div
                    //alert(uploadFile.closest(".upimage").find('.imagePreview').length);
                    uploadFile.closest(".edit_imgUp_meid").find('.edit_imagePreview_meid').css("background-image", "url("+this.result+")");
                    $('.edit_imagePreview_meid').css('width','600px');
                    $('.edit_imagePreview_meid').css('height','400px');
                    $('.edit_imagePreview_meid').css('margin','10px 20px');

                }
            }
        });
        //END EDIT MEID

    });
    //END FUNCTION
</script>

<script>
    $(function () {
        $(document).on('click', '[data-toggle="lightbox"]', function(event) {
            event.preventDefault();
            $(this).ekkoLightbox({
                alwaysShowClose: false
            });
        });

        $('.btn[data-filter]').on('click', function() {
            $('.btn[data-filter]').removeClass('active');
            $(this).addClass('active');
        });
    })
</script>


@endsection
