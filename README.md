ssp
===

Customized Server Side Processing (SSP) Class For [Datatables](http://datatables.net/) Library

While using Datatables I faced problem like these

 - Get Data from Multiple table not supported via Joining.
 - Extra Where, except filtering was not possible.
 - During work on Multiple Table, to avoid Duplicate key was not possible.

So due to allow complex query, I have changed the [SSP class](https://github.com/DataTables/DataTables/blob/master/examples/server_side/scripts/ssp.class.php) like my own. What i made changes are

 - I have added option to ADD JOIN Query and make necessary changes.
 - I have changed Column ARRAY format to handle get data from multiple table. Add TWO new index for complex query handle.


I have described the changes at [My personal blog](http://emranulhadi.wordpress.com/). You can see their to see details.

Hope it will help... 
Thanks
