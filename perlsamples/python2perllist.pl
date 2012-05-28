sub python2perllist(@a) {
say @a;
my $var = @a.pop();
say $var;
@a.push('appendedbyperl');
return @a;
}





