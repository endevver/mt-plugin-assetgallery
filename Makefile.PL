use ExtUtils::MakeMaker;

use YAML::Any qw(LoadFile);
my $file = "plugins/AssetGallery/config.yaml";
my $version = LoadFile($file)->{version} ||
    die "No version found in $file";

WriteMakefile(
    NAME            => 'Asset Gallery',
    VERSION         => $version,
    DISTNAME        => 'AssetGallery',
);
