--
-- DataTables Ajax and server-side processing database (MySQL)
--

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
	`id`         int(10) NOT NULL auto_increment,
	`first_name` varchar(250) NOT NULL default '',
	`last_name`  varchar(250) NOT NULL default '',
	`position`   varchar(250) NOT NULL default '',
	`office`     varchar(250) NOT NULL default '',
	`start_date` timestamp DEFAULT CURRENT_TIMESTAMP,
	`age`        int(8),
	`salary`     int(8),
	`extn`       int(8),
	PRIMARY KEY  (`id`)
);

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;

CREATE TABLE IF NOT EXISTS `user_details` (
  `user_id` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL,
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dummy Data for table `user`
--
INSERT INTO `user`
		( id, first_name, last_name, age, position, salary, start_date, extn, office ) 
	VALUES
		( 1, 'Tiger', 'Nixon', 61, 'System Architect', 320800, '2011/04/25', 5421, 'Edinburgh' ),
		( 2, 'Garrett', 'Winters', 63, 'Accountant', 170750, '2011/07/25', 8422, 'Tokyo' ),
		( 3, 'Ashton', 'Cox', 66, 'Junior Technical Author', 86000, '2009/01/12', 1562, 'San Francisco' ),
		( 4, 'Cedric', 'Kelly', 22, 'Senior Javascript Developer', 433060, '2012/03/29', 6224, 'Edinburgh' ),
		( 5, 'Airi', 'Satou', 33, 'Accountant', 162700, '2008/11/28', 5407, 'Tokyo' ),
		( 6, 'Brielle', 'Williamson', 61, 'Integration Specialist', 372000, '2012/12/02', 4804, 'New York' ),
		( 7, 'Herrod', 'Chandler', 59, 'Sales Assistant', 137500, '2012/08/06', 9608, 'San Francisco' ),
		( 8, 'Rhona', 'Davidson', 55, 'Integration Specialist', 327900, '2010/10/14', 6200, 'Tokyo' ),
		( 9, 'Colleen', 'Hurst', 39, 'Javascript Developer', 205500, '2009/09/15', 2360,  'San Francisco' ),
		( 10, 'Sonya', 'Frost', 23, 'Software Engineer', 103600, '2008/12/13', 1667, 'Edinburgh' ),
		( 11, 'Jena', 'Gaines', 30, 'Office Manager', 90560, '2008/12/19', 3814, 'London' ),
		( 12, 'Quinn', 'Flynn', 22, 'Support Lead', 342000, '2013/03/03', 9497, 'Edinburgh' ),
		( 13, 'Charde', 'Marshall', 36, 'Regional Director', 470600, '2008/10/16', 6741,  'San Francisco' ),
		( 14, 'Haley', 'Kennedy', 43, 'Senior Marketing Designer', 313500, '2012/12/18', 3597, 'London' ),
		( 15, 'Tatyana', 'Fitzpatrick', 19, 'Regional Director', 385750, '2010/03/17', 1965, 'London' ),
		( 16, 'Michael', 'Silva', 66, 'Marketing Designer', 198500, '2012/11/27', 1581, 'London' ),
		( 17, 'Paul', 'Byrd', 64, 'Chief Financial Officer (CFO)', 725000, '2010/06/09', 3059, 'New York' ),
		( 18, 'Gloria', 'Little', 59, 'Systems Administrator', 237500, '2009/04/10', 1721, 'New York' ),
		( 19, 'Bradley', 'Greer', 41, 'Software Engineer', 132000, '2012/10/13', 2558, 'London' ),
		( 20, 'Dai', 'Rios', 35, 'Personnel Lead', 217500, '2012/09/26', 2290, 'Edinburgh' ),
		( 21, 'Jenette', 'Caldwell', 30, 'Development Lead', 345000, '2011/09/03', 1937, 'New York' ),
		( 22, 'Yuri', 'Berry', 40, 'Chief Marketing Officer (CMO)', 675000, '2009/06/25', 6154, 'New York' ),
		( 23, 'Caesar', 'Vance', 21, 'Pre-Sales Support', 106450, '2011/12/12', 8330, 'New York' ),
		( 24, 'Doris', 'Wilder', 23, 'Sales Assistant', 85600, '2010/09/20', 3023,  'Sidney' ),
		( 25, 'Angelica', 'Ramos', 47, 'Chief Executive Officer (CEO)', 1200000, '2009/10/09', 5797, 'London' );

--
-- Dummy Data for table `user_details`
--

INSERT INTO `user_details`
	( user_id, email, phone) 
	VALUES
		( 1, 't.nixon@datatables.net', '+001 253 698' ),
		( 2, 'g.winters@datatables.net', '+001 253 698' ),
		( 3, 'a.cox@datatables.net', '+001 253 698' ),
		( 4, 'c.kelly@datatables.net', '+001 253 698' ),
		( 5, 'a.satou@datatables.net', '+001 253 698' ),
		( 6, 'b.williamson@datatables.net', '+001 253 698' ),
		( 7, 'h.chandler@datatables.net', '+001 253 698' ),
		( 8, 'r.davidson@datatables.net', '+001 253 698' ),
		( 9, 'c.hurst@datatables.net', '+001 253 698' ),
		( 10, 's.frost@datatables.net', '+001 253 698' ),
		( 11, 'j.gaines@datatables.net', '+001 253 698' ),
		( 12, 'q.flynn@datatables.net', '+001 253 698' ),
		( 13, 'c.marshall@datatables.net', '+001 253 698' ),
		( 14, 'h.kennedy@datatables.net', '+001 253 698' ),
		( 15, 't.fitzpatrick@datatables.net', '+001 253 698' ),
		( 16, 'm.silva@datatables.net', '+001 253 698' ),
		( 17, 'p.byrd@datatables.net', '+001 253 698' ),
		( 18, 'g.little@datatables.net', '+001 253 698' ),
		( 19, 'b.greer@datatables.net', '+001 253 698' ),
		( 20, 'd.rios@datatables.net', '+001 253 698' ),
		( 21, 'j.caldwell@datatables.net', '+001 253 698' ),
		( 22, 'y.berry@datatables.net', '+001 253 698' ),
		( 23, 'c.vance@datatables.net', '+001 253 698' ),
		( 24, 'd.wilder@datatables.net', '+001 253 698' ),
		( 25, 'a.ramos@datatables.net', '+001 253 698' );