# Env names

Resolve short environment aliases.

![Review](https://img.shields.io/github/actions/workflow/status/JoelLefkowitz/env-names/review.yml)
![Version](https://pursuit.purescript.org/packages/purescript-env-names/badge)
![Quality](https://img.shields.io/codacy/grade/3790cda9d90a4a9a92d45b30fa0cc116)

## Installation

```bash
spago install env-names
```

## Documentation

Documentation and more detailed examples are hosted on [Github Pages](https://joellefkowitz.github.io/env-names).

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

## Tooling

### Dependencies

To install dependencies:

```bash
yarn install
yarn spago install
```

### Tests

To run tests:

```bash
yarn spago test
```

### Documentation

To generate the documentation locally:

```bash
yarn spago docs
```

### Linters

To run linters:

```bash
npm run lint
```

### Formatters

To run formatters:

```bash
npm run format
```

## Contributing

Please read this repository's [Code of Conduct](CODE_OF_CONDUCT.md) which outlines our collaboration standards and the [Changelog](CHANGELOG.md) for details on breaking changes that have been made.

This repository adheres to semantic versioning standards. For more information on semantic versioning visit [SemVer](https://semver.org).

Bump2version is used to version and tag changes. For example:

```bash
bump2version patch
```

### Contributors

- [Joel Lefkowitz](https://github.com/joellefkowitz) - Initial work

## Remarks

Lots of love to the open source community!

<div align='center'>
    <img width=200 height=200 src='https://media.giphy.com/media/osAcIGTSyeovPq6Xph/giphy.gif' alt='Be kind to your mind' />
    <img width=200 height=200 src='https://media.giphy.com/media/KEAAbQ5clGWJwuJuZB/giphy.gif' alt='Love each other' />
    <img width=200 height=200 src='https://media.giphy.com/media/WRWykrFkxJA6JJuTvc/giphy.gif' alt="It's ok to have a bad day" />
</div>
