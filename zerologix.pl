
   {
     print "please enter first bit","\n";
    my $in = <stdin>; print $in,"\n";
    print "please enter second bit","\n";
   my  $in2 = <stdin>; print $in2,"\n";
    print "please enter operator ","\n";
    my $in3 = <stdin>; print $in3,"\n";
    
    if ( ($in == '1') && ($in2 == '0') && ($in3 == '2')) {  $www = '1' }
    elsif ( ($in == '1') && ($in2 == '0') && ($in3 == '4')) {  $www = '0'; }
    elsif ( ($in == '1') && ($in2 == '0') && ($in3 == '6')) {  $www = '-1'; }
    elsif ( ($in == '1') && ($in2 == '0') && ($in3 == '8')) {  $www = '-0'; }

    elsif ( ($in == '-1') && ($in2 == '0') && ($in3 == '2')) {   $www = '1';  }
    elsif ( ($in == '-1') && ($in2 == '0') && ($in3 == '4')) {    $www = '0'; }
    elsif ( ($in == '-1') && ($in2 == '0') && ($in3 == '6')) {  $www = '-1'; }
    elsif ( ($in == '-1') && ($in2 == '0') && ($in3 == '8')) {  $www = '-0'; }


    elsif ( ($in == '1') && ($in2 == '-0') && ($in3 == '2')) { $www = '1';  }
    elsif ( ($in == '1') && ($in2 == '-0') && ($in3 == '4')) { $www = '0'; }
    elsif ( ($in == '1') && ($in2 == '-0') && ($in3 == '6')) {  $www = '-1'; }
    elsif ( ($in == '1') && ($in2 == '-0') && ($in3 == '8')) { $www = '-0'; }


    elsif ( ($in == '-1') && ($in2 == '-0') && ($in3 == '2')) { $www = '1';  }
    elsif ( ($in == '-1') && ($in2 == '-0') && ($in3 == '4')) { $www = '0'; }
    elsif ( ($in == '-1') && ($in2 == '-0') && ($in3 == '6')) {  $www = '-1'; }
    elsif ( ($in == '-1') && ($in2 == '-0') && ($in3 == '8')) { $www = '-0'; }

##########################################################
    elsif ( ($in == '1') && ($in2 == '1') && ($in3 == '2')) {  $www = '1' }
    elsif ( ($in == '1') && ($in2 == '1') && ($in3 == '4')) {  $www = '0'; }
    elsif ( ($in == '1') && ($in2 == '1') && ($in3 == '6')) {  $www = '-1'; }
    elsif ( ($in == '1') && ($in2 == '1') && ($in3 == '8')) {  $www = '-0'; }

   elsif ( ($in == '1') && ($in2 == '-1') && ($in3 == '2')) {  $www = '1' }
    elsif ( ($in == '1') && ($in2 == '-1') && ($in3 == '4')) {  $www = '0'; }
    elsif ( ($in == '1') && ($in2 == '-1') && ($in3 == '6')) {  $www = '-1'; }
    elsif ( ($in == '1') && ($in2 == '-1') && ($in3 == '8')) {  $www = '-0'; }

    elsif ( ($in == '-1') && ($in2 == '1') && ($in3 == '2')) {  $www = '1' }
    elsif ( ($in == '-1') && ($in2 == '1') && ($in3 == '4')) {  $www = '0'; }
    elsif ( ($in == '-1') && ($in2 == '1') && ($in3 == '6')) {  $www = '-1'; }
    elsif ( ($in == '-1') && ($in2 == '1') && ($in3 == '8')) {  $www = '-0'; }

   elsif ( ($in == '-1') && ($in2 == '-1') && ($in3 == '2')) {  $www = '1' }
    elsif ( ($in == '-1') && ($in2 == '-1') && ($in3 == '4')) {  $www = '0'; }
    elsif ( ($in == '-1') && ($in2 == '-1') && ($in3 == '6')) {  $www = '-1'; }
    elsif ( ($in == '-1') && ($in2 == '-1') && ($in3 == '8')) {  $www = '-0'; }

   elsif ( ($in == '0') && ($in2 == '1') && ($in3 == '2')) {  $www = '1' }
    elsif ( ($in == '0') && ($in2 == '1') && ($in3 == '4')) {  $www = '0'; }
    elsif ( ($in == '0') && ($in2 == '1') && ($in3 == '6')) {  $www = '-1'; }
    elsif ( ($in == '0') && ($in2 == '1') && ($in3 == '8')) {  $www = '-0'; }

   elsif ( ($in == '0') && ($in2 == '-1') && ($in3 == '2')) {  $www = '1' }
    elsif ( ($in == '0') && ($in2 == '-1') && ($in3 == '4')) {  $www = '0'; }
    elsif ( ($in == '0') && ($in2 == '-1') && ($in3 == '6')) {  $www = '-1'; }
    elsif ( ($in == '0') && ($in2 == '-1') && ($in3 == '8')) {  $www = '-0'; }

   elsif ( ($in == '-0') && ($in2 == '1') && ($in3 == '2')) {  $www = '1' }
    elsif ( ($in == '-0') && ($in2 == '1') && ($in3 == '4')) {  $www = '0'; }
    elsif ( ($in == '-0') && ($in2 == '1') && ($in3 == '6')) {  $www = '-1'; }
    elsif ( ($in == '-0') && ($in2 == '1') && ($in3 == '8')) {  $www = '-0'; }

   elsif ( ($in == '-0') && ($in2 == '-1') && ($in3 == '2')) {  $www = '1' }
    elsif ( ($in == '-0') && ($in2 == '-1') && ($in3 == '4')) {  $www = '0'; }
    elsif ( ($in == '-0') && ($in2 == '-1') && ($in3 == '6')) {  $www = '-1'; }
    elsif ( ($in == '-0') && ($in2 == '-1') && ($in3 == '8')) {  $www = '-0'; }

   elsif ( ($in == '-0') && ($in2 == '0') && ($in3 == '2')) {  $www = '1' }
    elsif ( ($in == '-0') && ($in2 == '0') && ($in3 == '4')) {  $www = '0'; }
    elsif ( ($in == '-0') && ($in2 == '0') && ($in3 == '6')) {  $www = '-1'; }
    elsif ( ($in == '-0') && ($in2 == '0') && ($in3 == '8')) {  $www = '-0'; }

   elsif ( ($in == '-0') && ($in2 == '-0') && ($in3 == '2')) {  $www = '1' }
    elsif ( ($in == '-0') && ($in2 == '-0') && ($in3 == '4')) {  $www = '0'; }
    elsif ( ($in == '-0') && ($in2 == '-0') && ($in3 == '6')) {  $www = '-1'; }
    elsif ( ($in == '-0') && ($in2 == '-0') && ($in3 == '8')) {  $www = '-0'; }

   elsif ( ($in == '0') && ($in2 == '0') && ($in3 == '2')) {  $www = '1' }
    elsif ( ($in == '0') && ($in2 == '0') && ($in3 == '4')) {  $www = '0'; }
    elsif ( ($in == '0') && ($in2 == '0') && ($in3 == '6')) {  $www = '-1'; }
    elsif ( ($in == '0') && ($in2 == '0') && ($in3 == '8')) {  $www = '-0'; }

   elsif ( ($in == '0') && ($in2 == '-0') && ($in3 == '2')) {  $www = '1' }
    elsif ( ($in == '0') && ($in2 == '-0') && ($in3 == '4')) {  $www = '0'; }
    elsif ( ($in == '0') && ($in2 == '-0') && ($in3 == '6')) {  $www = '-1'; }
    elsif ( ($in == '0') && ($in2 == '-0') && ($in3 == '8')) {  $www = '-0'; }




    print "Answer ",$www," ",$in3,"\n";   goto here; there: undef $www; redo }
here:
    use PDL;
use PDL::Graphics::TriD;
use PDL::Math; 
 keeptwiddling3d; ## if you change to nokeeptwiddling3d you dont have to press q in the GLUT screen to see animation
  ## change to keeptwiddling to stop and view each step of the animation by pressing q in the GLUT box

$PDL::BIGPDL=1; ## remember this can crash the computer if you dont have enough swap in linux or pagefile in windows
                ## remember to press q in the GLUT screen to see the animation step by step
                ##                    spinning in circles making closed looped strings "


 for (;;){
    $c = 400;
 for $phase(1..1) {
 $phase = $phase*0.0000001;
 $frequency = ($c**-1);
 $n=6.28*$c*$frequency+($phase);

 $photons = 4178; ### [Density]

 ### 4Dimensional Geometry
 $t=(-1**.5)*rvals(exp(zeros($photons)),{Centre=>[0]});
                  
                
 $cz= -1**$t*$c;  ###    $t*$c; 
 $cy= -1**$t*sin($t*$c);  ###   $t*sin($t*$c); 
 $cx= -1**$c*bessj0(rvals($t,{Centre=>[0]}))*$c;  ### $c*bessj0(rvals($t,{Centre=>[0]}))*$c;
 
 ### 6Dimensional Geometry
 $w=$cz-$cy-$cx;
 $g=sin($w);
 $r=cos($cy+$c+$cz);
 $b=cos($w);
 $i=($cz-$cx-$cy);
  $q=$c*($i*$n);

### altitude longitude latitude 
$x = $b*sin($q);  ### cos   change the spin of the electron here
$y = $r*cos($q);  ### sin
$z = $g*sin($q);  ### cos

$xx = $x*$y;
$yy = $z*$x;
$zz = $y*$z;




   #    4Dimensional  6Dimensional
  if ($www == '1') {
 +points3d[$x,$y,$z],   [$b,$g,$r]; } 

  if ($www == '0') {
 +points3d[$z,$x,$y],   [$b,$g,$r]; } 

  if ($www == '-1') {
 +points3d[$y,$z,$x],   [$b,$g,$r]; } 

  if ($www == '-0') {
  hold3d();  nokeeptwiddling3d;
 +points3d[-$x,-$y,-$z],   [$b,$g,$r];
 +points3d[-$z,-$y,-$x],   [$b,$g,$r];
 +points3d[-$y,-$x,-$z],   [$b,$g,$r];
 release3d();
 release3d();
 release3d();
   keeptwiddling3d;  <stdin>; } goto there;
      }}  
