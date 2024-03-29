use lib 'lib';
use AudioFile::Info::Build;

my $module = 'AudioFile::Info::Ogg::Vorbis::Header::PurePerl';

my $b = AudioFile::Info::Build->new(
    module_name => $module,
    license => 'perl',
    requires => {
        perl            => '5.6.0',
        AudioFile::Info => 0,
        Ogg::Vorbis::Header::PurePerl => 0,
    },
    configure_requires => {
        YAML => 0,
    },
    build_requires => {
        Module::Build   => 0
    },
    create_makefile_pl => 'traditional',
    dynamic_config => 1,
    meta_merge => {
      'meta-spec' => { version => 2 },
      resources => {
        repository => {
          type => 'git',
          url  => 'git://github.com/davorg-cpan/audiofile-info-ogg-vorbis-header-pureperl.git',
          web  => 'https://github.com/davorg-cpan/audiofile-info-ogg-vorbis-header-pureperl',
       },
        bugtracker => {
          web  => 'https://github.com/davorg-cpan/audiofile-info-ogg-vorbis-header-pureperl/issues',
       },
      },
    },
);

$b->create_build_script;

$b->notes(package => $module);
$b->notes(config  => {
                      read_mp3 => 0,
                      write_mp3 => 0,
                      read_ogg => 1,
                      write_ogg => 0,
                      pure_perl => 1
                     });

