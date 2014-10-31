<?php
$config = array();

// Widget Wall
$config['widgets'][] = array(
    'name'     => 'news',
    'group'    => 'right',
    'priority' => 150,
    'plugin'   => 'news',
    'action'   => array(
        'index',
        'blogs',
    ),
    //'params'   => array('plugin' => 'news'),
);

return $config;
// EOF
