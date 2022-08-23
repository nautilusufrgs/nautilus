# Guide to Contributions

## How to contribute

1. Clone this repository.
2. Open using IntelliJ, Visual Studio Code or any other software to edit Markdown pages.
   - Check the internal [Markdown guide].
3. Create a new branch to commit the changes.
4. Create a draft pull request. There will be a guide in the PR.
5. Do the changes.
   - Remember to edit the navigation structure in the file [mkdocs.yml](./mkdocs.yml).
6. Test locally following the [previewing changes](#previewing-changes) session.
7. Change the pull request to ready to review and ask colleagues to review it.
8. After the pull request be approved and merged, [deploy the changes](#deploy).

You can check this recording where we perform the steps to add a new page:

- [Recording Link]
- Date: 18/06/2021
- Language: Portuguese.

## Other Information

The contents of the page are written in Markdown, the site is built using [MkDocs](),[Material for MkDocs]() and [PyMdown]().

### Previewing changes

You can tests your changes locally using the provided docker image with the command in the project folder:

    docker-compose up -d

The page will be available at <http://localhost:8000>.

**Alternatively**, you can also install the dependencies and run it on your host operational system (you must have Python installed on your machine).

It is recommended that you first create an environment to install the dependencies:

```Shell
# Install dependencies
pip install -r requirements.txt

# Serve the docs
mkdocs serve
```

If you have problems installing it locally, check [this issue](https://github.com/mkdocs/mkdocs/issues/195).

### Deploy

In order to deploy the changes you need to install `mkdocs-material`. You can do this with the following command:

    pip3 install mkdocs-material

After that, just run the following command in the project folder:

    mkdocs gh-deploy
