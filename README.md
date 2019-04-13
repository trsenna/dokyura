Dokyura
=======

Easily vagrant up the latest ubuntu LTS machine, but Docker friendly.


Accessing Globally
------------------

Sometimes you may want to `vagrant up` your Dokyura machine from anywhere on your filesystem. You can do this on Mac / Linux systems by adding a Bash function to your Bash profile. Here goes a nice sample:

```bash
dokyura() {
  if [ "destroy" == $1 ];
  then
    echo "Sorry, the '$1' command is not encouraged!"
    return 1
  fi

  ( cd /opt/vagrant-local/dokyura && vagrant $* )
}
```

Make sure to tweak the `/opt/vagrant-local/dokyura` path in the function to the location of your actual Dokyura installation. Once the function is installed, you may run commands like `dokyura up` or `dokyura ssh` from anywhere on your system.


The Hosts File
--------------

You must add the "domains" for your sites to the `hosts` file on your machine. The `hosts` file will redirect requests for your sites into your Dokyura machine. On Mac and Linux, this file is located at `/etc/hosts`. The lines you add to this file will look like the following:

~~~
192.168.29.10 dokyura.local
~~~
