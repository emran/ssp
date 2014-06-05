
##Customized SSP Class For [Datatables](http://datatables.net/) Library


SSP is a Server Side Processing class for [Datatables](http://datatables.net/) Library v1.10.0. 
I have customized it for include JOIN, Extra WHERE, Rename acceptance within query.

While using Datatables with complex query, I faced problem like these

 - Get Data from Multiple table not supported via Joining.
 - Extra Where, except filtering was not possible.
 - During work on Multiple Table, to avoid Duplicate key was not possible.

So due to allow complex query, I have changed the [SSP class](https://github.com/DataTables/DataTables/blob/master/examples/server_side/scripts/ssp.class.php) like my own. What i made changes are

 - I have added option to ADD JOIN Query and make necessary changes.
 - I have changed Column ARRAY format to handle get data from multiple table. Add TWO new index for complex query handle.

### New formatted COLUMN Array #####

    $columns = array(
        array( 'db' => '`c`.`id`', 'dt' => 0, 'field' => 'id' ),
        array( 'db' => '`c`.`login`', 'dt' => 1 'field' => 'login' ),
        array( 'db' => '`c`.`password`', 'dt' => 2, 'field' => 'password' ),
        array( 'db' => '`c`.`name`', 'dt' => 3, 'field' => 'client_name', 'as' => 'client_name' ),
        array( 'db' => '`cn`.`name`', 'dt' => 4, 'field' => 'name', 'as' => 'currency_name' )

        array( 'db' => '`c`.`id_client`', 'dt' => 5,
               'formatter' => function( $d, $row ) {
                    return '<a href="EDIT_URL"><span class="label label-inverse"><i class="fa fa-edit"></i> Edit</span></a>
                    <span class="label label-danger pointer" onclick="return deleteclient(\''.$d.'\', \''.$row[1].'\')"><i                    class="fa fa       -trash-o"></i> Delete</span>';
                    }, 
                'field' => 'id_client' )

### How to Use #####

    $joinQuery = "FROM `{$table}` AS `c` LEFT JOIN `currency_names` AS `cn` ON (`cn`.`id` = `c`.`id_currency`)";
    $extraCondition = "`id_client`=".$ID_CLIENT_VALUE;
    
    $Ssp = new Libs_SSP();
    echo json_encode(
            $Ssp::simple( $_GET, $sql_details, $table, $primaryKey, $columns, $joinQuery, $extraCondition)
         );
         

I have described the changes at [My personal blog](http://emranulhadi.wordpress.com/). You can also check there to see details.

Hope it will help... 
Thanks
