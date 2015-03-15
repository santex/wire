#!/usr/bin/env perl

BEGIN {
  $ENV{MOJO_NO_IPV6} = 1;
  $ENV{MOJO_REACTOR} = 'Mojo::Reactor::Poll';
}



use Mojo::Base -strict;
use Mojo::IOLoop::Server;
use Mojo::IOLoop;
use Mojo::UserAgent;
use Mojolicious::Lite;
my $config = plugin 'Config';




any '/' => 'index';
any 'index' => 'index';
any 'calendar' => 'calendar';
any 'charts-flot' => 'charts-flot';
any 'charts-others' => 'charts-others';
any 'charts-xcharts' => 'charts-xcharts';
any 'file-manager' => 'file-manager';
any 'form-dropzone' => 'form-dropzone';
any 'form-elements' => 'form-elements';
any 'form-wizard' => 'form-wizard';
any 'gallery' => 'gallery'; 
any 'icons-filetypes' => 'icons-filetypes';
any 'icons-font-awesome' => 'icons-font-awesome';
any 'icons-glyphicons-pro' => 'icons-glyphicons-pro';
any 'icons-halflings' => 'icons-halflings';
any 'icons-social' => 'icons-social';
any 'page-inbox' => 'page-inbox';
any 'page-infrastructure' => 'page-infrastructure';
any 'page-todo' => 'page-todo';
any 'table' => 'table';
any 'typography' => 'typography';
any 'ui-elements' => 'ui-elements';
any 'ui-nestable-list' => 'ui-nestable-list';
any 'ui-sliders-progress' => 'ui-sliders-progress';
any 'widgets' => 'widgets';
any 'login'=>'login';
app->start();
