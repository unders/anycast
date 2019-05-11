# Anycast
## North Collectie

Anycast is used for developing static HTML websites. We use this to maintain the North Collective website.

## Developer Getting Started

Quick setup to get the site running on your local machine after **cloning the repo** and being **in the project folder:**

1.  `npm install`
2. `cd ./bin`
3. Run installation scripts:
```
curl -L https://github.com/cortesi/modd/releases/download/v0.8/modd-0.8-osx64.tgz | tar -zxv
curl -L https://github.com/unders/servdir/releases/download/v1.0.1/servdir_1.0.1_darwin_amd64.tar.gz | tar -zxv
curl -L https://github.com/unders/tmplgen/releases/download/v1.0.0/tmplgen_1.0.0_darwin_amd64.tar.gz | tar -zxv
```
4. `mv modd-0.8-osx64/modd .`
5. `cd ../`

#### Option 1
Start dev server with `make start` and write HTML and Sass inside `src` directory.

#### Option 2
Write directly to `public` folder.

## Working with Images

In `bin` directory there is three bash script that can be modified when you have checked out branch `north-collective-dev`:

```
./bin/identify.sh
./bin/crop.sh
./bin/convert.sh
```
Each image must be verified manually to see how to optimize an image.


## Deployment

### Staging

Deploy `public` folder to `staging` server:

```
git checkout north-collective-stag
git rebase north-collective-dev
git push
```

**Url:** [north-collective-stag.firebaseapp.com](https://north-collective-stag.firebaseapp.com/)

### Production

Deploy `public` folder to `production` server:

```
git checkout north-collective-prod
git rebase north-collective-stag
git push
```

## Online tools

### Images

* [Pixel Density Display Listing](https://pixensity.com/)
* [Placeholder](https://placeholder.com/)
* [ImageOptim](https://imageoptim.com/mac)
* [ImageOptim-CLI](https://jamiemason.github.io/ImageOptim-CLI/)

### Favicon
* [Favicon Generator](https://realfavicongenerator.net/)
