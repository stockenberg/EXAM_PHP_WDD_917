Vagrant.configure("2") do |config|
  config.vm.box = "damianlewis/lamp-php7.1"
  config.vm.network "forwarded_port", guest: 80, host: 4567, host_ip: "127.0.0.1"
  config.vm.synced_folder "./www", "/var/www/html"
  config.vm.provision "shell", inline: <<-SHELL
        # sudo apt-get update
        # sudo apt-get -y install phpmyadmin
        # sudo ln -s /etc/phpmyadmin/apache.conf /etc/apache2/conf-available/phpmyadmin.conf
        # sudo a2enconf phpmyadmin.conf
        # sudo service apache2 reload
  SHELL
end
