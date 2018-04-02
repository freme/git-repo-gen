# git-repo-gen
Generate (possibly large) git repos

The basic idea is to create a large git repository, consisting of compilable C++ code to include load testing by compiling the code.

See https://github.com/larsxschneider/git-repo-analysis

# Blogposts
- https://larsxschneider.github.io/2016/09/21/large-git-repos
- https://samthursfield.wordpress.com/2016/03/16/enourmous-git-repositories/

# what is a large repo

According to https://larsxschneider.github.io/2016/09/21/large-git-repos

A git repo can be categorized via the following metrics:
- File Size: Repositories with files smaller than 500kb are fine.
- Git LFS: Repositories with less than a 1000 files using Git LFS are fine.
- File Count: Repositories with less than a 100k files are fine.
- Commit Count: Repositories with less than a 100k commits are fine.
- Branch/Tag Count: Repositories with less than a 10k branches and tags are fine.
- Submodules Count: Repositories with less than a 25 Submodules are fine.

# features

Create a folder structure of a certain size.

Create a git repo of a certain structure using the metrics above.

For testing CI systems, provide a way to create new commits/branches by creating additional files or changing existing ones


