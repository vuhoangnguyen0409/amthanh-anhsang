<?php
if (isset($_POST["btnSubmit"])) {
    //echo '<script>alert("Welcome '.$_POST["rdoMusic"].'")</script>';
    $music = $_POST["rdoMusic"];
    $light = $_POST["rdoLight"];
    $total = $_POST["rdoMusic"] + $_POST["rdoLight"];
    $name = $_POST["txtName"];
    $email = $_POST["txtEmail"];
    $phone = $_POST["txtPhone"];
    $address= $_POST["txtAddress"];
    $screenSize = $_POST["txtScreenSize"];
    $screenType = $_POST["sltScreenType"];
    $stageSize = $_POST["txtStageSize"];

    // print "<pre>";
    // print_r($total);
    // print "</pre>";
    //die();

    $message = '
        <html>
        <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
            <title></title>
            <style>
                #email-wrap {
                    background: #333;
                    color: #fff;
                }
                th {
                    border: 1px solid #ddd;
                    padding: 10px 20px;
                    width: 30%;
                }

                td {
                    border: 1px solid #ddd;
                    padding: 10px 20px;
                    width: 70%;
                }

                a {
                    color: #aaa !important;
                }
            </style>
        </head>
        <body>
            <p style="text-align:center"><img src="https://sukienphuquoc.com/wp-content/uploads/2021/09/LOGO-HONG-TRA-VANG-DONG-PNG.png" width="70px"></p>
            <div id="email-wrap">
                <table>
                    <tr>
                        <th>Tên</th>
                        <td>'.$name.'</td>
                    </tr>
                    <tr>
                        <th>Số điện thoại</th>
                        <td><a href="tel:'.$phone.'">'.$phone.'</a></td>
                    </tr>
                    <tr>
                        <th>Email</th>
                        <td>'.$email.'</td>
                    </tr>
                    <tr>
                        <th>Địa chỉ</th>
                        <td>'.$address.'</td>
                    </tr>
                    <tr>
                        <th>Gói Âm Thanh</th>
                        <td>'.$music.'</td>
                    </tr>
                    <tr>
                        <th>Màn hình Led</th>
                        <td>'.$screenSize.' m2<span style="display:inline-block;padding:0 10px">('.$screenType.')</span></td>
                    </tr>
                    <tr>
                        <th>Sân Khấu</th>
                        <td>'.$stageSize.' m2<span style="display:inline-block;padding:0 10px">Cao: 0.8m</span></td>
                    </tr>
                    <tr>
                        <th>Gói Ánh sáng</th>
                        <td>'.$light.'</td>
                    </tr>
                    <tr style="display:none;">
                        <th>Tổng cộng</th>
                        <td>'.$total.'tr vnd</td>
                    </tr>
                </table>
            </div>
        </body>
        </html>';
        //
        $from = "admin@sukienphuquoc.com";
        $to = "admin@sukienphuquoc.com";
        $subject = "Book An Event From amthanhphuquoc.com";
        // HTML CSS
        $headers = 'MIME-Version: 1.0' . "\r\n";
        $headers .= "Content-type:text/html;charset=iso-8859-1" . "\r\n";
        // Avoid spam
        $headers .= 'From: ' .$from. "\r\n";
        $headers .= "Reply-To: admin@sukienphuquoc.com\r\n";
        $headers .= "Return-Path: info@sukienphuquoc.com\r\n";
        //$headers .= "CC: nguyen.daiha@yahoo.com\r\n";
        //$headers .= "BCC: hidden@example.com\r\n";
        if ( mail($to,$subject,$message,$headers) ) {
            //echo "The email has been sent!";
            echo '<script>alert("Thanks for your planning. We will call you soon!")</script>';
            echo '<script> window.location.href = "https://amthanhphuquoc.com/";</script>';
        } else {
            echo "The email has failed!";
        }
}
?>
<?php
/**
* Template Name: Test
**/
get_header();
?>
<?php
if (have_posts()): while(have_posts()): the_post();?>

<div class="pt pt-fs-parallax align-left pt--is-image fx-parallax fx-scroll-fade" style="background-image: url(<?php the_post_thumbnail_url(); ?>); background-position: 50% 0px;">
    <div class="fade-layer" style="opacity: 0;"></div>
    <div class="pt-fs-parallax__inner is-waypoint done">
        <div class="image-container set-full-height">
            <div class="container">
    	        <div class="row">
    		        <div class="col-sm-10 col-sm-offset-1">
    		            <!-- Wizard container -->
    		            <div class="wizard-container">
    		                <div class="card wizard-card" data-color="red" id="wizard">
    		                    <form action="" method="post">
    		                <!--        You can switch " data-color="blue" "  with one of the next bright colors: "green", "orange", "red", "purple"             -->

    		                    	<div class="wizard-header">
    		                        	<h3 class="wizard-title">
    		                        		Tạo 1 sự kiện
    		                        	</h3>
    									<h6 id="error"></h6>
    		                    	</div>
    								<div class="wizard-navigation">
    									<ul>
    			                            <li><a href="#music" data-toggle="tab">Âm Thanh</a></li>
                                            <li><a href="#screen" data-toggle="tab">Màn Hình Led</a></li>
                                            <li><a href="#stage" data-toggle="tab">Sân Khấu</a></li>
    			                            <li><a href="#light" data-toggle="tab">Ánh Sáng</a></li>
                                            <li><a href="#account" data-toggle="tab">Thông Tin</a></li>
    			                        </ul>
    								</div>


    		                        <div class="tab-content">

    		                            <div class="tab-pane" id="music">
    		                                <h4 class="info-text">Music</h4>
    		                                <div class="row">
    		                                    <div class="col-sm-10 col-sm-offset-1">
                                                    <?php
                                                    // Check rows exists.
                                                    if( have_rows('music') ):
                                                        // Loop through rows.
                                                        while( have_rows('music') ) : the_row();
                                                            // Load sub field value.
                                                        $music_package = get_sub_field('music_package');
                                                        $music_description = get_sub_field('music_description');?>
        		                                        <div class="col-sm-4">
        		                                            <div class="choice choice01" data-toggle="wizard-radio" rel="tooltip" title="This is good if you travel alone.">
        		                                                <input type="radio" name="rdoMusic" value="<?php echo $music_package;?>">
        		                                                <div class="icon">
        		                                                    <i class="material-icons">sensors</i>
        		                                                </div>
                                                                <div class="description">
        		                                                    <h6><?php echo $music_package;?></h6>
                                                                    <p><?php echo $music_description;?></p>
                                                                </div>
        		                                            </div>
        		                                        </div>
                                                    <?php
                                                    // End loop.
                                                    endwhile;

                                                // No value.
                                                else :
                                                    // Do something...
                                                endif;?>
    		                                    </div>
    		                                </div>
    		                            </div>

                                        <div class="tab-pane" id="screen">
    		                                <h4 class="info-text">screen</h4>
    		                                <div class="row">
    		                                    <div class="col-sm-10 col-sm-offset-1 w50">
                                                    <div class="screen-width">
                                                        <label>Ngang</label><input type="number" class="multiplier-1" id="screenW">
                                                    </div>
                                                    <div class="screen-height">
                                                        <label>Cao</label><input type="number" class="multiplier-1" id="screenH">
                                                    </div>
                                                    <div class="screenType">
                                                        <label for="screen-slect">Lắp ráp</label>
                                                        <select id="screen-slect" name="sltScreenType">
                                                           <option value="Trong Nhà" selected>Trong Nhà</option>
                                                           <option value="Ngoài Trời">Ngoài Trời</option>
                                                        </select>
                                                    </div>
    		                                        <div><h2>Kích Thước Màn Hình Chính <input type="text" class="screenSize disable" name="txtScreenSize" value=""><span class="label">m2</span></h2>
                                                    </div>
    		                                    </div>
    		                                </div>
    		                            </div>

                                        <div class="tab-pane" id="stage">
    		                                <h4 class="info-text">Stage</h4>
    		                                <div class="row">
    		                                    <div class="col-sm-10 col-sm-offset-1 w50">
                                                    <div class="stage-width">
                                                        <label>Ngang</label><input type="number" class="multiplier-2" id="stageW1">
                                                    </div>
                                                    <div class="stage-width-2">
                                                        <label>Rộng</label><input type="number" class="multiplier-2" id="stageW2">
                                                    </div>
                                                    <div class="stage-height">
                                                        <label>Cao</label><input type="text" class="disable" id="stageH" value="0.8m">
                                                    </div>
                                                     <div><h2>Kích Thước Sân Khấu <input type="text" class="stageSize disable" name="txtStageSize" value=""><span id="stageSize"></span><span class="label">m2</h2></div>
    		                                    </div>
    		                                </div>
    		                            </div>

    		                            <div class="tab-pane" id="light">
                                            <h4 class="info-text">Light</h4>
    		                                <div class="row">
    		                                    <div class="col-sm-10 col-sm-offset-1">
    		                                        <div class="col-sm-4">
    		                                            <div class="choice choice02" data-toggle="wizard-radio" rel="tooltip" title="This is good if you travel alone.">
    		                                                <input type="radio" name="rdoLight" value="Under 100 guests">
    		                                                <div class="icon">
    		                                                    <i class="material-icons">bolt</i>
    		                                                </div>
                                                            <h6>Under 100 guests</h6>
                                                            <p>Lorem Ipsum has been</p>
    		                                            </div>
    		                                        </div>
    		                                        <div class="col-sm-4">
    		                                            <div class="choice choice02" data-toggle="wizard-radio" rel="tooltip" title="Select this room if you're traveling with your family.">
    		                                                <input type="radio" name="rdoLight" value="Under 200 guests">
    		                                                <div class="icon">
    		                                                    <i class="material-icons">bolt</i>
    		                                                </div>
                                                            <h6>Under 200 guests</h6>
                                                            <p>Lorem Ipsum has been</p>
    		                                            </div>
    		                                        </div>
    												<div class="col-sm-4">
    		                                            <div class="choice choice02" data-toggle="wizard-radio" rel="tooltip" title="Select this option if you are coming with your team.">
    		                                                <input type="radio" name="rdoLight" value="Over 200 guests">
    		                                                <div class="icon">
    		                                                    <i class="material-icons">bolt</i>
    		                                                </div>
                                                            <h6>Over 200 guests</h6>
                                                            <p>Lorem Ipsum has been</p>
    		                                            </div>
    		                                        </div>
                                                    <div class="col-sm-4">
    		                                            <div class="choice choice02" data-toggle="wizard-radio" rel="tooltip" title="Select this option if you are coming with your team.">
    		                                                <input type="radio" name="rdoLight" value="Over 300 guests">
    		                                                <div class="icon">
    		                                                    <i class="material-icons">bolt</i>
    		                                                </div>
                                                            <h6>Over 300 guests</h6>
                                                            <p>Lorem Ipsum has been</p>
    		                                            </div>
    		                                        </div>
    		                                    </div>
    		                                </div>
    		                            </div>

                                        <div class="tab-pane" id="account">
    		                            	<div class="row">
    			                            	<div class="col-sm-12">
    			                                	<h4 class="info-text"> Information </h4>
    			                            	</div>
    		                                	<div class="col-sm-6">

                                                    <div class="input-group">
    													<span class="input-group-addon">
    														<i class="material-icons">account_circle</i>
    													</span>
    													<div class="form-group label-floating">
    			                                          	<label class="control-label">Họ Tên *</label>
    			                                          	<input name="txtName" type="text" class="form-control">
    			                                        </div>
    												</div>

    												<div class="input-group">
    													<span class="input-group-addon">
    														<i class="material-icons">email</i>
    													</span>
    													<div class="form-group label-floating">
    			                                          	<label class="control-label">Email</label>
    			                                          	<input name="txtEmail" type="text" class="form-control">
    			                                        </div>
    												</div>

    		                                	</div>
    		                                	<div class="col-sm-6">
                                                    <div class="input-group">
    													<span class="input-group-addon">
    														<i class="material-icons">perm_phone_msg</i>
    													</span>
    													<div class="form-group label-floating">
    			                                          	<label class="control-label">Số điện thoại *</label>
    			                                          	<input name="txtPhone" type="number" class="form-control">
    			                                        </div>
    												</div>

    												<div class="input-group">
    													<span class="input-group-addon">
    														<i class="material-icons">where_to_vote</i>
    													</span>
    													<div class="form-group label-floating">
    			                                          	<label class="control-label">Địa chỉ</label>
    			                                          	<input name="txtAddress" type="text" class="form-control">
    			                                        </div>
    												</div>
    		                                	</div>
    		                            	</div>
    		                            </div>
    		                        </div>
    	                        	<div class="wizard-footer">
    	                            	<div class="pull-right">
    	                                    <input type='button' class='btn btn-next btn-fill btn-danger btn-wd' name='next' value='Tiếp' />
    	                                    <input type='submit' name="btnSubmit" class='btn btn-finish btn-fill btn-danger btn-wd' name='finish' value='Finish' id="submit" />
    	                                </div>
    	                                <div class="pull-left">
    	                                    <input type='button' class='btn btn-previous btn-fill btn-default btn-wd' name='previous' value='Quay lại' />

    										<div class="footer-checkbox" style="display: none">
    											<div class="col-sm-12">
    											  <div class="checkbox">
    												  <label>
    													  <input type="checkbox" name="optionsCheckboxes">
    												  </label>
    												  Subscribe to our newsletter
    											  </div>
    										  </div>
    										</div>
    	                                </div>
    	                                <div class="clearfix"></div>
    	                        	</div>
    		                    </form>
    		                </div>
    		            </div> <!-- wizard container -->
    		        </div>
    	    	</div> <!-- row -->
    		</div> <!--  big container -->
	</div>
    </div>
</div>
<?php endwhile; ?>
<?php endif;?>
<?php get_footer(); ?>
