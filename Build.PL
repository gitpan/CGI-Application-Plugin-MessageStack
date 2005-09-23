use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'CGI::Application::Plugin::MessageStack',
    license             => 'perl',
    dist_author         => 'Jason Purdy <Jason@Purdy.INFO>',
    dist_version_from   => 'lib/CGI/Application/Plugin/MessageStack.pm',
    requires => {
        'Test::More'                            => 0,
        'CGI::Application::Plugin::Session'     => 0,
        'CGI::Application'                      => 4.01,
    },
    create_readme       => 1,
    add_to_cleanup      => [ 'CGI-Application-Plugin-MessageStack-*', 't/cgisess_*' ],
);

$builder->create_build_script();
