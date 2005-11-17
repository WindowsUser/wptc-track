#! /usr/bin/perl

# Format: year, name, extra, type
%named =
  (
   "epac" =>
   [(
# Retired storms:
#  Iwa is listed in the unnamed hurricanes
     [ (1978, 'Fico') ],
#     [ (1987, 'Knut', 0, 'Tropical Storm') ],  # WTF?  Don't bother.
     [ (1991, 'Fefa') ],
     [ (1992, 'Iniki') ],
     [ (1995, 'Ismael') ],
     [ (1997, 'Pauline') ],
     [ (2002, 'Kenna') ],

# Non-retired but notable:
     [ (1994, 'John') ],
     [ (1997, 'Linda') ],

    )],
   "natlantic" => [ (
# Retired storms: (since 1954)
#   [ (1954, 'Carol') ],
#   [ (1954, 'Edna') ],
#   [ (1954, 'Hazel') ],
#   [ (1955, 'Connie') ],
#   [ (1955, 'Diane') ],
#   [ (1955, 'Ione') ],
#   [ (1955, 'Janet') ],
#   [ (1957, 'Audrey') ],
#   [ (1959, 'Gracie') ],
#   [ (1960, 'Donna') ],
#   [ (1961, 'Carla') ],
#   [ (1961, 'Hattie') ],
#   [ (1963, 'Flora') ],
#   [ (1964, 'Cleo') ],
#   [ (1964, 'Dora') ],
#   [ (1964, 'Hilda') ],
#   [ (1965, 'Betsy') ],
#   [ (1966, 'Inez') ],
#   [ (1967, 'Beulah') ],
#   [ (1969, 'Camille') ],
#   [ (1970, 'Celia') ],
#   [ (1972, 'Agnes') ],
#   [ (1974, 'Carmen') ],
#   [ (1974, 'Fifi') ],
#   [ (1975, 'Eloise') ],
#   [ (1977, 'Anita') ],
#   [ (1979, 'David') ],
#   [ (1979, 'Frederic') ],
#   [ (1980, 'Allen') ],
#   [ (1983, 'Alicia') ],
#		     [ (1985, 'Elena') ],
#   [ (1985, 'Gloria') ],
#   [ (1988, 'Gilbert') ],
#   [ (1988, 'Joan') ],
#   [ (1989, 'Hugo') ],
#   [ (1990, 'Diana') ],
#   [ (1990, 'Klaus') ],
#   [ (1991, 'Bob') ],
#   [ (1992, 'Andrew') ],
#   [ (1995, 'Luis') ],
#   [ (1995, 'Marilyn') ],
#   [ (1995, 'Opal') ],
#   [ (1995, 'Roxanne') ],
#   [ (1996, 'Cesar') ],
#   [ (1996, 'Fran') ],
#   [ (1996, 'Hortense') ],
#   [ (1998, 'Georges') ],
#   [ (1998, 'Mitch') ],
#   [ (1999, 'Floyd') ],
#   [ (1999, 'Lenny') ],
#   [ (2000, 'Keith') ],
#   [ (2001, 'Allison', 0, 'Tropical Storm') ],
#   [ (2001, 'Iris') ],
#   [ (2001, 'Michelle') ],
#   [ (2002, 'Isidore') ],
#   [ (2002, 'Lili') ],
#   [ (2003, 'Fabian') ],
#   [ (2003, 'Isabel') ],
#   [ (2003, 'Juan') ],
#   [ (2004, 'Charley') ],
#   [ (2004, 'Frances') ],
#   [ (2004, 'Ivan') ],
#   [ (2004, 'Jeanne') ],

# Non-retired but notable storms:
#   [ (1966, 'Faith', 1) ],
#   [ (1994, 'Alberto', 0, 'Tropical Storm') ],
#   [ (2003, 'Odette', 0, 'Tropical Storm') ],
#   [ (1994, 'Gordon') ],
#   [ (2000, 'Alberto') ],
#   [ (2004, 'Alex') ],
#   [ (1996, 'Bertha') ],
#   [ (1971, 'Ginger', 1) ],

# Non-retired Category 5 storms:
#   [ (1960, 'Ethel') ],
#   [ (1971, 'Edith') ],
#   [ (1958, 'Cleo') ],
#   [ (1950, 'Dog') ],

		    ) ],
  );

#Format: args, filename, name
@unnamed =
  (
# Pre-naming EPac storms:
   [ ("--input epac.txt --year 1959 --id 6", "Iwa 1959") ],
   [ ("--input epac.txt --year 1959 --id 15", "1959 Mexico hurricane") ],

# Pre-naming Atlantic storms:
#   [ ("--year 1856 --id 1", "1856 Last Island hurricane") ],
#    [ ("--year 1857 --id 2", "1857 Carolinas hurricane") ],
#   [ ("--year 1886 --id 5", "1886 Indianola hurricane") ],
#   [ ("--year 1893 --id 6 --extra 0", "1893 Sea Islands hurricane") ],
#   [ ("--year 1899 --id 3", "1899 San Ciriaco hurricane") ],
#   [ ("--year 1900 --wind 125 --extra 0", "1900 Galveston hurricane") ],
#   [ ("--year 1919 --wind 120", "1919 Florida Keys hurricane") ],
#   [ ("--year 1926 --wind 130", "1926 Miami hurricane") ],
#   [ ("--year 1928 --wind 140", "1928 Okeechobee hurricane") ],
#   [ ("--year 1935 --wind 140 --extra 0", "1935 Labor Day hurricane") ],
#   [ ("--year 1938 --wind 140", "1938 New England hurricane") ],
#   [ ("--year 1943 --id 1", "1943 Surprise hurricane") ],
#   [ ("--year 1944 --wind 120 --extra 0", "1944 Atlantic hurricane") ],
#   [ ("--year 1947 --wind 140", "1947 Fort Lauderdale hurricane") ],
#   [ ("--year 1959 --id 3 --extra 1", "1959 Escuminac hurricane") ],
#   [ ("--year 1932 --wind 140 --extra 0", "1932 Bahamas hurricane") ],

# 2005 storms
#   [ ("--input 2005/arlene.txt --format 1", "Arlene 2005", "Tropical Storm Arlene (2005)") ],
#   [ ("--input 2005/bret.txt --format 1", "Bret 2005", "Tropical Storm Bret (2005)") ],
#   [ ("--input 2005/cindy.txt --format 1", "Cindy 2005", "Tropical Storm Cindy (2005)") ],
#   [ ("--input 2005/dennis.txt --format 1", "Dennis 2005", "Hurricane Dennis (2005)") ],
#   [ ("--input 2005/emily.txt --format 1", "Emily 2005", "Hurricane Emily (2005)") ],
#   [ ("--input 2005/franklin.txt --format 1", "Franklin 2005", "Tropical Storm Franklin (2005)") ],
#   [ ("--input 2005/gert.txt --format 1", "Gert 2005", "Tropical Storm Gert (2005)") ],
#   [ ("--input 2005/harvey.txt --format 1", "Harvey 2005", "Tropical Storm Harvey (2005)") ],
#   [ ("--input 2005/irene.txt --format 1", "Irene 2005", "Hurricane Irene (2005)") ],
#   [ ("--input 2005/jose.txt --format 1", "Jose 2005", "Tropical Storm Jose (2005)") ],
#   [ ("--input 2005/katrina.txt --format 1", "Katrina 2005", "Hurricane Katrina (2005)") ],
#   [ ("--input 2005/lee.txt --format 1", "Lee 2005", "Tropical Storm Lee (2005)") ],
#   [ ("--input 2005/maria.txt --format 1", "Maria 2005", "Hurricane Maria (2005)") ],
#   [ ("--input 2005/nate.txt --format 1", "Nate 2005", "Hurricane Nate (2005)") ],
#   [ ("--input 2005/ophelia.txt --format 1", "Ophelia 2005", "Hurricane Ophelia (2005)") ],
#   [ ("--input 2005/philippe.txt --format 1", "Philippe 2005", "Hurricane Philippe (2005)") ],
#   [ ("--input 2005/rita.txt --format 1", "Rita 2005", "Hurricane Rita (2005)") ],
#   [ ("--input 2005/stan.txt --format 1", "Stan 2005", "Hurricane Stan (2005)") ],
#   [ ("--input 2005/tammy.txt --format 1", "Tammy 2005", "Tropical Storm Tammy (2005)") ],
#   [ ("--input 2005/vince.txt --format 1", "Vince 2005", "Hurricane Vince (2005)") ],
#   [ ("--input 2005/wilma.txt --format 1", "Wilma 2005", "Hurricane Wilma (2005)") ],
#   [ ("--input 2005/alpha.txt --format 1", "Alpha 2005", "Tropical Storm Alpha (2005)") ],
#   [ ("--input 2005/beta.txt --format 1", "Beta 2005", "Hurricane Beta (2005)") ],
  );

$wiki="../../pywikipedia/";
$storms="../tracks/tracks/";

sub mydosleep {
  my ($stime) = @_;
  if ($stime > 0) {
    print "  ...sleeping for $stime seconds.\n";
    sleep $stime;
  }
}

# Uncomment the next line to allow automatic uploads (DANGEROUS)
$real = 0;
if ($real != 0 && $ARGV[0] ne "--real") {
  print "Not running for real!\n";
  exit;
}

sub generate {
  my ($args, $filename, $descname) = @_;
  my $desc = "{{Hurricane auto track map|$descname}}";
  my $sleeptime = 60;
  my $res;

  $filename =~ s/ /_/g;

  print("Building $filename.\n");
#  print "   $args \n";
  $res = system "./track $args --output \"$filename\"";
  if ($res != 0) {
    printf "Error!\n";
    exit;
  }
  print "  Uploading as $filename with $desc.\n";
  if ($real) {
    do {
      $res = system "cd $wiki && python upload.py -keep \"$storms$filename\" \"$desc\" 2>&1 >/dev/null";
      mydosleep($sleeptime);
      $sleeptime += 30;
    } while ($res != 0);
  }
}

system "mkdir -p storms";

@basins = keys %named;
foreach $basin (@basins) {
  foreach (@{ $named{$basin} }) {
    my ($year, $name, $extra, $type) = @{ $_ };
    my $filename = "storms/$name" . "_$year" . "_track.png";
    my $descname = "$type $name ($year)";

    if (!defined $type) {
      $type = 'Hurricane';
    }
    if (!defined $extra) {
      $extra = 0; # ???
    }

    generate("--input $basin.txt --extra $extra --year $year --name $name",
	     "storms/$name" . "_$year" . "_track.png",
	     "$type $name ($year)");
  }
}

foreach (@unnamed) {
  my ($args, $name, $name2) = @{ $_ };
  if (!defined $name2) {
    $name2 = $name;
  }

  generate($args, "storms/$name track.png", $name2);
}
