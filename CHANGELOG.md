## [1.0.0-nullsafety.0]
* Full support for null-safety
* Replacement of templateColumnSizes and templateRowSizes with columnSizes and
  rowSizes

## [0.11.0]
* Tons of bug fixes in track sizing
* Documentation overhaul
* Performance improvements (should now lay out far less frequently)
* Helpers and extension methods for row/column sizing
* New Scrabble example
* More tests

Sorry, but I had to break semver with this release. Check out
`1.0.0-nullsafety.0` for the null-safe version.

## [0.10.5]
* Remove the use of extension methods

## [0.10.4]
* Massive overhaul in layout algorithm, fixing a number of serious issues
* Debug painting support, where tracks and gaps are drawn differently
* Child overflow indicators
* Debug printing, behind a flag
* Cool new periodic table example

Technically, some of these changes are breaking from an API perspective, but
I think that it's unlikely that people run into them. I originally wanted to
publish under a new minor version, but `pub publish` is giving me issues because
of my nullsafe prerelease.

## [0.10.3]
* Mention nullsafety release in pubspec
* Format code using latest formatter
* Fix a lint

## [0.10.2]
* Add support for negative row/column gaps (thanks @daohoangson!)

## [0.10.1]
* Graduate 0.10.1-dev.0 to the release version now that Flutter 1.17 is out

## [0.10.1-dev.0]
* Invalidate placement in more situations

## [0.10.0-dev.2]
* Correct Flutter version dependency in pubspec

## [0.10.0-dev.1]
* Make AutoPlacement class a little more enum-like, by adding a toString() that
  resembles Dart enums and a static .values field

## [0.10.0-dev.0]
* Added support for Flutter v1.14.0+

## [0.9.4]
* Invalidate placement in more situations

## [0.9.3]
* Correct Flutter dependency in pubspec

## [0.9.2]
* Make AutoPlacement class a little more enum-like, by adding a toString() that
  resembles Dart enums and a static .values field

## [0.9.1]
* Mention the prerelease version supporting Flutter v1.14.0+ in the README

## [0.9.0]
* Reverted support for Flutter v1.14.0+, because it won't be stable for awhile.
  Flutter v1.14.0+ support is published as 0.10.0-dev.0

## [0.8.0]
* Added support for Flutter v1.14.0+

## [0.7.0]
* Add extension method support for grid item placement —
  Widget.withGridPlacement

## [0.6.3]
* Fix broken badge links in README

## [0.6.2]
* Fix several bugs in the examples
* Add intrinsic-size computing functions. I don't know if they're right yet,
  but it's a start.

## [0.6.1]
* Size grid minimally if an infinite constraint is provided

## [0.6.0]
* Supply grid items with loose constraints, not tight

## [0.5.3]
* README tweak

## [0.5.2]
* Add a license (MIT)

## [0.5.1]
* Dependency version fix

## [0.5.0]
* First version. See the README.
