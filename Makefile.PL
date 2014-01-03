
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "a generic client for talking to restful web services",
  "AUTHOR" => "Mark Jason Dominus (\x{9676}\x{654f}\x{4fee}) <mjd\@plover.com>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "REST-Consumer",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "REST::Consumer",
  "PREREQ_PM" => {
    "Carp" => 0,
    "File::Path" => 0,
    "HTTP::Headers" => 0,
    "HTTP::Request" => 0,
    "JSON::XS" => 0,
    "LWP::UserAgent" => 0,
    "URI" => 0,
    "overload" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "TEST_REQUIRES" => {
    "Data::Dumper" => 0,
    "HTTP::Response" => 0,
    "Test::More" => 0
  },
  "VERSION" => "0.08",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "Carp" => 0,
  "Data::Dumper" => 0,
  "File::Path" => 0,
  "HTTP::Headers" => 0,
  "HTTP::Request" => 0,
  "HTTP::Response" => 0,
  "JSON::XS" => 0,
  "LWP::UserAgent" => 0,
  "Test::More" => 0,
  "URI" => 0,
  "overload" => 0,
  "strict" => 0,
  "warnings" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



