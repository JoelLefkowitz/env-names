# Env names

Resolve short environment aliases.

## Status

| Source     | Shields                                                       |
| ---------- | ------------------------------------------------------------- |
| Project    | ![latest_release] ![license] ![line_count] ![language_count]  |
| Health     | ![documentation] ![review_action] ![codacy_quality]           |
| Repository | ![open_issues] ![closed_issues] ![open_pulls] ![closed_pulls] |
| Activity   | ![contributors] ![monthly_commits] ![last_commit]             |

## Installation

```bash
bower install purescript-env-names
```

## Usage

Environment names often have aliases such as `development` and `dev`. This can lead to development code finding its way into production, for example:

`dangerous.js`

```js
if (process.env.NODE_ENV === "dev") {
  ...
} else {
  console.log("Let's hope I'm fit for production");
}
```

```bash
> NODE_ENV=development node ./dangerous.js
"Let's hope I'm fit for production"
```

This package offers a preventative approach with parsers for common aliases:

```purs
> longEnv "dev"
"development"

> longEnv "development"
"development"
```

You can specify custom aliases too:

```purs
alias = (Alias "gulls" "seagulls")

> replaceShort "seagulls"
"gulls"

> replaceShort "gulls"
"gulls"
```

## Tests

To run tests:

```bash
pulp test
```

## Documentation

This repository's documentation is hosted on [Pursuit](https://pursuit.purescript.org/packages/purescript-env-names).

## Linters

To run linters:

```bash
nps lint
```

## Formatters

To run formatters:

```bash
nps format
```

## Continuous integration

This repository uses GitHub Actions to lint and test each commit. Each commit should be formatted and its corresponding documentation should be updated.

## Versioning

This repository adheres to semantic versioning standards. For more information on semantic versioning visit [semver](https://semver.org).

Bump2version is used to version and tag changes. For example:

```bash
bump2version patch
```

## Changelog

Please read this repository's [changelog](CHANGELOG.md) for details on changes that have been made.

## Contributing

Please read this repository's guidelines on [contributing](CONTRIBUTING.md) for details on the process for submitting pull requests. Moreover, our [code of conduct](CODE_OF_CONDUCT.md) declares our collaboration standards.

## Contributors

- [Joel Lefkowitz](https://github.com/joellefkowitz) - Initial work

## Remarks

Lots of love to the open source community!

<p align='center'>
    <img width=200 height=200 src='https://media.giphy.com/media/osAcIGTSyeovPq6Xph/giphy.gif' alt='Be kind to your mind' />
    <img width=200 height=200 src='https://media.giphy.com/media/KEAAbQ5clGWJwuJuZB/giphy.gif' alt='Love each other' />
    <img width=200 height=200 src='https://media.giphy.com/media/WRWykrFkxJA6JJuTvc/giphy.gif' alt="It's ok to have a bad day" />
</p>

[latest_release]: https://img.shields.io/github/v/tag/joellefkowitz/purescript-env-names "Latest release"
[license]: https://img.shields.io/github/license/joellefkowitz/purescript-env-names "License"
[line_count]: https://img.shields.io/tokei/lines/github/joellefkowitz/purescript-env-names "Line count"
[language_count]: https://img.shields.io/github/languages/count/joellefkowitz/purescript-env-names "Language count"
[documentation]: https://pursuit.purescript.org/packages/purescript-env-names/badge "Documentation"
[review_action]: https://img.shields.io/github/actions/workflow/status/JoelLefkowitz/purescript-env-names/review.yml "Review action"
[codacy_quality]: https://img.shields.io/codacy/grade/3790cda9d90a4a9a92d45b30fa0cc116 "Codacy quality"
[open_issues]: https://img.shields.io/github/issues/joellefkowitz/purescript-env-names "Open issues"
[closed_issues]: https://img.shields.io/github/issues-closed/joellefkowitz/purescript-env-names "Closed issues"
[open_pulls]: https://img.shields.io/github/issues-pr/joellefkowitz/purescript-env-names "Open pull requests"
[closed_pulls]: https://img.shields.io/github/issues-pr-closed/joellefkowitz/purescript-env-names "Closed pull requests"
[contributors]: https://img.shields.io/github/contributors/joellefkowitz/purescript-env-names "Contributors"
[monthly_commits]: https://img.shields.io/github/commit-activity/m/joellefkowitz/purescript-env-names "Monthly commits"
[last_commit]: https://img.shields.io/github/last-commit/joellefkowitz/purescript-env-names "Last commit"