#!/usr/bin/perl
use strict;
use lib '../lib';
use Config::NINI;
use Data::Dumper;






print Dumper( Config::NINI::__nini_parse_values(  q[ xxxx,Fo"rd,E"350","Super, ""luxurious"" truck"  ,  | "123*"|   ,| "bang' bang" |], ',' ) );
print Dumper( Config::NINI::__nini_parse_values2( q[ xxxx Fo"rd E"350"      "Super, ""luxurious"" truck"    | "123*"|   | "bang' bang" |  ] ) );
print Dumper( Config::NINI::__nini_parse_values2( q[   xxx   zzz   ] ) );
print Dumper( Config::NINI::__nini_parse_values2( q[","","","], ',' ) );
exit;






my $o = qq[ 'this isn''t a test'  what??      "this is ""utter"" crap"   #O'Brian C# # comment];

#for( 1 .. 1000_000 )
  {
      my $s = $o;

        my $r = Config::NINI::__nini_take_one_scalar( \$s, ' ' );
        my $r = Config::NINI::__nini_take_one_scalar( \$s, ' ' );
        my $r = Config::NINI::__nini_take_one_scalar( \$s, ' ' );
  }


my $s = $o;

#while(42)
{
  my $r = Config::NINI::__nini_take_one_scalar( \$s, ' ' );
  my $e = defined $r;

  print "[$o]\n";
  print "[$s]\n";
  print "[$r] -> {$e}\n";
  ook( 'this isn\'t a test', $r );
  print "------------------------------\n";

  my $r = Config::NINI::__nini_take_one_scalar( \$s, ' ' );
  my $e = defined $r;

  print "[$o]\n";
  print "[$s]\n";
  print "[$r] -> {$e}\n";
  ook( 'what??', $r );
  print "------------------------------\n";

  my $r = Config::NINI::__nini_take_one_scalar( \$s, ' ' );
  my $e = defined $r;

  print "[$o]\n";
  print "[$s]\n";
  print "[$r] -> {$e}\n";
  ook( "this is \"utter\" crap", $r );
  print "------------------------------\n";

  my $r = Config::NINI::__nini_take_one_scalar( \$s, ' ' );
  my $e = defined $r;

  print "[$o]\n";
  print "[$s]\n";
  print "[$r] -> {$e}\n";
  ook( "#O'Brian", $r );
  print "------------------------------\n";

  my $r = Config::NINI::__nini_take_one_scalar( \$s, ' ' );
  my $e = defined $r;

  print "[$o]\n";
  print "[$s]\n";
  print "[$r] -> {$e}\n";
  ook( "C#", $r );
  print "------------------------------\n";

}






my $o = qq[ Config::NINI::Super    # comment];

my $s = $o;

my $r = Config::NINI::__nini_take_one_scalar( \$s, '::' );

print "[$o]\n";
print "[$s]\n";
print "[$r]\n";
print "------------------------------\n";

my $r = Config::NINI::__nini_take_one_scalar( \$s, '::' );

print "[$o]\n";
print "[$s]\n";
print "[$r]\n";
print "------------------------------\n";

my $r = Config::NINI::__nini_take_one_scalar( \$s, '::' );

print "[$o]\n";
print "[$s]\n";
print "[$r]\n";
print "------------------------------\n";


sub ook
{
  die "expected [$_[0]] got [$_[1]]\n" unless $_[0] eq $_[1];
}
