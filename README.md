PHP-CLI Docker-Container
=========================

This repository is used to create Docker images for running PHP CLI commands.

Usage
--------------------

1. Install the `pseiffert/php` container (optional - this step is performed by Docker automatically when running the container):

    ``` sh
    $ docker pull pseiffert/php-cli
    ```

2. Define an bash alias that runs this container whenever `composer` is invoked on the command line:

	``` sh
	$ echo "alias php='docker run --rm -it -v $(pwd):/opt pseiffert/php-cli'" >> ~/.bashrc
	$ source ~/.bashrc
	```

3. Run PHP as always:

	``` sh
	$ php -i
	```
