# docker-ruby-sass
A [Sass](https://github.com/sass/sass) docker container

- built on top of `alpine` base image
- ~24 MB in size

## Setup

If you don't already have docker setup you'll need to install VirtualBox and boot2docker.

### VirtualBox

You can get VirtualBox from their [download page](https://www.virtualbox.org/wiki/Downloads).

### boot2docker

##### OSX

You can install boot2docker by
- `brew install boot2docker` (osx only)
- download the [osx installer](https://github.com/boot2docker/osx-installer/releases)

Once installed follow [official setup instructions](http://docs.docker.com/installation/mac/#from-your-command-line)

##### Windows

Follow [official setup instructions](http://docs.docker.com/installation/windows/)

## Versions

When pulling or running an this container you can select which version of Libsass you want to use. The currently supported versions are:

- 3.4

## Usage

The image has the `scss` binary as its entrypoint, so it should be invoked with whatever arguments you would normally pass to `scss`. For example,

```bash
$ cat file.scss
$blue: #00f;
.foo { color: $blue; }
$ docker run --rm -v $(pwd):$(pwd) -w $(pwd) xzyfer/docker-ruby-sass:<version> file.scss
.foo {
  color: #00f; }
```

You may also want to create a bash alias:

```bash
alias scss="docker run -it --rm -v \$(pwd):\$(pwd) -w \$(pwd) xzyfer/docker-ruby-libsass:3.4"
```

so you will be able to simply run

```
$ scss file.scss
.foo {
  color: #00f; }
```
