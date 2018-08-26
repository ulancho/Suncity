<!-- ============================================================== -->
<!-- Page wrapper  -->
<!-- ============================================================== -->
<div class="page-wrapper">
    <input type="hidden" class="url" value="<?=base_url()?>">
    <!-- ============================================================== -->
    <!-- Container fluid  -->
    <!-- ============================================================== -->
    <div class="container-fluid">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor">Category 2</h4>
            </div>
            <div class="col-md-7 align-self-center text-right">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                        <li class="breadcrumb-item active">Blank Page</li>
                    </ol>
                </div><br>
                <button type="button" class="btn btn-primary open-modal" data-modalka_id="#modal_add">Add</button>
            </div>
        </div>
    </div>
        <!-- ============================================================== -->
        <!-- End Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Start Page Content -->
        <!-- ============================================================== -->
    <div class="row">
        <?php foreach ($data as $category):
               if($category->image_name){
                $image=base_url()."assets/upload/images/cat_two/".$category->image_name;
                    }
                else{
                    $image=base_url()."assets/upload/no-image.jpg";
                }
        ?>
            <div class="col-lg-4 col-xlg-3 col-md-5">
                <div class="card">
                    <div class="card-body">
                        <center class="m-t-30">
                            <a href="/admin/uslugi/<?= $category->id?>">
                                <img src="<?php echo $image ?>" style="width: 80%; height: 200px;" class="img-thumbnail">
                                <h4 class="card-title m-t-10"><?php echo $category->title ?></h4>
                            </a>
                            <div>
                                <textarea style="width:85%;height:100px; border:none;"><?php echo $category->description ?></textarea>
                            </div>
                            <button id="edit_cat<?= $category->id;?>" type="button" class="btn btn-success open-modal edit_cat"
                                    data-modalka_id="#modal_edit"
                                    data-img="<?php echo $category->image_name ?>"
                                    data-id="<?php echo $category->id ?>"
                                    data-title="<?php echo $category->title ?>"
                                    data-description="<?php echo $category->description ?>"
                                    data-title1="<?php echo $category->en_title ?>"
                                    data-description1="<?php echo $category->en_desc ?>"
                                    data-title2="<?php echo $category->chi_title ?>"
                                    data-description2="<?php echo $category->chi_desc ?>">Update</button>
                            <button type="button" class="btn btn-danger open-modal perehod"
                                    data-modalka_id="#modal_delete_two"
                                    data-id="<?php echo $category->id?>"
                                    data-img="<?php echo $category->image_name?>"
                            >Удалить</button>
                        </center>
                    </div>
                </div>
            </div>
        <?php endforeach;?>
    </div>
        <!-- ============================================================== -->
        <!-- End PAge Content -->
        <!-- ============================================================== -->
    <!--    UPDATE MODALS   -->
</div>
    <!-- ============================================================== -->
    <!-- End Container fluid  -->
    <!-- ============================================================== -->
</div>
<div class="modals" id="modal_add">
    <div class="maska close-modal" data-modalka_id="#modal_add"></div>
    <div class="modal_content">
        <span class="close_modal close-modal" data-modalka_id="#modal_add">
            <i class="material-icons">close</i>
        </span>
        <div class="content">
            <h3 style="width: 95%; margin: 0 auto">Добавления</h3><br>
            <form id="forma_add" class="w3-container"  action="javascript:void(0)" method="post" enctype="multipart/form-data">
                <p style="font-size: 18px">Поле для Русского языка</p>
                <p><label style="float: left;">Заголовок</label>
                    <input id="add_title" class="w3-input w3-border form-control" name="title" type="text">
                </p>
                <p><label style="float: left">Описание</label>
                    <textarea id="add_content" rows="6" class="w3-input w3-border form-control" name="content"></textarea>
                </p>
                <div id="cont_new_inp">

                </div>
                <input id="add_img" class="w3-button w3-white form-control" type="file" name="img_cattwo" style="float: left;">
                <input class="csrf" type="hidden" name="<?php echo $name?>" value="<?php echo $hash?>">
                <br>
                <br>
                <br>
                <button id="add_pole_cat_lang" class="btn btn-success" data-lang="Английского языка">Добавить поле для следующего языка</button>
                <input id="add_cat_two" class="w3-button w3-indigo" type="submit" value="button" style="float:right;">
            </form>
        </div>
    </div>
</div>
<div class="modals" id="modal_edit">
    <div class="maska close-modal" data-modalka_id="#modal_edit"></div>
    <div class="modal_content">
            <span class="close_modal close-modal" data-modalka_id="#modal_edit">
                <i class="material-icons">close</i>
            </span>
        <div class="content">
            <h3 style="width: 95%; margin: 0 auto">Редактирования</h3><br>
            <form id="forma_update" class="w3-container" action="javascript:void(0)" method="post" enctype="multipart/form-data">
                <p style="font-size: 18px">Поле для Русского языка</p>
                <p><label style="float: left;">Заголовок</label>
                    <input id="update_title" class="w3-input w3-border form-control" name="title" type="text" >
                </p>
                <p><label style="float: left">Описание</label>
                    <textarea id="update_content" rows="6" class="w3-input w3-border form-control" name="content"></textarea>
                </p>
                <div id="cont_new_inp_edit">

                </div>
                <input id="update_id" class="form-control" type="text" name="id" >
                <input id="update_img" class="w3-button w3-white form-control" type="file" name="img_cattwo" style="float: left;">
                <input id="update_img_name" type="hidden" name="img_name" style="float: left;">
                <input class="csrf" type="hidden" name="<?php echo $name?>" value="<?php echo $hash?>">
                <br>
                <br>
                <br>
                <button id="add_pole_edit_cat_lang" class="btn btn-success" data-lang="Английского языка">Редактировать следующего поле языка</button>
                <input id="update_cat_two" class="w3-button w3-indigo" type="submit" value="button" style="float:right;">
            </form>
        </div>
    </div>
</div>

<!-- start for delete-->
<div class="modals" id="modal_delete_two">
    <div class="maska close-modal" data-modalka_id="#modal_delete_two"></div>
    <div class="modal_content" style="height:150px;">
        <span class="close_modal close-modal" data-modalka_id="#modal_delete_two">
            <i class="material-icons">close</i>
        </span>
        <div class="content" style="text-align: center">
            <form id="forma_del" class="w3-container"  action="javascript:void(0)" method="post">
                <input name="id" type="hidden" class="id_del">
                <input name="img" type="hidden" class="img_name_del">
                <input class="csrf" type="hidden" name="<?php echo $name?>" value="<?php echo $hash?>">
                Вы уверены, что хотите удалить?
                <button type="button" class="btn btn-danger delete_cat">Да,удалить</button>
            </form>
        </div>
    </div>
</div>
<!-- end for delete-->

<!-- ============================================================== -->
<!-- End Page wrapper  -->
<!-- ============================================================== -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="<?php echo base_url()?>assets/admin/dist/js/script_cat_two.js"></script>