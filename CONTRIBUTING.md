# Contributing

When contributing to this repository, please first discuss the change you wish to make via issue,
email, or any other method with the owners of this repository before making a change.

Please note we have a code of conduct, please follow it in all your interactions with the project.

## First Steps to fix an issue or bug

- Read the documentation (working on adding more)
- create the minimally reproducible issue
- try to edit the relevant code and see if it fixes it
- submit the fix to the problem as a pull request
- include an explanation of what you did and why

## First steps to contribute new features

- Create an issue to discuss the feature's scope and its fit for this package
- run pytest to ensure your local version of code passes all unit tests
- try to edit the relevant code and implement your new feature in a backwards compatible manner
- create new tests as you go, and run the test suite as you go
- update the documentation as you go

### Please format and lint as you go

#### Linting

Linting is performed on common file types:

- YAML files with [yamllint](https://yamllint.readthedocs.io/)
- Bash files with [shellcheck](https://www.shellcheck.net/)
- Markdown files with [markdownlint-cli](https://github.com/igorshubovych/markdownlint-cli)

The [Makefile](https://github.com/icancclearynow/ubuntu-dev-playbook/blob/main/Makefile)  is the entry point.

```bash
make lint
```

#### Testing

Continuous Integration Testing is done with the
[.travis.yml](https://github.com/icancclearynow/ubuntu-dev-playbook/blob/main/.travis.yml) file and [PyUp](https://pyup.io/).

Multiple jobs test independent portions of the installation.

### Requirements to merge code (Pull Request Process)

- you must include test coverage
- you must update the documentation
- you must run the above scripts to format and line

## Pull Request Process

1. Ensure you include test coverage for all changes
2. Ensure your code is formatted properly via the command above
3. Update the documentation and the README.md with details of changes to the interface, this includes new environment
   variables, function names, decorators, etc..
4. Increase the version numbers in any examples files and the README.md to the new version that this
   Pull Request would represent. The versioning scheme we use is [SemVer](http://semver.org/).
5. You may merge the Pull Request in once you have the sign-off of another developers, or if you
   do not have permission to do that, you may request the reviewer to merge it for you.

---

## Code of Conduct

### Our Pledge

In the interest of fostering an open and welcoming environment, we as
contributors and maintainers pledge to making participation in our project and
our community a harassment-free experience for everyone, regardless of age, body
size, disability, ethnicity, gender identity and expression, level of experience,
nationality, personal appearance, race, religion, or sexual identity and
orientation.

### Our Standards

Examples of behavior that contributes to creating a positive environment
include:

- Using welcoming and inclusive language
- Being respectful of differing viewpoints and experiences
- Gracefully accepting constructive criticism
- Focusing on what is best for the community
- Showing empathy towards other community members

Examples of unacceptable behavior by participants include:

- The use of sexualized language or imagery and unwelcome sexual attention or
advances
- Trolling, insulting/derogatory comments, and personal or political attacks
- Public or private harassment
- Publishing others' private information, such as a physical or electronic
  address, without explicit permission
- Other conduct which could reasonably be considered inappropriate in a
  professional setting

### Our Responsibilities

Project maintainers are responsible for clarifying the standards of acceptable
behavior and are expected to take appropriate and fair corrective action in
response to any instances of unacceptable behavior.

Project maintainers have the right and responsibility to remove, edit, or
reject comments, commits, code, wiki edits, issues, and other contributions
that are not aligned to this Code of Conduct, or to ban temporarily or
permanently any contributor for other behaviors that they deem inappropriate,
threatening, offensive, or harmful.

### Scope

This Code of Conduct applies both within project spaces and in public spaces
when an individual is representing the project or its community. Examples of
representing a project or community include using an official project e-mail
address, posting via an official social media account, or acting as an appointed
representative at an online or offline event. Representation of a project may be
further defined and clarified by project maintainers.

### Enforcement

Instances of abusive, harassing, or otherwise unacceptable behavior may be
reported by contacting the project team at icancclearynow@pm.me. All
complaints will be reviewed and investigated and will result in a response that
is deemed necessary and appropriate to the circumstances. The project team is
obligated to maintain confidentiality with regard to the reporter of an incident.
Further details of specific enforcement policies may be posted separately.

Project maintainers who do not follow or enforce the Code of Conduct in good
faith may face temporary or permanent repercussions as determined by other
members of the project's leadership.

### Attribution

This Code of Conduct is adapted from the [PurpleBooth's Contributing Template][contributing-template-url]

[contributing-template-url]: https://gist.github.com/PurpleBooth/b24679402957c63ec426/5c4f62c1e50c1e6654e76e873aba3df2b0cdeea2
