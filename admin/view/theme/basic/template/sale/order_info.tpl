<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
    <div class="page-header">
        <div class="container-fluid">
            <div class="pull-right">
                <button type="button" id="btn-invoice" onclick="location.href='<?php echo $invoice; ?>';" data-toggle="tooltip" title="<?php echo $button_invoice_print; ?>" class="btn btn-default"><i class="fa fa-print"></i></button>
                <button type="button" id="btn-invoicepdf" onclick="location.href='<?php echo $invoicepdf; ?>';" data-toggle="tooltip" title="<?php echo $button_invoice_pdf; ?>" class="btn btn-default"><i class="fa fa-file-pdf-o"></i></button>
                <button type="button" id="btn-shipping" onclick="location.href='<?php echo $shipping; ?>';" data-toggle="tooltip" title="<?php echo $button_shipping_print; ?>" class="btn btn-default"><i class="fa fa-truck"></i></button>
                <button type="button" id="btn-edit" onclick="location.href='<?php echo $edit; ?>';" data-toggle="tooltip" title="<?php echo $button_edit; ?>" class="btn btn-primary"><i class="fa fa-pencil"></i></button>
                <button type="button" id="btn-cancel" onclick="location.href='<?php echo $cancel; ?>';" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></button>
            </div>
            <h1><?php echo $heading_title; ?></h1>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-8 left-col">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title"><?php echo $tab_order; ?></h3>
                        <div class="pull-right">
                            <div class="panel-chevron"><i class="fa fa-chevron-up rotate-reset"></i></div>
                        </div>
                    </div>
                    <div class="panel-body">
                        <div class="order">
                            <div class="table-responsive">
                            <table class="table table-bordered">
                                <tr>
                                    <td><?php echo $text_order_id; ?></td>
                                    <td>#<?php echo $order_id; ?></td>
                                </tr>
                                <tr>
                                    <td><?php echo $text_invoice_no; ?></td>
                                    <td><?php if ($invoice_no) { ?>
                                        <?php echo $invoice_no; ?>
                                        <?php } else { ?>
                                        <button id="button-invoice" class="btn btn-success btn-xs"><i class="fa fa-cog"></i> <?php echo $button_generate; ?></button>
                                        <?php } ?></td>
                                </tr>
                                <tr>
                                    <td><?php echo $text_store_name; ?></td>
                                    <td><?php echo $store_name; ?></td>
                                </tr>
                                <tr>
                                    <td><?php echo $text_store_url; ?></td>
                                    <td><a href="<?php echo $store_url; ?>" target="_blank"><?php echo $store_url; ?></a></td>
                                </tr>
                                <?php if ($customer) { ?>
                                <tr>
                                    <td><?php echo $text_customer; ?></td>
                                    <td><a href="<?php echo $customer; ?>" target="_blank"><?php echo $firstname; ?> <?php echo $lastname; ?></a></td>
                                </tr>
                                <?php } else { ?>
                                <tr>
                                    <td><?php echo $text_customer; ?></td>
                                    <td><?php echo $firstname; ?> <?php echo $lastname; ?></td>
                                </tr>
                                <?php } ?>
                                <?php if ($customer_group) { ?>
                                <tr>
                                    <td><?php echo $text_customer_group; ?></td>
                                    <td><?php echo $customer_group; ?></td>
                                </tr>
                                <?php } ?>
                                <tr>
                                    <td><?php echo $text_email; ?></td>
                                    <td><a href="mailto:<?php echo $email; ?>"><?php echo $email; ?></a></td>
                                </tr>
                                <tr>
                                    <td><?php echo $text_telephone; ?></td>
                                    <td><?php echo $telephone; ?></td>
                                </tr>
                                <?php if ($fax) { ?>
                                <tr>
                                    <td><?php echo $text_fax; ?></td>
                                    <td><?php echo $fax; ?></td>
                                </tr>
                                <?php } ?>
                                <?php foreach ($account_custom_fields as $custom_field) { ?>
                                <tr>
                                    <td><?php echo $custom_field['name']; ?>:</td>
                                    <td><?php echo $custom_field['value']; ?></td>
                                </tr>
                                <?php } ?>
                                <tr>
                                    <td><?php echo $text_total; ?></td>
                                    <td><?php echo $total; ?></td>
                                </tr>
                                <?php if ($customer && $reward) { ?>
                                <tr>
                                    <td><?php echo $text_reward; ?></td>
                                    <td><?php echo $reward; ?>
                                        <?php if (!$reward_total) { ?>
                                        <button id="button-reward-add" class="btn btn-success btn-xs"><i class="fa fa-plus-circle"></i> <?php echo $button_reward_add; ?></button>
                                        <?php } else { ?>
                                        <button id="button-reward-remove" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-danger btn-xs"><i class="fa fa-minus-circle"></i> <?php echo $button_reward_remove; ?></button>
                                        <?php } ?></td>
                                </tr>
                                <?php } ?>
                                <?php if ($order_status) { ?>
                                <tr>
                                    <td><?php echo $text_order_status; ?></td>
                                    <td id="order-status"><?php echo $order_status; ?></td>
                                </tr>
                                <?php } ?>
                                <?php if ($comment) { ?>
                                <tr>
                                    <td><?php echo $text_comment; ?></td>
                                    <td><?php echo $comment; ?></td>
                                </tr>
                                <?php } ?>
                                <?php if ($affiliate) { ?>
                                <tr>
                                    <td><?php echo $text_affiliate; ?></td>
                                    <td><a href="<?php echo $affiliate; ?>"><?php echo $affiliate_firstname; ?> <?php echo $affiliate_lastname; ?></a></td>
                                </tr>
                                <tr>
                                    <td><?php echo $text_commission; ?></td>
                                    <td><?php echo $commission; ?>
                                        <?php if (!$commission_total) { ?>
                                        <button id="button-commission-add" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-success btn-xs"><i class="fa fa-plus-circle"></i> <?php echo $button_commission_add; ?></button>
                                        <?php } else { ?>
                                        <button id="button-commission-remove" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-danger btn-xs"><i class="fa fa-minus-circle"></i> <?php echo $button_commission_remove; ?></button>
                                        <?php } ?></td>
                                </tr>
                                <?php } ?>
                                <?php if ($ip) { ?>
                                <tr>
                                    <td><?php echo $text_ip; ?></td>
                                    <td><?php echo $ip; ?></td>
                                </tr>
                                <?php } ?>
                                <?php if ($forwarded_ip) { ?>
                                <tr>
                                    <td><?php echo $text_forwarded_ip; ?></td>
                                    <td><?php echo $forwarded_ip; ?></td>
                                </tr>
                                <?php } ?>
                                <?php if ($user_agent) { ?>
                                <tr>
                                    <td><?php echo $text_user_agent; ?></td>
                                    <td><?php echo $user_agent; ?></td>
                                </tr>
                                <?php } ?>
                                <?php if ($accept_language) { ?>
                                <tr>
                                    <td><?php echo $text_accept_language; ?></td>
                                    <td><?php echo $accept_language; ?></td>
                                </tr>
                                <?php } ?>
                                <tr>
                                    <td><?php echo $text_date_added; ?></td>
                                    <td><?php echo $date_added; ?></td>
                                </tr>
                                <tr>
                                    <td><?php echo $text_date_modified; ?></td>
                                    <td><?php echo $date_modified; ?></td>
                                </tr>
                            </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title"><?php echo $tab_product; ?></h3>
                        <div class="pull-right">
                            <div class="panel-chevron"><i class="fa fa-chevron-up rotate-reset"></i></div>
                        </div>
                    </div>
                    <div class="panel-body">
                        <div class="product">
                            <div class="table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                <tr>
                                    <td class="text-left"><?php echo $column_product; ?></td>
                                    <td class="text-left"><?php echo $column_model; ?></td>
                                    <td class="text-right"><?php echo $column_quantity; ?></td>
                                    <td class="text-right"><?php echo $column_price; ?></td>
                                    <td class="text-right"><?php echo $column_total; ?></td>
                                </tr>
                                </thead>
                                <tbody>
                                <?php foreach ($products as $product) { ?>
                                <tr>
                                    <td class="text-left"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                                        <?php foreach ($product['option'] as $option) { ?>
                                        <br />
                                        <?php if ($option['type'] != 'file') { ?>
                                        &nbsp;<small> - <?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
                                        <?php } else { ?>
                                        &nbsp;<small> - <?php echo $option['name']; ?>: <a href="<?php echo $option['href']; ?>"><?php echo $option['value']; ?></a></small>
                                        <?php } ?>
                                        <?php } ?></td>
                                    <td class="text-left"><?php echo $product['model']; ?></td>
                                    <td class="text-right"><?php echo $product['quantity']; ?></td>
                                    <td class="text-right"><?php echo $product['price']; ?></td>
                                    <td class="text-right"><?php echo $product['total']; ?></td>
                                </tr>
                                <?php } ?>
                                <?php foreach ($vouchers as $voucher) { ?>
                                <tr>
                                    <td class="text-left"><a href="<?php echo $voucher['href']; ?>"><?php echo $voucher['description']; ?></a></td>
                                    <td class="text-left"></td>
                                    <td class="text-right">1</td>
                                    <td class="text-right"><?php echo $voucher['amount']; ?></td>
                                    <td class="text-right"><?php echo $voucher['amount']; ?></td>
                                </tr>
                                <?php } ?>
                                <?php foreach ($totals as $total) { ?>
                                <tr>
                                    <td colspan="4" class="text-right"><?php echo $total['title']; ?>:</td>
                                    <td class="text-right"><?php echo $total['text']; ?></td>
                                </tr>
                                <?php } ?>
                                </tbody>
                            </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title"><?php echo $tab_history; ?></h3>
                        <div class="pull-right">
                            <div class="panel-chevron"><i class="fa fa-chevron-up rotate-reset"></i></div>
                        </div>
                    </div>
                    <div class="panel-body">
                        <div class="history">
                            <div id="history"></div>
                            <br />
                            <fieldset>
                                <legend><?php echo $text_history; ?></legend>
                                <form class="form-horizontal">
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="input-order-status"><?php echo $entry_order_status; ?></label>
                                        <div class="col-sm-10">
                                            <select name="order_status_id" id="input-order-status" class="form-control">
                                                <?php foreach ($order_statuses as $order_statuses) { ?>
                                                <?php if ($order_statuses['order_status_id'] == $order_status_id) { ?>
                                                <option value="<?php echo $order_statuses['order_status_id']; ?>" selected="selected"><?php echo $order_statuses['name']; ?></option>
                                                <?php } else { ?>
                                                <option value="<?php echo $order_statuses['order_status_id']; ?>"><?php echo $order_statuses['name']; ?></option>
                                                <?php } ?>
                                                <?php } ?>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="input-notify"><?php echo $entry_notify; ?></label>
                                        <div class="col-sm-10">
                                            <input type="checkbox" name="notify" value="1" id="input-notify" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="input-comment"><?php echo $entry_comment; ?></label>
                                        <div class="col-sm-10">
                                            <textarea name="comment" rows="8" id="input-comment" class="form-control"></textarea>
                                        </div>
                                    </div>
                                </form>
                                <div class="text-right">
                                    <button id="button-history" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><i class="fa fa-plus-circle"></i> <?php echo $button_history_add; ?></button>
                                </div>
                            </fieldset>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 right-col">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title"><?php echo $tab_payment; ?></h3>
                        <div class="pull-right">
                            <div class="panel-chevron"><i class="fa fa-chevron-up rotate-reset"></i></div>
                        </div>
                    </div>
                    <div class="panel-body">
                        <div class="payment">
                            <div class="table-responsive">
                            <table class="table table-bordered">
                                <tr>
                                    <td><?php echo $text_firstname; ?></td>
                                    <td><?php echo $payment_firstname; ?></td>
                                </tr>
                                <tr>
                                    <td><?php echo $text_lastname; ?></td>
                                    <td><?php echo $payment_lastname; ?></td>
                                </tr>
                                <?php if ($payment_company) { ?>
                                <tr>
                                    <td><?php echo $text_company; ?></td>
                                    <td><?php echo $payment_company; ?></td>
                                </tr>
                                <?php } ?>
                                <tr>
                                    <td><?php echo $text_address_1; ?></td>
                                    <td><?php echo $payment_address_1; ?></td>
                                </tr>
                                <?php if ($payment_address_2) { ?>
                                <tr>
                                    <td><?php echo $text_address_2; ?></td>
                                    <td><?php echo $payment_address_2; ?></td>
                                </tr>
                                <?php } ?>
                                <tr>
                                    <td><?php echo $text_city; ?></td>
                                    <td><?php echo $payment_city; ?></td>
                                </tr>
                                <?php if ($payment_postcode) { ?>
                                <tr>
                                    <td><?php echo $text_postcode; ?></td>
                                    <td><?php echo $payment_postcode; ?></td>
                                </tr>
                                <?php } ?>
                                <tr>
                                    <td><?php echo $text_zone; ?></td>
                                    <td><?php echo $payment_zone; ?></td>
                                </tr>
                                <?php if ($payment_zone_code) { ?>
                                <tr>
                                    <td><?php echo $text_zone_code; ?></td>
                                    <td><?php echo $payment_zone_code; ?></td>
                                </tr>
                                <?php } ?>
                                <tr>
                                    <td><?php echo $text_country; ?></td>
                                    <td><?php echo $payment_country; ?></td>
                                </tr>
                                <?php foreach ($payment_custom_fields as $custom_field) { ?>
                                <tr>
                                    <td><?php echo $custom_field['name']; ?>:</td>
                                    <td><?php echo $custom_field['value']; ?></td>
                                </tr>
                                <?php } ?>
                                <tr>
                                    <td><?php echo $text_payment_method; ?></td>
                                    <td><?php echo $payment_method; ?></td>
                                </tr>
                            </table>
                            </div>
                        </div>
                    </div>
                </div>
                <?php if ($shipping_method) { ?>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title"><?php echo $tab_shipping; ?></h3>
                        <div class="pull-right">
                            <div class="panel-chevron"><i class="fa fa-chevron-up rotate-reset"></i></div>
                        </div>
                    </div>
                    <div class="panel-body">
                        <div class="shipping">
                            <div class="table-responsive">
                            <table class="table table-bordered">
                                <tr>
                                    <td><?php echo $text_firstname; ?></td>
                                    <td><?php echo $shipping_firstname; ?></td>
                                </tr>
                                <tr>
                                    <td><?php echo $text_lastname; ?></td>
                                    <td><?php echo $shipping_lastname; ?></td>
                                </tr>
                                <?php if ($shipping_company) { ?>
                                <tr>
                                    <td><?php echo $text_company; ?></td>
                                    <td><?php echo $shipping_company; ?></td>
                                </tr>
                                <?php } ?>
                                <tr>
                                    <td><?php echo $text_address_1; ?></td>
                                    <td><?php echo $shipping_address_1; ?></td>
                                </tr>
                                <?php if ($shipping_address_2) { ?>
                                <tr>
                                    <td><?php echo $text_address_2; ?></td>
                                    <td><?php echo $shipping_address_2; ?></td>
                                </tr>
                                <?php } ?>
                                <tr>
                                    <td><?php echo $text_city; ?></td>
                                    <td><?php echo $shipping_city; ?></td>
                                </tr>
                                <?php if ($shipping_postcode) { ?>
                                <tr>
                                    <td><?php echo $text_postcode; ?></td>
                                    <td><?php echo $shipping_postcode; ?></td>
                                </tr>
                                <?php } ?>
                                <tr>
                                    <td><?php echo $text_zone; ?></td>
                                    <td><?php echo $shipping_zone; ?></td>
                                </tr>
                                <?php if ($shipping_zone_code) { ?>
                                <tr>
                                    <td><?php echo $text_zone_code; ?></td>
                                    <td><?php echo $shipping_zone_code; ?></td>
                                </tr>
                                <?php } ?>
                                <tr>
                                    <td><?php echo $text_country; ?></td>
                                    <td><?php echo $shipping_country; ?></td>
                                </tr>
                                <?php foreach ($shipping_custom_fields as $custom_field) { ?>
                                <tr>
                                    <td><?php echo $custom_field['name']; ?>:</td>
                                    <td><?php echo $custom_field['value']; ?></td>
                                </tr>
                                <?php } ?>
                                <?php if ($shipping_method) { ?>
                                <tr>
                                    <td><?php echo $text_shipping_method; ?></td>
                                    <td><?php echo $shipping_method; ?></td>
                                </tr>
                                <?php } ?>
                            </table>
                            </div>
                        </div>
                    </div>
                </div>
                <?php } ?>
                <?php if ($payment_action) { ?>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title"><?php echo $tab_action; ?></h3>
                        <div class="pull-right">
                            <div class="panel-chevron"><i class="fa fa-chevron-up rotate-reset"></i></div>
                        </div>
                    </div>
                    <div class="panel-body">
                        <div class="action">
                            <?php echo $payment_action; ?>
                        </div>
                    </div>
                </div>
                <?php } ?>
                <?php if ($antifraud_action) { ?>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title"><?php echo $tab_fraud; ?></h3>
                        <div class="pull-right">
                            <div class="panel-chevron"><i class="fa fa-chevron-up rotate-reset"></i></div>
                        </div>
                    </div>
                    <div class="panel-body">
                        <div class="fraud">
                            <?php foreach ($antifraud_action as $action) { ?>
                            <?php echo $action; ?>
                            <?php } ?>
                        </div>
                    </div>
                </div>
                <?php } ?>
            </div>
        </div>
    </div>

    <?php if (!$invoice_no) { ?>
    <script type="text/javascript"><!--
    $(document).ready(function() {
        $('#btn-invoicepdf').prop('disabled', true);
    });
    //--></script>
    <?php } ?>

    <script type="text/javascript"><!--
    $(document).delegate('#button-invoice', 'click', function() {
        $.ajax({
            url: 'index.php?route=sale/order/createinvoiceno&token=<?php echo $token; ?>&order_id=<?php echo $order_id; ?>',
            dataType: 'json',
            beforeSend: function() {
                $('#button-invoice').button('loading');
            },
            complete: function() {
                $('#button-invoice').button('reset');
            },
            success: function(json) {
                $('.alert').remove();

                if (json['error']) {
                    $('#tab-order').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
                }

                if (json['invoice_no']) {
                    $('#button-invoice').replaceWith(json['invoice_no']);
                    $('#btn-invoicepdf').prop('disabled', false);
                }
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    });

    $(document).delegate('#button-reward-add', 'click', function() {
        $.ajax({
            url: 'index.php?route=sale/order/addreward&token=<?php echo $token; ?>&order_id=<?php echo $order_id; ?>',
            type: 'post',
            dataType: 'json',
            beforeSend: function() {
                $('#button-reward-add').button('loading');
            },
            complete: function() {
                $('#button-reward-add').button('reset');
            },
            success: function(json) {
                $('.alert').remove();

                if (json['error']) {
                    $('#content > .container-fluid').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
                }

                if (json['success']) {
                    $('#content > .container-fluid').prepend('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

                    $('#button-reward-add').replaceWith('<button id="button-reward-remove" class="btn btn-danger btn-xs"><i class="fa fa-minus-circle"></i> <?php echo $button_reward_remove; ?></button>');
                }
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    });

    $(document).delegate('#button-reward-remove', 'click', function() {
        $.ajax({
            url: 'index.php?route=sale/order/removereward&token=<?php echo $token; ?>&order_id=<?php echo $order_id; ?>',
            type: 'post',
            dataType: 'json',
            beforeSend: function() {
                $('#button-reward-remove').button('loading');
            },
            complete: function() {
                $('#button-reward-remove').button('reset');
            },
            success: function(json) {
                $('.alert').remove();

                if (json['error']) {
                    $('#content > .container-fluid').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
                }

                if (json['success']) {
                    $('#content > .container-fluid').prepend('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

                    $('#button-reward-remove').replaceWith('<button id="button-reward-add" class="btn btn-success btn-xs"><i class="fa fa-plus-circle"></i> <?php echo $button_reward_add; ?></button>');
                }
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    });

    $(document).delegate('#button-commission-add', 'click', function() {
        $.ajax({
            url: 'index.php?route=sale/order/addcommission&token=<?php echo $token; ?>&order_id=<?php echo $order_id; ?>',
            type: 'post',
            dataType: 'json',
            beforeSend: function() {
                $('#button-commission-add').button('loading');
            },
            complete: function() {
                $('#button-commission-add').button('reset');
            },
            success: function(json) {
                $('.alert').remove();

                if (json['error']) {
                    $('#content > .container-fluid').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
                }

                if (json['success']) {
                    $('#content > .container-fluid').prepend('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

                    $('#button-commission-add').replaceWith('<button id="button-commission-remove" class="btn btn-danger btn-xs"><i class="fa fa-minus-circle"></i> <?php echo $button_commission_remove; ?></button>');
                }
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    });

    $(document).delegate('#button-commission-remove', 'click', function() {
        $.ajax({
            url: 'index.php?route=sale/order/removecommission&token=<?php echo $token; ?>&order_id=<?php echo $order_id; ?>',
            type: 'post',
            dataType: 'json',
            beforeSend: function() {
                $('#button-commission-remove').button('loading');

            },
            complete: function() {
                $('#button-commission-remove').button('reset');
            },
            success: function(json) {
                $('.alert').remove();

                if (json['error']) {
                    $('#content > .container-fluid').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
                }

                if (json['success']) {
                    $('#content > .container-fluid').prepend('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

                    $('#button-commission-remove').replaceWith('<button id="button-commission-add" class="btn btn-success btn-xs"><i class="fa fa-minus-circle"></i> <?php echo $button_commission_add; ?></button>');
                }
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    });

    $('#history').delegate('.pagination a', 'click', function(e) {
        e.preventDefault();

        $('#history').load(this.href);
    });

    $('#history').load('index.php?route=sale/order/history&token=<?php echo $token; ?>&order_id=<?php echo $order_id; ?>');

    $('#button-history').on('click', function() {
        if(typeof verifyStatusChange == 'function'){
            if(verifyStatusChange() == false){
                return false;
            }
        }

        $.ajax({
            url: 'index.php?route=sale/order/api&token=<?php echo $token; ?>&api=api/order/history&order_id=<?php echo $order_id; ?>',
            type: 'post',
            dataType: 'json',
            data: 'order_status_id=' + encodeURIComponent($('select[name=\'order_status_id\']').val()) + '&notify=' + ($('input[name=\'notify\']').prop('checked') ? 1 : 0) + '&append=' + ($('input[name=\'append\']').prop('checked') ? 1 : 0) + '&comment=' + encodeURIComponent($('textarea[name=\'comment\']').val()),
            beforeSend: function() {
                $('#button-history').button('loading');
            },
            complete: function() {
                $('#button-history').button('reset');
            },
            success: function(json) {
                $('.alert').remove();

                if (json['error']) {
                    $('#history').before('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + ' <button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }

                if (json['success']) {
                    $('#history').load('index.php?route=sale/order/history&token=<?php echo $token; ?>&order_id=<?php echo $order_id; ?>');

                    $('#history').before('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + ' <button type="button" class="close" data-dismiss="alert">&times;</button></div>');

                    $('textarea[name=\'comment\']').val('');

                    $('#order-status').html($('select[name=\'order_status_id\'] option:selected').text());
                }
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    });
    //--></script></div>
<?php echo $footer; ?>
</div>