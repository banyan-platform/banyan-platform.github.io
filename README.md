# Banyan Engineering

## Contributing

To add content (e.g., Engineering updates), make sure you've done the following:

```shell
brew install hugo
```

Then:

```shell
git checkout -b <branch name>
TITLE="My New Post" make post
```

To add a new category:

* `cp -r content/categories/example-category content/categories/new-cat`
* edit the `title` and `description` metadata in `new-cat/_index.md`
* update the metadata of post(s) that will use this new category (multiple allowed)

When writing a post, ensure you add a few pertinent tags (preferably ones that already exist), and be sure to remove any comments/instructions from the post's metadata sections.

After writing your content, run the spell-checker (requires `brew install aspell`):

```shell
make spell-check
```

To review locally, change the post's metadata from `draft: true` to `draft: false`, and run the server (in another terminal) with `hugo serve`. In your browser, load up the page you've just added. Review, and continue to edit as needed.

When you're ready to publish:

```shell
git push origin <branch name>
```

Then open a PR here:

* <https://github.com/banyan-platform/banyan-platform.github.io/pulls>

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
