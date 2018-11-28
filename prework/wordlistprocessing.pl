#subroutine for processing word lists found online
sub processing {
open(DOC, "<:utf8", "C:\\Users\\miria\\Documents\\SpeechandLanguageProcessing\\2_SS17\\Perl\\PerlProj\\prework\\$_[0]")  or die "Could not open file.";
open(DOCNEW, ">:utf8", "C:\\Users\\miria\\Documents\\SpeechandLanguageProcessing\\2_SS17\\Perl\\PerlProj\\processed\\$_[1]") or die "Could not open your new file.";

while (<DOC>){
	chomp();
	$_ =~ tr/\n//; #remove unnecessary newlines
	push (@array, "$_");
}

print DOCNEW "@array";
@array=""
}

#calling up subroutine
&processing("sadwords.txt", "sadwords_new.txt"); #for sentiment detection

&processing("happywords.txt", "happywords_new.txt"); #for sentiment detection

&processing("stopwords.txt", "stopwords_new.txt"); #for stopwords

&processing("stopwordscapitalized.txt", "stopwordscapitalized_new.txt"); #for capitalized stopwords