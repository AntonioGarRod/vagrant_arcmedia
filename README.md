# Arcmedia Vagrant Virtual Machine

Configuration required:
* Put the project code or clone the git project code on the 'html' folder
* Put the database dump with the name 'drupal.sql' on the vagrant root path  

The Arcmedia Vagrant VM implements the next steps:
* Apache2
    * Apache2 Rewrite URLs enabled
    * Apache2 Module mod_expires enabled
    * The apache2 configuration file can be found at 'local.conf' on vagrant root directory
* PHP 7.1
* MySQL 5.6
    * If the 'drupal.sql' exists, It will be imported automatically at:
       * Database Name: drupal
       * User: root
       * Pass: root
* XDebug
    * xdebug.idekey = 'vagrant'
    * xdebug.remote_port = 9000
    * xdebug.remote_handler=dbgp
    * xdebug.remote_log='/var/log/xdebug/xdebug.log'
    * xdebug.remote_host=10.0.2.2
* Composer installed
* On the Arcmedia Vagrant VM
    * Syncronized folder at '/vagrant' with Vagrant host code
    * The Project root directory can be found at '/vagrant/html'
    
* Drush installed
* IP: 192.168.33.10
* After install update your hosts file to include
    * 192.168.33.10 vagrant.dev 
    * 192.168.33.10 www.vagrant.dev