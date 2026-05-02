#!/usr/bin/perl 
#
#                         Fuck All Noobs Copying my Tools :3
# [*]-----------------------------------------------------------------------[*]
#                    [+] Bism Allah
#                    [+] little Tools
#                    [+] Greets To All Member lakarha23 Dz Team and ALL My Freinds
#                    [+] Don't share it and don't Change my Fucking Rights
#                    [+] Script Name          : license-bot
#                    [+] Version              : V1
#                    [+] Programed By         : lakarha23 dz
#                    [+] Made By              : lakarha23 © 2016
#                    [+] Email                : ahmedram61@gmail.com
# [*]-----------------------------------------------------------------------[*]
#                         Fuck All Noobs Copying my Tools :3
#

use LWP::UserAgent;
use Term::ANSIColor;
use Win32::Console::ANSI;
if($^O =~ /Win/){
 
   system("cls");
   system("color a");
   system("title Priv8 Upload Shell By lakarha23");
 
}else{
 
   system("clear");
}
print q{

 _               _                ___     _   _
| |             | | / /          |  _ \  | | | |
| |       _ _   | |/ /    _ _    | (_) ) | |_| |    _ _ 
| |     /'_` )  |        / _  )  |    /  |  _  |  / _  ) 
| |___ ( (_| |  | _  \  ( (_| |  | |\ \  | | | | ( (_| |
(____/ `\__,_)  (_| \_)  \__,_)  (_) (_) |_  |_|  \__,_)  
                                                                            
                                                                            
                                                     
};

open(tarrget,"<list.txt") or die "$!";
while(<tarrget>){
chomp($_);
$target = $_;
if($target !~ /http:\/\//)
{
$target = "http://$target";
}

$website = $target."/_file-manager/php/connector.php";

$req=HTTP::Request->new(GET=>$website);
$ua=LWP::UserAgent->new();
$ua->timeout(30);
$response=$ua->request($req);
if($response->content=~ /{"error":["errUnknownCmd"]}/ ||
   $response->content=~ /{"error":["errUnknownCmd"]}/    

) 
 {
 $Messageee ="GOOD";
open (TEXT, '>>site_vuln.txt');
print TEXT "$target/\n";
close (TEXT);
}
else {
$Messageee = "ERROR";
}
print ">> $target => $Messageee\n";
}