# Banyan Engineering

## Contributing

To add content (e.g., Engineering updates), make sure you've done the following:

```shell
brew install hugo
```

and then:

```shell
TITLE="My New Post" make post
```

To add a new category:

* `cp -r content/categories/example-category content/categories/new-cat`
* edit the `title` and `description` metadata in `new-cat/_index.md`
* update the metadata of post(s) that will use this new category (multiple allowed)

## Running Locally

Run:

```shell
hugo server
```

Load:

* <http://localhost:1313/>

## More about Hugo

Here's the tool we use to add new content and generate the published site:

* <https://gohugo.io/documentation/>

## Design Changes

If you would like to override aspects of the theme that are not present in the repo (are part of the parent theme used), then you will need to download the appropriate template from this location:

* <https://github.com/CaiJimmy/hugo-theme-stack/tree/master/layouts>

Be sure to re-create the same directory structure!
