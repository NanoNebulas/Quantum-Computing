

use PDL;
use PDL::Complex;
use PDL::Graphics::TriD;
use PDL::Math; keeptwiddling3d;
$PDL::BIGPDL=1;
 ## remember this can crash the computer if you dont have enough RAM and swap in linux or pagefile in windows

#$tt=ones(3);

#$p=$tt;
#$rrr=pdl(0,0,1);
#$ggg=pdl(1,0,1);
#$bbb=pdl(1,0,0);

# +points3d[$p,$p,$p],[$rrr,$ggg,$bbb],{PointSize=>6} ;
# hold3d();
#  +points3d[$p,$p,$p],[$bbb,$rrr,$bbb],{PointSize=>3} ;
# hold3d();
 
  

 for (;;){
  $c = (400) ; ## speed
 for $phases(1..360) {  ## 360
 #for $start(1..3) {
 $phase = $phases*0.00000001; 
 $frequency = ($c**-1);
 $n= (6.28*$c*$frequency+($phase));

 $photons = 4178; ### [Density] 2444 4178

 
 $t=rvals(exp(zeros($photons)),{Centre=>[0]});
 $cz=-1**$t*$c;
 $cy=-1**$t*sin($t*$c);
 $cx=-1**$c*bessj0(rvals($t,{Centre=>[0]}))*$c; #-1**$c*bessj0(rvals($t,{Centre=>[0]}))*$c;
 
 
 $w=$cz-$cy-$cx;
 $g=sin($w);
 $r=cos($cy+$c+$cz);
 $b=cos($w);
 $i=($cz-$cx-$cy);
  $q=$c*($i*$n);
  
 $gg=sin($w);
 $rr=cos($c);
 $bb=cos($w);
  
  

  
  
### altitude longitude latitude 
$x = $r*sin($q);  ### cos   change the spin of the electron here
$y = $b*cos($q);  ### sin
$z = $g*sin($q);  ### cos


###tetrahedron
$xx= $x*$y;
$yy= $y*$z;
$zz= $z*$x;



#$xx = $bb*sin($c);  ### cos   change the spin of the electron here
#$yy = $rr*cos($c);  ### sin
#$zz = $gg*sin($c);  ### cos


$rad=sum(sqrt(($x**2)+($y**2)+($z**2)));
$theta= sin($y*$x*$z)**-1;
$phi=cos($z*$rad)->rvals;

$xxx = $rad*cos($theta)*sin($phi);  ### cos   change the spin of the electron here
$yyy = $rad*sin($theta)*sin($phi);  ### sin
$zzz = $rad*cos($phi);  ### cos

##### tetrahedron centered
$xx1= $xxx*sin($n+($ddd+=20));
$yy1= $yyy*cos($n+($ddd+=20));
$zz1= $zzz*sin($n+($ddd+=20));


$xx2 = sin($xx1*$yy1*rvals($xx1*$yy1));
$yy2 =  sin($yy1*$zz1*rvals($yy1*$zz1));
$zz2 =  sin($zz1*$xx1*rvals($zz1*$xx1));


## carbon atom
$xxxx=($xxx*$yyy);
$yyyy=($yyy*$zzz);
$zzzz=($zzz*$xxx);

## oxygen spherical harmonic ## have to program it in the matix cant use variable here
$xxxxx=($xxxx*$zzzz);
$yyyyy=($yyyy*$xxxx);
$zzzzz=($zzzz*$yyyy);

#$x1=($xxxx*$yyyy);
#$y1=($yyyy*$zzzz);
#$z1=($zzzz*$xxxx);

#$xxx=$xxx->dup(0,3);
#$yyy=$yyy->dup(0,3);
#$zzz=$zzz->dup(0,3);


 
 $matrixa = ones(50000);
 $matrixb = ones(50000);
 $matrixc = ones(50000);
 $colora = ones(50000);
 $colorb = ones(50000);
 $colorc = ones(50000);  
 
###################################################################################################
################################################################################################### 


 #$matrixa->range(4178,[4178]) .= 10*($xx2); 
 # $matrixb->range(4178,[4178]) .= 10*($yy2); 
 # $matrixc->range(4178,[4178]) .= 10*($zz2); 
 # $colora->range(4178,[4178]) .= $b ;
 #$colorb->range(4178,[4178]) .= $b ; 
 # $colorc->range(4178,[4178]) .= $b ; 
  
 $eee+=0000000001;
  ### very important lesson here 1000*sin($eee)
  $matrixa->range(5000,[4178]) .=$xxx+10000*sin($eee) ;
  $matrixb->range(5000,[4178]) .=$yyy+10000*cos($eee); 
  $matrixc->range(5000,[4178]) .=$zzz;
  $colora->range(5000,[4178]) .= $r ;
  $colorb->range(5000,[4178]) .= $g ; 
  $colorc->range(5000,[4178]) .= $b ;
  
  
  $matrixa->range(15000,[4178]) .=-$xxx;                            
  $matrixb->range(15000,[4178]) .=-$yyy-10000*sin($eee) ;
  $matrixc->range(15000,[4178]) .=-$zzz-10000*cos($eee);
  $colora->range(15000,[4178]) .= $b ;
  $colorb->range(15000,[4178]) .= $r ; 
 $colorc->range(15000,[4178]) .= $g ;
  
  $matrixa->range(20000,[4178]) .= $xxx-10000*cos($eee);
  $matrixb->range(20000,[4178]) .= $yyy;
  $matrixc->range(20000,[4178]) .= $zzz+10000*sin($eee) ;
  $colora->range(20000,[4178]) .= $b ;
  $colorb->range(20000,[4178]) .= $g ; 
 $colorc->range(20000,[4178]) .= $r ;
  
  $matrixa->range(10000,[4178]) .=  50*$xxx ;
  $matrixb->range(10000,[4178]) .= 50*$yyy ; 
  $matrixc->range(10000,[4178]) .= 50*$zzz ;
  $colora->range(10000,[4178]) .= $b ;
  $colorb->range(10000,[4178]) .= $g ; 
  $colorc->range(10000,[4178]) .= $r ;
  
  
  
  #### colors add +$n or -$n to get different solid colors
  #$colora->range(5000,[41780]) .= $r+$n ;  red
  #$colorb->range(5000,[41780]) .= $g+$n ;  geen
  #$colorc->range(5000,[41780]) .= $b-$n ;  blue
  
 ### lines in all directions 
 # $matrixa->range(1,[4178]) .= -$xxx*(1/2) ;
 # $matrixb->range(1,[4178]) .= -$xxx*(1/2) ; 
 # $matrixc->range(1,[4178]) .= $xxx*(1/2) ;
 # $colora->range(1,[4178]) .= $r+$n ;
 # $colorb->range(1,[4178]) .= $g+$n ; 
 # $colorc->range(1,[4178]) .= $b+$n ;
  
  
 # $matrixa->range(10000,[4178]) .= $xxx*(1/2) ;
 # $matrixb->range(10000,[4178]) .= $xxx*(1/2) ; 
 # $matrixc->range(10000,[4178]) .= $xxx*(1/2) ;
 # $colora->range(10000,[4178]) .= $r+$n ;
 # $colorb->range(10000,[4178]) .= $g+$n ; 
 # $colorc->range(10000,[4178]) .= $b+$n ;
  
 # $matrixa->range(15000,[4178]) .= $xxx*(1/2);
 # $matrixb->range(15000,[4178]) .= -$xxx*(1/2); 
 # $matrixc->range(15000,[4178]) .= -$xxx*(1/2);
 # $colora->range(15000,[4178]) .= $r+$n ;
 # $colorb->range(15000,[4178]) .= $g+$n ; 
 # $colorc->range(15000,[4178]) .= $b+$n ;
  
 #  $matrixa->range(35000,[4178]) .= -$xxx*(1/2);
 # $matrixb->range(35000,[4178]) .= $xxx*(1/2); 
 # $matrixc->range(35000,[4178]) .= -$xxx*(1/2);
 # $colora->range(35000,[4178]) .= $r+$n ;
 # $colorb->range(35000,[4178]) .= $g+$n ; 
 # $colorc->range(35000,[4178]) .= $b+$n ;
  
  
#  $matrixa->range(20000,[4178]) .= 4000+$xxx*(1/2);
#  $matrixb->range(20000,[4178]) .= ($yyy-$yyy)*(1/2); 
#  $matrixc->range(20000,[4178]) .= ($zzz-$zzz)*(1/2);
#  $colora->range(20000,[4178]) .= $r+$n ;
#  $colorb->range(20000,[4178]) .= $g+$n ; 
#  $colorc->range(20000,[4178]) .= $b+$n ;
  
#  $matrixa->range(25000,[4178]) .= 4000+($xxx-$xxx)*(1/2);
#  $matrixb->range(25000,[4178]) .= $yyy*(1/2); 
#  $matrixc->range(25000,[4178]) .= ($zzz-$zzz)*(1/2);
#  $colora->range(25000,[4178]) .= $r+$n ;
#  $colorb->range(25000,[4178]) .= $g+$n ; 
#  $colorc->range(25000,[4178]) .= $b+$n ;
  
#  $matrixa->range(30000,[4178]) .= 4000+($xxx-$xxx)*(1/2);
#  $matrixb->range(30000,[4178]) .= ($yyy-$yyy)*(1/2); 
#  $matrixc->range(30000,[4178]) .= ($zzz)*(1/2);
#  $colora->range(30000,[4178]) .= $r+$n ;
#  $colorb->range(30000,[4178]) .= $g+$n ; 
#  $colorc->range(30000,[4178]) .= $b+$n ;
  
  
  +points3d[$matrixa,$matrixb,$matrixc], [$colora,$colorb,$colorc];#{PointSize=>1}; 
  #release3d();
  
 #+points3d[$x*$b,$y*$g,$z*$r],   [$b,$g,$r]; ## 6th Dimensional electron 
   print $phases," ", "\n";
  $radius = sum(sqrt(($x**2)+($y**2)+($z**2)));
  print $radius," radius ","\n";
  $length = ($radius+$radius)**-3; 
  $charge = (-1.6021766)*((10)**-19);
  $light = 299792458;
  $len = ($length * $light);
  $planck = (6.62607)*((10)**-34) ;
  $mass = ($planck / $len);
  $time = ($planck / ($mass * ($light**2)));
  $current = (-1.6021766)*((10)**-19)/ $time;
  $charge2 = $current*$time;

  print $photons," number of photons ","\n";
  print $light," speed of light constant ??? ","\n";
  print $planck," plancks constant ??? ","\n";
  print $charge," charge constant ??? ","\n","\n";
  print " charge should be constant here ","\n";
  print $charge2," this should be constant ","\n";
  
  
  print $mass," mass = h/(lc) ","\n";
  print $length, " length = h/(mc) ","\n";
  print $time, " time = h/(mc**2) = 1/frequency ","\n";
  print $current," current = Q/t = volts/ohms ","\n","\n";;

  print $phase," remember = Amplitude * sin(6.28*time*frequency+phase) ","\n";

 ## mass    = [M] = m = kilograms
 ## length  = [L] = l = meters
 ## time    = [T] = t = seconds
 ## current = [I] = amps

 ##    voltage = [M] * [L**2] * [T**-3] * [I**-1] = volts
##  resistance = [M] * [L**2] * [T**-3] * [I**-2] = ohms
## capacitance = [M**-1] * [L**-2] * [T**4] * [I**2] = farad
##  inductance = [M] * [L**2] * [T**-2] * [I**-2] = henrys
## Q = charge  = [T] * [I] = coulombs
## h = plancks constant
## c = speed of light = [L] * [T**-1]


  ### volts * farads = [T] * [I] = charge = Q
  
  ###    volts          [M]       [L**2]    [T**-3]   [I**-1]
  ###      *   =   +    [M**-1]   [L**-2]   [T**4]    [I**2]    
  ###    farads        -------    -------   ------    ------
  ###                   [M**0]    [L**0]    [T**1]    [I**1] 
  
  
  ### volts / ohms = [I] = amps
  
  ###    volts        [M]     [L**2]    [T**-3]   [I**-1]
  ###      /   =   -  [M]     [L**2]    [T**-3]   [I**-2]    
  ###    omhs         ------- -------   ------    ------
  ###                 [M**0]  [L**0]    [T**0]    [I**1] 
  
  ### ((volts * farads) / (volts / omhs )) =  ([T]*[I]) - ([I]) =  [T] = 1 / time =  [T**-1] = frequency
  
  ### speed of light / frequency = [L] = ($radius+$radius) = WaveLength  
  ###  [L] * [T**-1] / [T**-1] = Length = [L] 
  
   ### If we can measure the wavelength of the Particle or Nucleon or Molecule we can calculate the [M][L][T][I]
  
  
   
######################################################################################################## 
  #$uu = ($x*$y*$z);
    
## Tetrahedron Dynamics
## points3d[(sin($uu**1/2)/$x,tan($uu**1/2)/$y,sin($uu**1/2)/$z)]   ; }

## Calabi-Yau Dynamics 
## points3d[(sin($uu**1/2)/$x,tan($uu**1/2)/$y,sin($uu**1/2)/$z*$y)]  ; }
########################################################################################################


} } #} 




## electron charge -1.6021766×10^-19 C (coulombs)  TI
## Force F between like charges 1 cm apart from F = Q^2/(4πϵ_0r^2):
## 2.3×10^-24 N (newtons)
## Current I caused by the charge flowing in one second from I = Q/t:
## 1.6×10^-19 A (amperes)

