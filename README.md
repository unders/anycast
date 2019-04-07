# Anycast
Anycast is used for developing static HTML websites.

## Usage
Everything under the `public` directory will be deployed to `stag` and `prod` server.

### Local development
Develop on branch `north-collective-dev`

 * git checkout north-collective-dev
 * git rebase master
 * git commit
 * git push


### Staging server
Deploy `public` folder to `stag` server:

```
git checkout north-collective-stag
git rebase north-collective-dev
git push north-collective-stag origin
```

### Production server
Deploy `public` folder to `prod` server:

```
git checkout north-collective-prod
git rebase north-collective-stag
git push north-collective-prod origin
```

## Installing development tools

## Live reloading
* Use the livereload plugin and point it to the public directory

To generating HTML & CSS from HTML templates and Sass, install:

```
curl -L https://github.com/cortesi/modd/releases/download/v0.8/modd-0.8-osx64.tgz | tar -zxv
curl -L https://github.com/unders/servdir/releases/download/v1.0.1/servdir_1.0.1_darwin_amd64.tar.gz | tar -zxv
curl -L https://github.com/unders/tmplgen/releases/download/v1.0.0/tmplgen_1.0.0_darwin_amd64.tar.gz | tar -zxv
```

### For working with images
Install ImageOptim from [here](https://imageoptim.com/mac).

```
brew install imagemagick graphicsmagick
npm install -g imageoptim-cli
```

## Online tools

