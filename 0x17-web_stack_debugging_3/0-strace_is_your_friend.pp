# 0. Strace is your friend
exec { 'rename file':
  command => 'sudo sed -i "s/.phpp/.php/" /var/www/html/wp-settings.php',
  path    => '/bin/:/sbin/:/usr/bin/:/usr/sbin/',
}
