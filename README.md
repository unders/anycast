# Anycast
Anycast is used for developing static HTML websites.

## Web
 * [staging](https://north-collective-stag.firebaseapp.com/)


## Working with images
In `bin` directory there is three bash script that can be modified when you have
checked out branch `north-collective-dev`:

```
./bin/identify.sh
./bin/crop.sh
./bin/convert.sh
```
Each image must be verified manually to see how op optimize an image.

## Development
Develop on branch `north-collective-dev`

```
git checkout north-collective-dev
git rebase master
git commit
git push
```

#### Options 1
Start dev server with `make start` and write HTML and Sass inside `src` directory.

#### Option 2
Write directly to `public` folder.


## Deploy
Everything under the `public` directory will be deployed to `stag` and `prod` server.

### Staging
Deploy `public` folder to `stag` server:

```
git checkout north-collective-stag
git rebase north-collective-dev
git push
```

### Production
Deploy `public` folder to `prod` server:

```
git checkout north-collective-prod
git rebase north-collective-stag
git push
```

# Development

## Quick Install

* `npm install`

* `cd ./bin`

```
curl -L https://github.com/cortesi/modd/releases/download/v0.8/modd-0.8-osx64.tgz | tar -zxv
curl -L https://github.com/unders/servdir/releases/download/v1.0.1/servdir_1.0.1_darwin_amd64.tar.gz | tar -zxv
curl -L https://github.com/unders/tmplgen/releases/download/v1.0.0/tmplgen_1.0.0_darwin_amd64.tar.gz | tar -zxv
```

* `mv modd-0.8-osx64/modd .`

## Deep Install

### Tree
* `brew install tree`

### Live reloading
* Use the livereload plugin and point it to the `public` directory

### Image tools
Install ImageOptim from [here](https://imageoptim.com/mac).

```
brew install imagemagick graphicsmagick
npm install -g imageoptim-cli
```

## Online tools

### Images
* [Pixel Density Display Listing](https://pixensity.com/)
* [Placeholder](https://placeholder.com/)
* [ImageOptim](https://imageoptim.com/mac)
* [ImageOptim-CLI](https://jamiemason.github.io/ImageOptim-CLI/)

### Favicon
* [Favicon Generator](https://realfavicongenerator.net/)

