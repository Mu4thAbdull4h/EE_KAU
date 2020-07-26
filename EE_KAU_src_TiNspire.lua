-- Author   : Muath Abdullah
-- Email    : m0az@outlook.com
-- Linkedin : https://www.linkedin.com/in/muath-alyoubi-999a8a17a/
-- For EE department club , King Abdulaziz University


--[[    + 65
function Elec.OpAmp(Opx,Opy,gc,neg)	        168
function on.paint(gc)			            262
function DrawScreen(gc) 		            360
function on.backtabKey() 		            793
function BJTComparisionTable(gc) 	        1124
function HighOrderLpfchebyshev(gc)  	    1194
function HighOrderLpfchebyshevCalc()	    1428
function IP_Subnetting(gc)		           1463
function CIDRfunc(IP)		               1552
function toBitsOneByte(num)		           1564
function FrequencyCalc(gc)		            1594
function FrequencyCalcMath()		1672
function Resistance_4Band(gc)		1716
function Resistance_5Band(gc)		1755
function Resistance_6Band(gc)		1798
function Resistance_smd(gc)		1845
function Resistance_Calc(gc) 		1898
function CommonBase(gc)		2022
function CommonCollector(gc)		2078
function parallel(AA,BB) 		2160
function CommonEmitter(gc)		2166
function Fmultivibrator(gc)		2407
function Flpf(gc)			2470
function FHpf(gc)			2521
function CE_Design_Compute		2573
function Flpf_Compute(Traget)		2604
function Fmultivibrator_Compute	2636
function TAB(gc) 			2658
function Size(target)			2679
function toBits(num)			2707
function QuickCalc(gc)		2741
function toOctal(num)		2799
function hexadicemal(num)		2814
function littleEnd(Parameter)		2820
function AdvSize(target) 		2828
function ElecrtricSize(target)		2880
function Formula(gc)		2911
function CopyConstant(Index)		2984
function Constants(gc)		2993
function GreekAlpha(gc)		3045
function SIunit(gc)			3072
function Copy(Index)			3094
function VectorsPage(gc)		3157
function Circle(Vector,gc)		3195
function graph3d(Vector,gc)		3206
function crossp(Vect1,Vect2)		3219
function DivergenceSquare(Fun)	3235
function DivergenceSquareCylind(Fun)	3305
function Curl(Fun)			3375
function VectorsComputer(gc)		3499
function TwoVectorsComputer(gc)	3682
function crosspOfTwoVectorClass	4167
function CorrectTheNumberStrings(Arg)	4176
function AngleToPlanes(Vector)	4185
function GraphSetup(Vector)		4207
function laplacian()			4219
function gradient(fun,typ)		4265
function DerivedSI(gc)		4279
function qPeriodic(gc)		4349
function search(targetSymbol)		4651
function sort()			4660	
	]]
	
	
	
	
SubMenu     	= 2;
MainMenu    	= 2;
platform.window:setBackgroundColor(0x0);
tab 			= true;
GraphingFlag 	= false;

local image_Viewer_number   = {};
image_Viewer_number.Number  = 1;
image_Viewer_number.xAxis   = -30;
image_Viewer_number.yAxis   = 1;
-------------------------------------------------------------------------------------------------------------------------
local screenReslution   = platform.window;
local hgh               = screenReslution:height();
local wdth              = screenReslution:width();
local screen            = platform.window;
local Footer_str        = "[Ctrl]+[?!]:About                [Enter]:Calculations               Beta.Ver: 0.1";
local Resistor          = image.new(_R.IMG.Resistor);
local Capacitor         = image.new(_R.IMG.Capacitor);
local multivibrator     = image.new(_R.IMG.Astable_multivibrator);
local LPF               = image.new(_R.IMG.LPF);
local HPF               = image.new(_R.IMG.HPF);
local Resistor_4        = image.new(_R.IMG.R4Band);
local ResistanceForm    = image.new(_R.IMG.ResistanceForm);
local SphereSys         = image.new(_R.IMG.SphereSys);
local KAUClubLogo       = image.new(_R.IMG.AB);
local Clynd             = image.new(_R.IMG.Clynd);
local rf                = image.new(_R.IMG.RF);
local TScreenhigh       = 30;
local TableColorGND     = 0x0;
local Highlight         = 0xffff00;
local TableColorFor     = 0x555555;
local VectorValues      = {};
local VectorSize        = 0;
local max               = 7; -- 13
local FormulaFlag_enter = false;
local Enter_Flag_Page   = 1;
local negative_flg      = false;
local Coordinate        = 0;            
local page = {} ;
	  page.number = 0;
	  page.flg    = false;
	  
------------------- HighOrderFilterDesign
DesignHighOrderLpf            = {};
DesignHighOrderLpf.Fp         = 10000;
DesignHighOrderLpf.Fs         = 15000;
DesignHighOrderLpf.Amin       = 25;
DesignHighOrderLpf.Amax       = 1;
DesignHighOrderLpf.nOrder     = 4;
DesignHighOrderLpf.k          = 1;
DesignHighOrderLpf.yAxis      = 0;
DesignHighOrderLpf.xAxis      = 0;
DesignHighOrderLpf.ee         = 5;
DesignHighOrderLpf.Capacitor  = "0.00000001";
------------------- OneVector
VectorParts            = {};
VectorParts.x          = "0";      
VectorParts.y          = "1";      
VectorParts.z          = "1";
VectorParts.Index      = 1;
VectorParts.Divergance = "";
------------------- TwoVectors
TwoVectors             = {};
TwoVectors.Vector_A    = {};
TwoVectors.Vector_B    = {};
TwoVectors.YAxis       = 1;
TwoVectors.XAxis       = 1;
TwoVectors.Vector_A[0] = "1";            
TwoVectors.Vector_A[1] = "2";            
TwoVectors.Vector_A[2] = "3";       
TwoVectors.Vector_B[0] = "4";            
TwoVectors.Vector_B[1] = "5";            
TwoVectors.Vector_B[2] = "6";     
GraphingPageIndexForTwoVectorGraph = 3;

--------------------- Inductor Variables
CurrentDirectionflg    = true;
SurfaceDirectionflg    = true;

--------------------- Simulator Variables
BDirection_flg    = false;
IDirection_flg    = true;
Bvariable         = 0;
Ivariable         = 40;
Speed             = 0.01;
TimeVariation     = 0;
Freq              = 1;

--------------------- Ip Subnetting
local IP_Address  	= {};
	  IP_Address[0]	= "192";
	  IP_Address[1]	= "168";
	  IP_Address[2]	= "1";
	  IP_Address[3]	= "16";
	  IP_Address[4]	= "22";
local IP_AddressFlag= false;

--------------------- AngleCalc
local Angle  = {};
Angle.Degree = 90;
Angle.Radian = 3;
Angle.Height = 15;
Angle.Width  = 1;
Angle.Type   = 0;
-------------------- Capacitor Parameters
local Capacitors 		 = {};
	  Capacitors.Counter = 2;
	  Capacitors.Minimum = 2;
	  Capacitors.Maximum = 4;
	  Capacitors[0] 	 = 0.001;
	  Capacitors[1] 	 = 0.001;
                 
local PeriodicTableUnit         ="";       
local qPeriodicClassification   = 0;

-- Periodic Table sortation colors definition
Year        = {15,27,78,28,12,1,7,8,17,25,42,52,74,39,40,92,38,22,4,24,23,41,73,58,46,45,76,77,19,11,20,5,56,53,3,34,48,14,13,35,90,57,68,65,44,55,37,81,49,31,70,21,62,67,69,64,59,60,9,32,66,18,2,10,36,88,54,84,89,86,63,71,91,72,75,43,87,94,93,85,61,96,95,97,98,99,100,101,102,103,104,105,106,107,109,108,111,110,112,114,116,113,115,118,16,6,33,51,30,50,26,29,83,47,82,80,79,117,};
Ionazation  = {55,87,37,19,11,89,56,88,3,71,59,60,58,57,61,62,63,38,49,65,91,66,95,13,96,31,67,94,68,81,20,64,69,92,97,39,70,93,98,90,99,100,21,101,40,102,23,41,24,72,22,42,43,83,50,44,82,25,45,73,47,28,12,29,75,74,27,32,26,14,5,46,84,76,51,78,77,48,52,79,4,30,34,33,16,80,53,15,86,6,35,54,17,1,8,36,7,18,9,10,2,103,104,85,105,107,106,109,111,108,110,112,113,114,115,116,118,117,};
MeltingPoint= {1,10,9,8,7,18,36,54,17,86,80,35,55,31,37,15,19,11,53,16,49,3,34,50,84,83,85,81,48,82,30,52,51,94,93,12,13,88,56,38,58,33,70,63,101,102,20,99,98,57,59,32,47,60,89,97,79,62,29,61,92,95,25,4,64,96,65,66,14,28,67,27,68,39,100,26,21,69,46,91,103,71,22,90,78,40,24,23,45,5,43,72,44,77,41,42,73,76,75,74,6,87,2,104,105,107,106,109,111,108,110,112,113,114,115,116,118,117,};
State       = {9,17,10,18,36,54,86,2,1,8,7,35,80,55,37,19,11,3,87,12,88,56,38,20,4,53,85,52,51,33,32,14,5,84,15,16,34,6,31,49,50,83,81,82,13,58,70,63,57,59,60,89,62,92,64,65,66,67,68,69,91,71,90,48,30,47,79,29,25,28,27,39,26,21,46,22,78,40,24,23,45,72,44,77,41,42,73,76,75,74,118,113,114,115,116,117,94,93,101,102,99,98,97,61,95,96,100,103,43,104,105,107,106,108,112,109,111,110,};
Conductor   = {3,4,6,11,12,13,15,19,20,21,22,23,24,25,26,27,28,29,30,31,33,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,88,90,91,92,93,94,5,16,17,35,53,1,2,7,8,9,10,18,34,36,54,85,86,87,89,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,14,32,52,};
MagnaticType= {24,1,2,4,5,6,7,10,14,15,16,17,18,29,30,31,32,33,34,35,36,47,48,49,50,51,52,53,54,79,80,81,82,83,26,27,28,64,9,61,84,85,86,87,88,89,93,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,3,8,11,12,13,19,20,21,22,23,25,37,38,39,40,41,42,43,44,45,46,55,56,57,58,59,60,62,63,65,66,67,68,69,70,71,72,73,74,75,76,77,78,90,91,92,94,95,};
Boiling     = {2,1,10,7,9,18,8,36,54,86,17,35,53,15,80,16,33,55,34,37,19,48,11,30,84,52,12,70,3,38,81,20,63,83,51,88,82,62,56,69,95,25,49,47,31,4,13,66,50,24,67,32,21,79,26,68,14,28,29,27,46,61,60,96,89,65,94,64,22,59,39,58,71,23,57,45,78,92,5,93,91,6,44,43,40,77,72,42,41,90,76,73,74,75,85,87,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,};
pTableColors= {0xa6e680,0x8e87dc,0xcc5e8e,0xe4c7c9,0x95cec9,0xa6e680,0xa6e680,0xa6e680,0xd7a4de,0x8e87dc,0xcc5e8e,0xe4c7c9,0x555555,0x95cec9,0xa6e680,0xa6e680,0xd7a4de,0x8e87dc,0xcc5e8e,0xe4c7c9,0x999999,0x999999,0x999999,0x999999,0x999999,0x999999,0x999999,0x999999,0x999999,0x999999,0x555555,0x95cec9,0x95cec9,0xa6e680,0xd7a4de,0x8e87dc,0xcc5e8e,0xe4c7c9,0x999999,0x999999,0x999999,0x999999,0x999999,0x999999,0x999999,0x999999,0x999999,0x999999,0x555555,0x555555,0x95cec9,0x95cec9,0xd7a4de,0x8e87dc,0xcc5e8e,0xe4c7c9,0xffffaa,0xffffaa,0xffffaa,0xffffaa,0xffffaa,0xffffaa,0xffffaa,0xffffaa,0xffffaa,0xffffaa,0xffffaa,0xffffaa,0xffffaa,0xffffaa,0xffffaa,0x999999,0x999999,0x999999,0x999999,0x999999,0x999999,0x999999,0x999999,0x999999,0x555555,0x555555,0x555555,0x95cec9,0x95cec9,0x8e87dc,0xcc5e8e,0xe4c7c9,0xffffaa,0xffffaa,0xffffaa,0xffffaa,0xffffaa,0xffffaa,0xffffaa,0xffffaa,0xffffaa,0xffffaa,0xffffaa,0xffffaa,0xffffaa,0xffffaa,0xffffaa,0x999999,0x999999,0x999999,0x999999,0x999999,0x999999,0x999999,0x999999,0x999999,0x999999,0x999999,0x999999,0x999999,0x999999,0x999999};

--------------------------- Vectorcomputer start
local strClynd          = {};
strClynd.string         = "";
strClynd.x              = "";
strClynd.y              = "";
strClynd.z              = "";
local strSphere         = {};
strSphere.string        = "";
strSphere.r             = "";
strSphere.theta         = "";
strSphere.phi           = "";
local VsystemType       = 0;
local VsystemConvertTo  = false;

--------------------------- Physics constants 
local PhysicsConstants              = {};
PhysicsConstants.Tab                = 1;
PhysicsConstants.Page               = 0;
PhysicsConstants.MaxPage            = 18;
PhysicsConstants.ConstantIndex      = 1;
PhysicsConstants.ConstantIndexMax   = 18;


local quantity          = {};
      quantity.index    = 1;
      quantity.maxpage  = 5;
      quantity.page     = 0;
      quantity.maxindex = 16;
local GreekIndex = 1;
local GreekPage  = 0;


beta = 0;
ic   = 2;
vcc  = 1;
rl   = 3;
rs   = 4;
av   = 5;
c1   = 6;
c2   = 7;
c3   = 8;
vjc  = 9;
vje  = 10;
cjc  = 11;
cje  = 12;
taw  = 13;

VectorValues[beta]  = ".005";
VectorValues[vcc]   = "15";
VectorValues[ic]    = ".005";
VectorValues[rl]    = ".05";
VectorValues[rs]    = ".000001267";
VectorValues[av]    = ".005";
VectorValues[c1]    = "0.000001";
VectorValues[c2]    = "0.000001";
VectorValues[c3]    = "0.000001";
VectorValues[vjc]   = "0.4";
VectorValues[vje]   = "0.8";
VectorValues[cjc]   = "0.0000000194";
VectorValues[cje]   = "0.0000000296";
VectorValues[taw]   = "0.000000325";
integer             = 0;
local baseHigh      = 0;
local baseWidth     = 20;
local X_Dimenstion  = 1;
local Y_Dimenstion  = 1;
--[[
 comment
]]


------------------------------------------------------------------------------------------------ Electric circuit schematics Components 
-- #It is a several functions to draw several electricl components at developer section

        -- General Table for Schematic
        Elec = {};
        -- General Table for Schematic
        
        function Elec.OpAmp(Opx,Opy,gc,neg)-- OpAmp Graphing 
            gc:setFont("sansserif","r",6);
            gc:drawLine(Opx+30,Opy,Opx,Opy-20);
            gc:drawLine(Opx+30,Opy,Opx,Opy+20);
            gc:drawLine(Opx,Opy-20,Opx,Opy+20);
            
            if(neg)then gc:drawString ( "+", Opx+4  , Opy+4); gc:drawString ( "-", Opx+3  , Opy-15);
            else        gc:drawString ( "-", Opx+3  , Opy+4); gc:drawString ( "+", Opx+4  , Opy-15);
            end -- end if
        end -- end Elec.OpAmp(Opx,Opy,gc,neg)-- OpAmp Graphing
        
        function Elec.bjt(Opx,Opy,gc,direction) -- TransistorBJT Graphing
            if(direction==0) then 
                gc:setFont("sansserif","r",6);
                gc:drawLine(Opx,Opy,Opx,Opy+15);
                gc:drawLine(Opx+7,Opy-3,Opx,Opy+5);
                gc:drawLine(Opx+7,Opy+17,Opx,Opy+10);
                gc:drawString("▴",Opx+4,Opy+10);
                gc:drawLine(Opx+7,Opy-8,Opx+7,Opy-3);
                gc:drawLine(Opx+7,Opy+17,Opx+7,Opy+22);
                gc:drawLine(Opx-5,Opy+7,Opx,Opy+7);
            else -- opx 200 opy 94
                gc:drawLine(Opx,Opy-15,Opx,Opy);
                gc:drawLine(Opx,Opy-9,Opx+5,Opy-9);
                gc:drawLine(Opx,Opy-11,Opx-9,Opy-16);
                gc:drawLine(Opx-9,Opy-16,Opx-9,Opy-22);
                gc:drawLine(Opx,Opy-4,Opx-9,Opy);
                gc:drawLine(Opx-9,Opy,Opx-9,Opy+6);
            end -- end if
        end -- end Elec.bjt(Opx,Opy,gc,direction) -- TransistorBJT Graphing
        
        function Elec.gnd(Opx,Opy,gc) -- ground 
            gc:drawLine(Opx,Opy,Opx+8,Opy);
            gc:drawLine(Opx+6,Opy+3,Opx+8,Opy);
            gc:drawLine(Opx+2,Opy+3,Opx+4,Opy);
            gc:drawLine(Opx-2,Opy+3,Opx,Opy);
            gc:drawLine(Opx+4,Opy,Opx+4,Opy-5);
        end -- end Elec.gnd(Opx,Opy,gc) -- ground 
        
        function Elec.R(opx,opy,gc,angle) -- Resistors
            if(angle == 0) then 
                  gc:drawImage(Resistor,opx,opy);
            else  gc:drawImage(Resistor:rotate(90),opx,opy);
            end -- end if        
        end -- end Elec.R(opx,opy,gc,angle) -- Resistors
        
        function Elec.C(opx,opy,gc,angle) -- Capacitor
            if(angle == 0) then 
                 gc:drawImage(Capacitor,opx,opy);
                 gc:setColorRGB(0x0);
                 gc:fillRect(opx+7,opy+1,5,5);
                 gc:setColorRGB(0xff0000);
            else gc:drawImage(Capacitor:rotate(90),opx,opy);
                 gc:setColorRGB(0x0);
                 gc:fillRect(opx+7,opy+1,5,5);
                 gc:setColorRGB(0xff0000);        
            end
        end -- end  Elec.C(opx,opy,gc,angle) -- Capacitor
        
        function Elec.Mosfet(opx,opy,gc) -- Mosfet           
            gc:drawLine(opx,opy,opx-10,opy);  
            gc:drawLine(opx-10,opy,opx-10,opy+13); 
            gc:drawLine(opx-10,opy+13,opx,opy+13);            
            gc:drawLine(opx-13,opy,opx-13,opy+13);
            gc:drawLine(opx-13,opy+6,opx-20,opy+6);  
            gc:drawString("▶",opx-5,opy+7);  
            gc:drawLine(opx,opy+13,opx,opy+20); 
            gc:drawLine(opx,opy,opx,opy-8);
        end -- end -- Mosfet   
        
        function Elec.L(opx,opy,gc,deg)  -- Inductance  
            if(deg == 0) then 
                gc:drawArc(opx,opy,4,4,-20,220); 
                gc:drawArc(opx+4,opy,4,4,-20,220); 
                gc:drawArc(opx+8,opy,4,4,-20,220); 
                gc:drawArc(opx+12,opy,4,4,-20,220);    
            else    
                gc:drawArc(opx,opy,4,4,90,180); 
                gc:drawArc(opx,opy+4,4,4,90,180); 
                gc:drawArc(opx,opy+8,4,4,90,180); 
                gc:drawArc(opx,opy+12,4,4,90,180);
            end
        end  -- end -- Inductance              
------------------------------------------------------------------------------------------------ Endof Electric circuit schematics Components 



-------------------------------------------------------------------------------------------------------------------------
local ResistorType                      = 4;
local ResistorResultColor               = 0xddffff;
local SMDResistor                       = "15c";
local Level                             = 0;
local Resistor_Class                    = {} ;
      Resistor_Class.Resistance_Type    = {"4-Band","5-Band","6-Band","SMD","Calc" };
      Resistor_Class.Resistance_Shape   = {4,5,6,3};      
local Resistor4Columns                    = {3,3,2,1};
local Resistor5Columns                   = {3,3,2,1,1};
local Resistor6Columns                   = {3,3,2,1,1,1};
local Resistnace_Value                  = {0,1,2,3,4,5,6,7,8,9,-1,-2};
local ResistanceCalc                    = {};
      ResistanceCalc.Output             = 0;

local Ressitance_TempCoeff = {
      100,      --Brown 
      50,       --Red
      15,       --Orange
      25,       --Yellow
      10,       --blue
      5         --Voilet
      };
      
local Ressitance_TempCoeffColor = {
      0x984706,
      0xfd0002,
      0xff7901,
      0xffff00,
      0x358dfb,
      0x7008bd
      };
      
local Resistance_Tolerance = {
      .10,      --Silver
      .05,      --Gold
      .01,      --Brown
      .02,      --Red
      0.005,    --Green
      0.0025,   --Blue
      0.001     --Voilet
      };
      
local Resistance_TolColor = {
      0xbbbbbb, --Silver
      0xd79c00, --Gold
      0x984706, --Brown
      0xfd0002, --Red
      0x00bb26, --Green
      0x358dfb, --Blue
      0x7008bd  --Voilet
      };
      
local Resistnace_Color ={ 
      0x000000, --black = 0
      0x984706, --brown = 1
      0xfd0002, --red   = 2
      0xff7901, --orange= 3
      0xffff00, --yellow= 4
      0x00bb26, --green = 5
      0x358dfb, --blue  = 6
      0x7008bd, --violet= 7
      0x555555, --grey  = 8
      0xffffff, --white = 9
      0xd79c00, --gold  = 0.1
      0xbbbbbb  --Silver= 0.01
      };
      
local SI              = {};
local Galphabet       = {};
local ResistorSmdCode = {};
ResistorSmdCode.Max   = 96;
ResistorSmdCode.index = 0;

                                                    
-------------------------------------------------------------------------------------------------------------------------

function on.paint(gc)
        if(platform.isDeviceModeRendering() == false)then     gc:setFont("sansserif","r",15);gc:setColorRGB(0xffffff);gc:fillArc(50,50,100,100,0,360);gc:fillArc(180,50,100,100,0,360);gc:setColorRGB(0);gc:fillArc(50,70,100,100,0,360);gc:fillArc(180,70,100,100,0,360); gc:setColorRGB(0xffffff);gc:fillArc(75,75,50,50,0,360);gc:fillArc(205,75,50,50,0,360); gc:drawString("What Are You doing ?!",67,140);
        --elseif(platform.getDeviceID() ~= "0F08000000482427110BD35F1BC")then 
        --gc:setColorRGB(0xff0000);gc:drawString("It is not yours..",110,80);gc:drawString("Contact The Programmer",70,100);gc:drawString("m0az@outlook.com",90,120);
        elseif(tab == true)then
            TAB(gc);  
        elseif(MainMenu ==0)then
            DrawScreen(gc);
        elseif(MainMenu == 1 )then 
            if (SubMenu == 1)then CommonEmitter(gc)  
            elseif (SubMenu == 2)then CommonCollector(gc);
            elseif (SubMenu == 3) then CommonBase(gc);
            elseif (SubMenu == 4)then BJTComparisionTable(gc);                
            end
        elseif(MainMenu == 2) then 
            if     (SubMenu == 1)then Fmultivibrator(gc) 
            elseif (SubMenu == 2)then  TunedInput(gc);
            end
        elseif(MainMenu == 3) then 
            if     (SubMenu == 1)then Flpf(gc);          
            elseif (SubMenu == 2)then FHpf(gc);           
            elseif (SubMenu == 4)then HighOrderLpfchebyshev (gc);   end         
        elseif(MainMenu == 4)then
            if(SubMenu == 1)then
                if     ResistorType == 1 then Resistance_4Band(gc) 
                elseif ResistorType == 2 then Resistance_5Band(gc) 
                elseif ResistorType == 3 then Resistance_6Band(gc) 
                elseif ResistorType == 4 then Resistance_smd(gc)
                elseif ResistorType == 5 then Resistance_Calc(gc)
                end
            elseif(SubMenu == 2) then
                CapacitorBasic(gc);
            elseif(SubMenu == 4) then
                QuickCalc(gc);
            elseif(SubMenu == 5) then
                Constants(gc);
            elseif(SubMenu == 6) then
                SIunit(gc)
            elseif(SubMenu == 7) then
                GreekAlpha(gc);
            elseif(SubMenu == 3) then
                Inductance(gc);
            end
         elseif(MainMenu == 5)then
                if(SubMenu == 4)then
                    VectorsPage(gc);
                elseif(SubMenu == 5)then
                    DerivedSI(gc);
                elseif(SubMenu == 6)then
                    qPeriodic(gc);
                 end
         elseif(MainMenu == 6)then
            if(SubMenu == 1)then
                 VectorsComputer(gc);
            elseif(SubMenu == 2)then
                  TwoVectorsComputer(gc);
            elseif(SubMenu == 3)then
                 FrequencyCalc(gc);
            elseif(SubMenu == 4) then
                 IP_Subnetting(gc);
            elseif(SubMenu == 6) then
                AngleCalc(gc);
            end
        elseif(MainMenu == 8) then
            if(SubMenu == 1)then 
                BSimulator(gc)
            elseif(SubMenu == 2)then 
                WaveMotion(gc);
            elseif(SubMenu == 3)then
                LaggingLeading(gc)
            end
        end   
    if(not tab and FormulaFlag_enter) then Formula(gc);end         
end



--------------------------------------------------------------------------------------------------------
local   ElementPosList              = {};
        ElementPosList.x            = {};
        ElementPosList.y            = {};
        ElementPosList.x2           = {};
        ElementPosList.y2           = {};
        ElementPosList.t            = {};
        ElementPosList.t[0]         = 0;
        ElementPosList.x[0]         = 0;
        ElementPosList.y[0]         = 0;
        ElementPosList.x2[0]        = 120;
        ElementPosList.y2[0]        = 200;
        ElementPosList.size         = -1;
        ElementPosList.pos          = -1;
        ElementPosList.txt          = {};
        ElementPosList.TempTxt      = "";
        ElementPosList.Dirction     = {};
        ElementPosList.Dirction[0]  = 0; 
local   DrawingParameters           = {};
        DrawingParameters.element 	= 0;
        DrawingParameters.Dirction 	= 0;
        
        
        
function DrawingParameters.check(x,y)      
      if x>0 and x < 15 and y > 0 and y < 10 then           DrawingParameters.element  = 0;        
      elseif x>16 and x < 33 and y > 0 and y < 10 then      DrawingParameters.element  = 1;  
      elseif x>34 and x < 50 and y > 0 and y < 10 then      DrawingParameters.element  = 2;    
      elseif x>51 and x < 68 and y > 0 and y < 10 then      DrawingParameters.element  = 3;   
      elseif x>68 and x < 99 and y > 0 and y < 10 then      DrawingParameters.element  = 4;  
      elseif x>100 and x < 115 and y > 0 and y < 10 then    DrawingParameters.element  = 5;
      elseif x>117 and x < 132 and y > 0 and y < 10 then    DrawingParameters.element  = 6; 
      elseif x>134 and x < 150 and y > 0 and y < 10 then    DrawingParameters.element  = 7;
      elseif x>151 and x < 171 and y > 0 and y < 10 then    DrawingParameters.element  = 8;
      elseif x>283 and x < 297 and y > 4 and y < 13 then    DrawingParameters.Dirction = 1;
      elseif x>303 and x < 312 and y > 4 and y < 13 then    DrawingParameters.Dirction = 0;
      elseif x>303 and x < 312 and y > 4 and y < 13 then    DrawingParameters.Dirction = 0;    
      end
end  
    
    
function DrawScreen(gc)
    gc:setFont("sansserif","r",6);
    gc:setColorRGB(0xff0000);
    Elec.C(15,4,gc,0);
    Elec.R(49,5,gc,0);
    gc:drawLine(1,7,15,7);
    gc:drawString("gn",37,0);
    gc:drawString("bjt",103,0);
    gc:drawString("OpAmp",69,1);
    gc:drawString("txt",119,1);
    gc:drawString("mos",153,1);
    gc:drawArc(138,5,5,5,0,360);
    gc:drawString("▲",291,-2);
    gc:drawString("▼",291,8);
    gc:drawString("◀",283,4);
    gc:drawString("▶",303,4);
    gc:setColorRGB(0x888888);
    gc:drawRect(0,2,15,10);
    gc:drawRect(17,2,15,10);
    gc:drawRect(34,2,15,10);
    gc:drawRect(51,2,15,10);
    gc:drawRect(68,2,30,10);
    gc:drawRect(100,2,15,10);
    gc:drawRect(116,2,15,10);
    gc:drawRect(133,2,15,10);
    gc:drawRect(150,2,21,10);
    gc:drawRect(290,0,10,9);
    gc:drawRect(281,5,9,10);
    gc:drawRect(300,5,9,10);
    gc:drawRect(290,10,10,9);

    print("--===================================================");
    print("--- - - - - - - - -  Source Code  - - - - - - - - - -");
    print("--===================================================");  
     
    for i=0,ElementPosList.size do
		if(ElementPosList.pos == i) then gc:setColorRGB(0x00ff00);
		else gc:setColorRGB(0xff0000);
		end
		if(ElementPosList.t[i] == 0) then     print("gc:drawLine("..ElementPosList.x[i]..","..ElementPosList.y[i]..","..ElementPosList.x2[i]..","..ElementPosList.y2[i]..");") ;gc:drawLine(ElementPosList.x[i],ElementPosList.y[i],ElementPosList.x2[i],ElementPosList.y2[i]);
		elseif(ElementPosList.t[i] == 1) then print("Elec.C("..ElementPosList.x2[i]..","..ElementPosList.y2[i]..",gc,"..ElementPosList.Dirction[i]..");"); Elec.C(ElementPosList.x2[i],ElementPosList.y2[i],gc,ElementPosList.Dirction[i]);
		elseif(ElementPosList.t[i] == 2) then print("Elec.gnd("..ElementPosList.x2[i]..","..ElementPosList.y2[i]..",gc)");Elec.gnd(ElementPosList.x2[i],ElementPosList.y2[i],gc);
		elseif(ElementPosList.t[i] == 3) then print("Elec.R("..ElementPosList.x2[i]..","..ElementPosList.y2[i]..",gc,"..ElementPosList.Dirction[i]..");") ;Elec.R(ElementPosList.x2[i],ElementPosList.y2[i],gc,ElementPosList.Dirction[i]);
		elseif(ElementPosList.t[i] == 4) then print("Elec.OpAmp("..ElementPosList.x2[i]..","..ElementPosList.y2[i]..",gc);"); Elec.OpAmp(ElementPosList.x2[i],ElementPosList.y2[i],gc);
		elseif(ElementPosList.t[i] == 5) then print("Elec.bjt("..ElementPosList.x2[i]..","..ElementPosList.y2[i]..",gc,"..ElementPosList.Dirction[i]..");"); Elec.bjt(ElementPosList.x2[i],ElementPosList.y2[i],gc,ElementPosList.Dirction[i]);
		elseif(ElementPosList.t[i] == 6) then print("gc:drawString(\""..ElementPosList.txt[i].."\","..ElementPosList.x2[i]..","..ElementPosList.y2[i]..");") ;gc:drawString(ElementPosList.txt[i],ElementPosList.x2[i],ElementPosList.y2[i]);
		elseif(ElementPosList.t[i] == 7) then print("gc:drawArc("..ElementPosList.x[i]..","..ElementPosList.y[i]..","..ElementPosList.x2[i]..","..ElementPosList.y2[i]..",0,360);") ;gc:drawArc(ElementPosList.x[i],ElementPosList.y[i],ElementPosList.x2[i],ElementPosList.y2[i],0,360);
		elseif(ElementPosList.t[i] == 8) then print("Elec.Mosfet("..ElementPosList.x2[i]..","..ElementPosList.y2[i]..",gc)");Elec.Mosfet(ElementPosList.x2[i],ElementPosList.y2[i],gc);
		end
    end
    print("---------------------------------------------------\n\n");    
    
    gc:setColorRGB(0xff0000);
    if(DrawingParameters.element == 0) then
            gc:drawLine(FirstXNumber-1,FirstYNumber-1,LastXPositionForTheMouse-5,LastYPositionForTheMouse-9); 
            if(letsprint and not isDown) then  letsprint = false   end
    elseif(DrawingParameters.element == 3)then
            Elec.R(LastXPositionForTheMouse-5,LastYPositionForTheMouse-9,gc,DrawingParameters.Dirction);
            if(letsprint and not isDown) then  letsprint = false end     
     elseif(DrawingParameters.element == 2)then
        Elec.gnd(LastXPositionForTheMouse-5,LastYPositionForTheMouse-9,gc); 
        if(letsprint and not isDown) then  letsprint = false end
     elseif(DrawingParameters.element == 1)then
         if(letsprint and not isDown) then  letsprint = false end
        Elec.C(LastXPositionForTheMouse-5,LastYPositionForTheMouse-9,gc,DrawingParameters.Dirction); 
     elseif(DrawingParameters.element == 4)then
                 if(letsprint and not isDown) then  letsprint = false end
                 Elec.OpAmp(LastXPositionForTheMouse-5,LastYPositionForTheMouse-9,gc);
    elseif(DrawingParameters.element == 5)then
                  if(letsprint and not isDown) then letsprint = false end
                Elec.bjt(LastXPositionForTheMouse-5,LastYPositionForTheMouse-9,gc,DrawingParameters.Dirction);   
    elseif(DrawingParameters.element == 6)then
                   if(letsprint and not isDown) then letsprint = false end
                  gc:drawString(ElementPosList.TempTxt,LastXPositionForTheMouse-5,LastYPositionForTheMouse-9);
    elseif(DrawingParameters.element == 7)then
                                     if(letsprint and not isDown) then letsprint = false end
                                     if(LastYPositionForTheMouse> FirstYNumber and LastXPositionForTheMouse>FirstXNumber)then gc:drawArc(FirstXNumber-5,FirstYNumber-5,LastXPositionForTheMouse+9-FirstXNumber,LastYPositionForTheMouse+5-FirstYNumber,0,360); end 
    elseif(DrawingParameters.element == 8)then
                                     if(letsprint and not isDown) then letsprint = false end
                                     Elec.Mosfet(LastXPositionForTheMouse-5,LastYPositionForTheMouse-9,gc); 
    end
    
    gc:setFont("sansserif","r",6);
    gc:setColorRGB(0xff0000);
    if(ElementPosList.pos>=0) then
    gc:drawString("X1:"..FirstXNumber.."   X2:"..LastXPositionForTheMouse-4 .."  ||   Y1:"..FirstYNumber.."   Y2:"..LastYPositionForTheMouse -8 ..
     "    E:"..DrawingParameters.element .. "   Size:"..ElementPosList.size, 0,200);
     gc:drawString( "Pos:"..ElementPosList.pos+1 .."   Element:"..ElementPosList.t[ElementPosList.pos]
     .."  X1:"..ElementPosList.x[ElementPosList.pos].."  X2:"..ElementPosList.x2[ElementPosList.pos].."   Y1:"..
     ElementPosList.y[ElementPosList.pos].."   Y2:"..ElementPosList.y2[ElementPosList.pos],0,190);
    else gc:drawString("X1:"..FirstXNumber.."   X2:"..LastXPositionForTheMouse-4 .."  ||   Y1:"..FirstYNumber.."   Y2:"..LastYPositionForTheMouse-8 .."    E:"..DrawingParameters.element .. "   Size:"..ElementPosList.size+1 ,0,200);
    end
end

--------------------------------------------------------------------------------------------------------



LastXPositionForTheMouse = 160;
LastYPositionForTheMouse = 110;
isDown = false;
letsprint = false
Element = 0;
FirstXNumber = 0;
FirstYNumber = 0;


function on.mouseDown(x,y)
    cursor.hide();
    FirstXNumber 	= x;
    FirstYNumber 	= y;
    isDown 			= true;
    letsprint 		= false;
    DrawingParameters.check(x,y);
end 


function on.mouseUp(x,y)
    cursor.hide();
    letsprint 	= true; 
    isDown 		= false;
 
end 


function on.mouseMove(x,y)
            if(isDown and MainMenu == 0)then
				LastXPositionForTheMouse = x;
				LastYPositionForTheMouse = y;
            elseif(MainMenu == 0) then
                DrawingParameters.check(x,y);            
            elseif(GraphingFlag) then
				if(GraphingPageIndexForTwoVectorGraph == 3 ) then
					if(TwoVectors.YAxis) then
							TwoVectors.Vector_A[0] =  tostring(math.floor((x - LastXPositionForTheMouse)*0.5));
							TwoVectors.Vector_A[1] =  tostring(math.floor(-0.5*(y - LastYPositionForTheMouse)));
					elseif(not TwoVectors.YAxis) then
							TwoVectors.Vector_B[0] =  tostring(math.floor((x - LastXPositionForTheMouse)*0.5));
							TwoVectors.Vector_B[1] =  tostring(math.floor(-0.5*(y - LastYPositionForTheMouse)));  
					end
            elseif(GraphingPageIndexForTwoVectorGraph == 2 ) then
                if(TwoVectors.YAxis) then 
                        TwoVectors.Vector_A[2] = tostring(math.floor((x - LastXPositionForTheMouse)*0.5));
                        TwoVectors.Vector_A[1] =  tostring(math.floor(-0.5*(y - LastYPositionForTheMouse)));
                elseif(not TwoVectors.YAxis) then
                        TwoVectors.Vector_B[2] =  tostring(math.floor((x - LastXPositionForTheMouse)*0.5));
                        TwoVectors.Vector_B[1] =  tostring(math.floor(-0.5*(y - LastYPositionForTheMouse)));
                end
                
            else
                if(TwoVectors.YAxis) then 
                        TwoVectors.Vector_A[0] =  tostring(math.floor((x - LastXPositionForTheMouse)*0.5));
                        TwoVectors.Vector_A[2] =  tostring(math.floor(-0.5*(y - LastYPositionForTheMouse)));
                elseif(not TwoVectors.YAxis) then

                        TwoVectors.Vector_B[0] =  tostring(math.floor((x - LastXPositionForTheMouse)*0.5));
                        TwoVectors.Vector_B[2] =  tostring(math.floor(-0.5*(y - LastYPositionForTheMouse))); 
                end    
              end
            end
            screen:invalidate();
end


function on.enterKey(char)       
       if(MainMenu == 0)then
           if(DrawingParameters.element == 7)then
                ElementPosList.size = ElementPosList.size+1; 
                ElementPosList.x[ElementPosList.pos]  		= FirstXNumber-5;
                ElementPosList.y[ElementPosList.pos]  		= FirstYNumber-5;
                ElementPosList.x2[ElementPosList.pos] 		= LastXPositionForTheMouse+9-FirstXNumber;
                ElementPosList.y2[ElementPosList.pos] 		= LastYPositionForTheMouse+5-FirstYNumber;
                ElementPosList.t[ElementPosList.pos]  		= DrawingParameters.element ;
                ElementPosList.txt[ElementPosList.pos]		= ElementPosList.TempTxt;
                ElementPosList.Dirction[ElementPosList.pos]	= DrawingParameters.Dirction;
                ElementPosList.TempTxt						= "x";
           else
                ElementPosList.x[ElementPosList.pos]  		= FirstXNumber-1;
                ElementPosList.y[ElementPosList.pos]  		= FirstYNumber-1;
                ElementPosList.x2[ElementPosList.pos] 		= LastXPositionForTheMouse-5;
                ElementPosList.y2[ElementPosList.pos] 		= LastYPositionForTheMouse-9;
                ElementPosList.t[ElementPosList.pos]  		= DrawingParameters.element ;
                ElementPosList.txt[ElementPosList.pos]		= ElementPosList.TempTxt;
                ElementPosList.Dirction[ElementPosList.pos] = DrawingParameters.Dirction;
                ElementPosList.TempTxt						= "x";
           end
       elseif(SubMenu == 1 and MainMenu == 6) then
			newx = VectorParts.x:gsub('y','r*sin(φ)');
			newx = newx:gsub('x','r*cos(φ)');
			newy = VectorParts.y:gsub('y','r*sin(φ)');
			newy = newy:gsub('x','r*cos(φ)');
			newz = VectorParts.z:gsub('y','r*sin(φ)');
			newz = newz:gsub('x','r*cos(φ)');

			if(math.evalStr("(ř*cos(φ) - ø*sin(φ))*("..newx..")")) then
				strClynd.x = math.evalStr("(ř*cos(φ) - ø*sin(φ))*("..newx..")");
			else 
				strClynd.x = "0";
			end

			if(math.evalStr("(ř*sin(φ) + Φ*cos(φ))*("..newy..")") ) then
				strClynd.y = math.evalStr("(ř*sin(φ) + ø*cos(φ))*("..newy..")");
			else 
				strClynd.y = "0";
			end

			tempx 	   = math.evalStr(strClynd.x:gsub('ø','0').."+"..strClynd.y:gsub('ø','0'));
			strClynd.y = math.evalStr(strClynd.x:gsub("ř","0").."+"..strClynd.y:gsub("ř","0")); 
			strClynd.y = math.evalStr(strClynd.y:gsub('ø','1'));
			strClynd.x = math.evalStr(tempx:gsub('ř','1'));
			strClynd.z = newz;


			newr 	= VectorParts.x:gsub("y","(R*sin(θ)*sin(φ))");
			newr 	= newr:gsub("x","(R*sin(θ)*cos(φ))");
			newr 	= newr:gsub("z","(R*cos(θ))");

			newy 	= VectorParts.y:gsub("y","(R*sin(θ)*sin(φ))");
			newy 	= newy:gsub("x","(R*sin(θ)*cos(φ))");
			newy 	= newy:gsub("z","(R*cos(φ))");

			newphi  = VectorParts.z:gsub("y","(R*sin(θ)*sin(φ))");
			newphi  = newphi:gsub("x","(R*sin(θ)*cos(φ))");
			newphi  = newphi:gsub("z","(R*cos(θ))");

			if(math.evalStr("(ř*sin(θ)*cos(φ) + *cos(θ)*cos(φ) - theta*sin(φ))*("..newr..")")) then
				strSphere.r = math.evalStr("(ř*sin(θ)*cos(φ) + *cos(θ)*cos(φ) - theta*sin(φ))*("..newr..")");
			else 
				strSphere.r = "0";
			end 
			   
			if(math.evalStr("(ř*sin(θ)*sin(φ) + *cos(θ)*sin(φ) + theta*cos(φ))*("..newy..")") ) then
				strSphere.theta = math.evalStr("(ř*sin(θ)*sin(φ) + *cos(θ)*sin(φ) + theta*cos(φ))*("..newy..")");
			else 
				strSphere.theta = "0";
			end

			if(math.evalStr("(ř*cos(θ) - *sin(θ))*("..newphi..")") ) then
				strSphere.phi = math.evalStr("(ř*cos(θ) - *sin(θ))*("..newphi..")");
			else 
				strSphere.phi = "0";
			end

			final     		= math.evalStr(strSphere.r.."+"..strSphere.theta.."+"..strSphere.phi); 
			tempr 	   		= math.evalStr(final:gsub('theta','0'));
			tempr 	   		= math.evalStr(tempr:gsub("",'0'));             
			temptheta 		= math.evalStr(final:gsub('ř','0')); 
			temptheta 		= math.evalStr(temptheta:gsub("",'0'));             
			strSphere.phi 	= math.evalStr(final:gsub('theta','0'));
			strSphere.phi 	= math.evalStr(strSphere.phi:gsub('ř','0'));             
			strSphere.r 	= math.evalStr(tempr:gsub('ř','1'));
			strSphere.theta= math.evalStr(temptheta:gsub('theta','1'));
			strSphere.phi 	= math.evalStr(strSphere.phi:gsub("",'1'));    
			
        else FormulaFlag_enter = not FormulaFlag_enter
        end
        screen:invalidate(); 
end


function on.tabKey(char)
      
      if(MainMenu == 1 and SubMenu == 1) then
            page.flg = true;
      elseif(MainMenu == 4 and SubMenu == 3) then 

      elseif (MainMenu == 0) then
         if(DrawingParameters.element == 7)then
             ElementPosList.size = ElementPosList.size+1; 
             ElementPosList.x[ElementPosList.size]  = FirstXNumber-5;
             ElementPosList.y[ElementPosList.size]  = FirstYNumber-5;
             ElementPosList.x2[ElementPosList.size] = LastXPositionForTheMouse+9-FirstXNumber;
             ElementPosList.y2[ElementPosList.size] = LastYPositionForTheMouse+5-FirstYNumber;
             ElementPosList.t[ElementPosList.size]  = DrawingParameters.element ;
             ElementPosList.txt[ElementPosList.size]= ElementPosList.TempTxt;
             ElementPosList.Dirction[ElementPosList.size]= DrawingParameters.Dirction;
             ElementPosList.TempTxt= "x";
         else
             ElementPosList.size = ElementPosList.size+1; 
             ElementPosList.x[ElementPosList.size]  = FirstXNumber-1;
             ElementPosList.y[ElementPosList.size]  = FirstYNumber-1;
             ElementPosList.x2[ElementPosList.size] = LastXPositionForTheMouse-5;
             ElementPosList.y2[ElementPosList.size] = LastYPositionForTheMouse-9;
             ElementPosList.t[ElementPosList.size]  = DrawingParameters.element ;
             ElementPosList.txt[ElementPosList.size]= ElementPosList.TempTxt;
             ElementPosList.Dirction[ElementPosList.size]= DrawingParameters.Dirction;  
             ElementPosList.TempTxt= "x";
         end
     elseif(MainMenu == 6 and SubMenu == 2) then
        
        if(GraphingFlag) then 
            cursor.show();
        else
            cursor.hide();
            end
        GraphingFlag = not GraphingFlag;
        if(GraphingPageIndexForTwoVectorGraph == 0) then GraphingPageIndexForTwoVectorGraph = 3; end
     elseif(MainMenu == 5 and SubMenu == 6) then
        qPeriodicClassification = qPeriodicClassification+1; if(qPeriodicClassification>6) then qPeriodicClassification = 0; end
     elseif MainMenu == 4 and SubMenu == 1 then
        ResistorType=ResistorType+1;
        if ResistorType > table.getn(Resistor_Class.Resistance_Type) then ResistorType = 1;
        end
     elseif  MainMenu == 4 and SubMenu == 5 then 
        if PhysicsConstants.Tab > 1 then PhysicsConstants.Tab = 0;
        else PhysicsConstants.Tab = PhysicsConstants.Tab + 1;
        end
     elseif  MainMenu == 5 and SubMenu == 4 then   Coordinate = Coordinate+1 if(Coordinate > 2) then Coordinate = 0;end
     elseif  MainMenu == 6 and SubMenu == 1 then
             VsystemType = VsystemType + 1 
             if(VsystemType == 3) then 
                VsystemType = 0 
                end
     end
     X_Dimenstion=1;
     screen:invalidate(); 
end


function on.arrowRight(char)     
                                 
                                 if(SubMenu == 9 and MainMenu == 9)then
                                    image_Viewer_number.xAxis  = image_Viewer_number.xAxis  - 300;
                                 elseif(SubMenu == 1 and MainMenu == 1 and  page.flg) then page.number = page.number + 1; page.flg = false;
                                 elseif(Speed < 0.5 and MainMenu == 8) then Speed = Speed + 0.01;
                                 elseif(MainMenu ==0 and ElementPosList.pos < ElementPosList.size)then
                                        ElementPosList.pos = ElementPosList.pos+1;
                                 elseif(SubMenu == 4 and MainMenu == 3)then
                                        if(DesignHighOrderLpf.yAxis==0 ) then  DesignHighOrderLpf.Fs = DesignHighOrderLpf.Fs + 1; 
                                        elseif(DesignHighOrderLpf.yAxis==1 and DesignHighOrderLpf.Fp+1<DesignHighOrderLpf.Fs) then  DesignHighOrderLpf.Fp = DesignHighOrderLpf.Fp + 1; 
                                        elseif(DesignHighOrderLpf.yAxis==2 and DesignHighOrderLpf.Amin < 99999 ) then  DesignHighOrderLpf.Amin = DesignHighOrderLpf.Amin + 1; 
                                        elseif(DesignHighOrderLpf.yAxis==3 and DesignHighOrderLpf.Amax < 99999 and DesignHighOrderLpf.Amin > DesignHighOrderLpf.Amax) then  DesignHighOrderLpf.Amax = DesignHighOrderLpf.Amax + 1; 
                                        elseif(DesignHighOrderLpf.yAxis==4 and DesignHighOrderLpf.k < DesignHighOrderLpf.nOrder) then  DesignHighOrderLpf.k = DesignHighOrderLpf.k + 1;
                                        elseif(DesignHighOrderLpf.yAxis==5)then DesignHighOrderLpf.Capacitor = tostring(DesignHighOrderLpf.Capacitor + 0.000000000001);end
                                        
                                        if(DesignHighOrderLpf.yAxis~=4)then DesignHighOrderLpf.k = 1;end
                                 elseif(SubMenu == 4 and MainMenu == 6) then
                                        if(VectorSize < 4) then VectorSize = VectorSize+1; IP_AddressFlag = false ;end
                                 
                                 elseif(MainMenu == 6 and SubMenu == 6)then
                                     if(Angle.Type == 0 and Angle.Degree < 180) then      Angle.Degree = Angle.Degree + 1;
                                     elseif(Angle.Type == 1) then  Angle.Height = Angle.Height + 1 ;
                                     elseif(Angle.Type == 2) then  Angle.Width = Angle.Width  + 1 ;
                                     end
                                 elseif(MainMenu == 5 and SubMenu == 6 )then 
                                        if(not tonumber(PeriodicTableUnit) or tonumber(PeriodicTableUnit) > 117 ) then 
                                            PeriodicTableUnit = 0;
                                            end
                                        PeriodicTableUnit = tonumber(PeriodicTableUnit) + 1 ;
                                 elseif(MainMenu == 6 and SubMenu == 2 ) then
                                            cursor.hide();
                                            if(GraphingFlag) then 
                                            
                                            GraphingPageIndexForTwoVectorGraph = GraphingPageIndexForTwoVectorGraph - 1;
                                            if(GraphingPageIndexForTwoVectorGraph < 1 ) then GraphingPageIndexForTwoVectorGraph = 3;end
                                            else
                                            
                                            if( TwoVectors.XAxis < 2 )then TwoVectors.XAxis = TwoVectors.XAxis + 1 ; end
                                            end
                                 elseif(MainMenu == 6 and SubMenu == 3)then VectorValues[VectorSize] = VectorValues[VectorSize] + 1 ;
                                 elseif((FormulaFlag_enter) and Enter_Flag_Page < 3 ) then Enter_Flag_Page = Enter_Flag_Page+1;
                                 elseif ( MainMenu == 6 and SubMenu == 1 and VectorParts.Index < 3 ) then VectorParts.Index = VectorParts.Index+1;
                                 elseif MainMenu == 4 and SubMenu == 1 then 
                                    if ResistorType == 1 and X_Dimenstion < 4 then X_Dimenstion=X_Dimenstion+1;
                                    elseif ResistorType == 2 and X_Dimenstion < 5 then X_Dimenstion=X_Dimenstion+1;
                                    elseif ResistorType == 3 and X_Dimenstion < 6 then X_Dimenstion=X_Dimenstion+1;
                                    elseif ResistorType == 5 then VectorValues[VectorSize] = string.format("%.0f",VectorValues[VectorSize]+1)
                                    end
                                elseif MainMenu == 4 and SubMenu == 3 then 
                                
                                    if(VectorSize == c1) then CurrentDirectionflg = not CurrentDirectionflg;
                                    elseif ( VectorSize == c2) then SurfaceDirectionflg = not SurfaceDirectionflg;
                                    
                                    else VectorValues[VectorSize] = VectorValues[VectorSize]+1; 
                                    end
                                 elseif VectorSize == ic then 
                                    if(MainMenu == 1) then VectorValues[ic] = string.format("%.3f",VectorValues[ic]+.001);
                                    else VectorValues[ic] = string.format("%.0f",VectorValues[ic]+1000);
                                    end
                                 elseif VectorSize == rl then VectorValues[rl] = string.format("%.0f",VectorValues[rl]+100);
                                 elseif VectorSize > 5  then VectorValues[VectorSize] = string.format("%.9f",VectorValues[VectorSize]+.0000001) 
                                 elseif(MainMenu == 4 and SubMenu == 2) then
                                         if(X_Dimenstion < Capacitors.Counter)then X_Dimenstion = X_Dimenstion + 1; end
                                 else VectorValues[VectorSize] = string.format("%.0f",VectorValues[VectorSize]+1) 
                                 end 
screen:invalidate();
end
                                    
function on.arrowLeft(char)      
                                
                                if(SubMenu == 9 and MainMenu == 9)then
                                    image_Viewer_number.xAxis  = image_Viewer_number.xAxis  + 300 ;
                                elseif(SubMenu == 1 and MainMenu == 1 and  page.flg) then page.number = page.number - 1; page.flg = false;
                                elseif(MainMenu == 8) then if(Speed > 0.02 ) then Speed = Speed - 0.01; else Speed=0.01 end
                                elseif(MainMenu==0 and ElementPosList.pos > 0)then
                                        ElementPosList.pos = ElementPosList.pos-1;
                                elseif(SubMenu == 4 and MainMenu == 3)then
                                   if(DesignHighOrderLpf.yAxis==0 and DesignHighOrderLpf.Fs > 1 and DesignHighOrderLpf.Fs > DesignHighOrderLpf.Fp ) then  DesignHighOrderLpf.Fs = DesignHighOrderLpf.Fs - 1; 
                                   elseif(DesignHighOrderLpf.yAxis==1 and DesignHighOrderLpf.Fp > 1 ) then  DesignHighOrderLpf.Fp = DesignHighOrderLpf.Fp - 1; 
                                   elseif(DesignHighOrderLpf.yAxis==2 and DesignHighOrderLpf.Amin > 1 and DesignHighOrderLpf.Amin > DesignHighOrderLpf.Amax) then  DesignHighOrderLpf.Amin = DesignHighOrderLpf.Amin - 1; 
                                   elseif(DesignHighOrderLpf.yAxis==3 and DesignHighOrderLpf.Amax >1 ) then  DesignHighOrderLpf.Amax = DesignHighOrderLpf.Amax - 1; 
                                   elseif(DesignHighOrderLpf.yAxis==4 and DesignHighOrderLpf.k > 1) then  DesignHighOrderLpf.k = DesignHighOrderLpf.k - 1; 
                                   elseif(DesignHighOrderLpf.yAxis==5 and tonumber(DesignHighOrderLpf.Capacitor)-0.000000000001 > 0 )then DesignHighOrderLpf.Capacitor = tostring(DesignHighOrderLpf.Capacitor - 0.000000000001);end
                                   if(DesignHighOrderLpf.yAxis~=4)then DesignHighOrderLpf.k = 1;end
                                elseif(SubMenu == 4 and MainMenu == 6) then
                                    if(VectorSize > 0 ) then VectorSize = VectorSize-1;  IP_AddressFlag = false ; end

                                elseif(MainMenu == 5 and SubMenu == 6 )then 
                                                if(not tonumber(PeriodicTableUnit) or tonumber(PeriodicTableUnit) < 2 ) then 
                                                   PeriodicTableUnit = 119;
                                                   end
                                                PeriodicTableUnit = tonumber(PeriodicTableUnit) - 1 ;
                                elseif(MainMenu == 6 and SubMenu == 6)then
                                    if(Angle.Type == 0 and Angle.Degree > 1) then      Angle.Degree = Angle.Degree - 1;
                                    elseif(Angle.Type == 1 and Angle.Height >1 ) then  Angle.Height = Angle.Height - 1 ;
                                    elseif(Angle.Type == 2 and Angle.Width>1) then  Angle.Width = Angle.Width  - 1 ;
                                    end
                                elseif(MainMenu == 6 and SubMenu == 2) then 
                                                cursor.hide();
                                                if(GraphingFlag) then 
                                                    GraphingPageIndexForTwoVectorGraph = GraphingPageIndexForTwoVectorGraph + 1;
                                                if(GraphingPageIndexForTwoVectorGraph > 3 ) then GraphingPageIndexForTwoVectorGraph = 1; end
                                                else
                                                if(TwoVectors.XAxis > 0) then TwoVectors.XAxis = TwoVectors.XAxis - 1 ; end
                                                end
                                 elseif(MainMenu == 6 and SubMenu == 3)then if(VectorValues[VectorSize]/1 >= 1 ) then VectorValues[VectorSize] = VectorValues[VectorSize] - 1 ; end
                                 elseif(FormulaFlag_enter and Enter_Flag_Page > 1) then Enter_Flag_Page = Enter_Flag_Page-1;
                                 elseif ( MainMenu == 6 and SubMenu == 1 and VectorParts.Index > 1 ) then VectorParts.Index = VectorParts.Index-1;
                                 elseif MainMenu == 4 and SubMenu == 1 then                                   
                                    if( ResistorType == 5) then VectorValues[VectorSize] = string.format("%.0f",VectorValues[VectorSize]-1) 
                                    elseif( X_Dimenstion > 1 ) then X_Dimenstion=X_Dimenstion-1;
                                    end
                                 elseif VectorSize == ic then
                                    if(MainMenu == 1) then VectorValues[ic] = string.format("%.3f",VectorValues[ic]-.001);
                                    else VectorValues[ic] = string.format("%.0f",VectorValues[ic]-1000); end    
                                 
                                 elseif MainMenu == 4 and SubMenu == 3 then    
                                        if(VectorSize == c1) then CurrentDirectionflg = not CurrentDirectionflg;
                                        elseif ( VectorSize == c2) then SurfaceDirectionflg = not SurfaceDirectionflg
                                        elseif(VectorValues[VectorSize] - 1 >= 0) then  VectorValues[VectorSize] = VectorValues[VectorSize]-1;
                                        end
                                 elseif VectorSize == rl then VectorValues[rl] = string.format("%.0f",VectorValues[rl]-100);   
                                 elseif VectorSize > 5  then VectorValues[VectorSize] = string.format("%.9f",VectorValues[VectorSize]-.0000001)
                                 elseif(MainMenu == 4 and SubMenu == 2) then
                                         if(X_Dimenstion > 1)then X_Dimenstion = X_Dimenstion - 1; end
                                 elseif(VectorValues[VectorSize]/0 > 0 ) then VectorValues[VectorSize] = string.format("%.0f",VectorValues[VectorSize]-1);                                      
                                 end                             
screen:invalidate();
end

function on.help() tab = not tab ; screen:invalidate(); end

function on.backtabKey()
ElementPosList.size,ElementPosList.pos= -1,-1;
end

function on.backspaceKey(char)   
    if(MainMenu == 0 and ElementPosList.TempTxt:len() > 0)then
        
        ElementPosList.TempTxt = ElementPosList.TempTxt:sub(0,-2)
    elseif(SubMenu == 4 and MainMenu == 3)then
        
        if(DesignHighOrderLpf.yAxis==0 ) then 
            DesignHighOrderLpf.Fs = tonumber(tostring(DesignHighOrderLpf.Fs):sub(0,-2));
        elseif(DesignHighOrderLpf.yAxis==0 ) then 
                        DesignHighOrderLpf.Fs = tonumber(tostring(DesignHighOrderLpf.Fs):sub(0,-2));
                        DesignHighOrderLpf.Fp = DesignHighOrderLpf.Fs;   
        elseif(DesignHighOrderLpf.yAxis==1) then 
            DesignHighOrderLpf.Fp = tonumber(tostring(DesignHighOrderLpf.Fp):sub(0,-2));

        elseif(DesignHighOrderLpf.yAxis==2  ) then DesignHighOrderLpf.Amin = tonumber(tostring(DesignHighOrderLpf.Amin):sub(0,-2));
        elseif(DesignHighOrderLpf.yAxis==3 ) then DesignHighOrderLpf.Amax = tonumber(tostring(DesignHighOrderLpf.Amax):sub(0,-2));
        elseif(DesignHighOrderLpf.yAxis==5 and DesignHighOrderLpf.Capacitor:len() > 2) then DesignHighOrderLpf.Capacitor = (tostring(DesignHighOrderLpf.Capacitor):sub(0,-2));
        end
       
       
        if DesignHighOrderLpf.Fs == nil or DesignHighOrderLpf.Fp == nil then 
            DesignHighOrderLpf.Fs = 0 ;
            DesignHighOrderLpf.Fp = 0 ;
        elseif DesignHighOrderLpf.Amax == nil then DesignHighOrderLpf.Amax = 0 ;
        elseif DesignHighOrderLpf.Amin == nil then DesignHighOrderLpf.Amin = 0 ;
        end
    
    elseif(MainMenu == 6 and SubMenu == 4) then 
            if(VectorSize == 4)then 
            else
                if(IP_Address[VectorSize]:len()>0) then 
                    IP_Address[VectorSize] = IP_Address[VectorSize]:sub(0,-2); 
                end
                if(IP_Address[VectorSize]:len() == 0)then 
                    IP_AddressFlag = false; 
                end 
            end 
    elseif(MainMenu == 6 and SubMenu == 2)then 
                        if(TwoVectors.YAxis) then if(TwoVectors.Vector_A[TwoVectors.XAxis]:len()>0) then TwoVectors.Vector_A[TwoVectors.XAxis] =  TwoVectors.Vector_A[TwoVectors.XAxis]:sub(0,-2); end
                        elseif(not TwoVectors.YAxis) then if(TwoVectors.Vector_B[TwoVectors.XAxis]:len()>0) then TwoVectors.Vector_B[TwoVectors.XAxis] =  TwoVectors.Vector_B[TwoVectors.XAxis]:sub(0,-2);end
                        end
    
    elseif    (MainMenu == 5 and SubMenu == 6)then 
             if(string.len(tostring(PeriodicTableUnit)) > 0) then PeriodicTableUnit = tostring(PeriodicTableUnit):sub(0,-2); end
                
    elseif    (MainMenu == 6 and SubMenu == 1)then 
            if(VectorParts.Index == 1) then 
                if(string.len(VectorParts.x) > 0) then VectorParts.x = VectorParts.x:sub(0,-2); end
            elseif(VectorParts.Index ==2) then 
                if(string.len(VectorParts.y) > 0) then VectorParts.y = VectorParts.y:sub(0,-2); end
            else 
                if(string.len(VectorParts.z) > 0) then VectorParts.z = VectorParts.z:sub(0,-2); end
            end  
            
            
    elseif(MainMenu == 4 and SubMenu == 2) then
            if(tostring(Capacitors[X_Dimenstion-1]):len() > 0)then Capacitors[X_Dimenstion-1] = tostring(Capacitors[X_Dimenstion-1]):sub(0,-2); end
                            
    elseif( MainMenu == 4 and SubMenu == 1 and ResistorType == 4)then
    if(string.len(SMDResistor) > 0) then SMDResistor = SMDResistor:sub(0,-2);end
     elseif(MainMenu == 4 and SubMenu == 3 and VectorSize == 5) then
        if(string.len(tostring(VectorValues[VectorSize])) > 1) then VectorValues[VectorSize] = (tostring(VectorValues[VectorSize]):sub(0,-2));
              else VectorValues[VectorSize] = ""; end
    else if(string.len(tostring(VectorValues[VectorSize])) > 1) then VectorValues[VectorSize] = (tostring(VectorValues[VectorSize]):sub(0,-2));
         else VectorValues[VectorSize] = 0; end
    end ;
    screen:invalidate();
end



function on.charIn(char)         
        if MainMenu == 0 then -- If Order 1 
             ElementPosList.TempTxt = ElementPosList.TempTxt .. char;
        elseif(MainMenu == 9)then   -- elseIf Order 1 
            if(SubMenu == 9) then -- If Order 2
                if(char == '+') then -- If Order 3
                    image_Viewer_number.Number  = image_Viewer_number.Number + 1  ;
                elseif(char == '-') then -- elseIf Order 3
                    image_Viewer_number.Number  = image_Viewer_number.Number - 1  ;
                end -- endof -- If Order 3
            end --endof -- If Order 2
            
        elseif(MainMenu == 3)then -- elseIf Order 1 
            if(SubMenu == 4) then -- If Order 2
                if((string.byte(char) >= 0x30 and string.byte(char) <= 0x39))then -- If Order 3
                    if(DesignHighOrderLpf.yAxis==0) then DesignHighOrderLpf.Fs = tonumber(DesignHighOrderLpf.Fs..char);-- If Order 4
                    elseif(DesignHighOrderLpf.yAxis==1) then -- elseIf Order 4
                            if(DesignHighOrderLpf.Fp * 10 + tonumber(char) <= DesignHighOrderLpf.Fs)then -- If Order 5
                                 DesignHighOrderLpf.Fp = tonumber(DesignHighOrderLpf.Fp..char);
                            else DesignHighOrderLpf.Fp = tonumber(DesignHighOrderLpf.Fp..char); -- else Order 5
                                 DesignHighOrderLpf.Fs = DesignHighOrderLpf.Fp;
                            end -- endof -- if Order 5
                    elseif(DesignHighOrderLpf.yAxis==2 and DesignHighOrderLpf.Amin *10 + tonumber(char) < 9999) then -- elseif Order 4
                            DesignHighOrderLpf.Amin = tonumber(DesignHighOrderLpf.Amin..char);
                    elseif(DesignHighOrderLpf.yAxis==3 and DesignHighOrderLpf.Amax *10 + tonumber(char) < 9999) then -- elseif Order 4
                            DesignHighOrderLpf.Amax = tonumber(DesignHighOrderLpf.Amax..char);
                    elseif(DesignHighOrderLpf.yAxis==5)then -- elseif Order 4
                            DesignHighOrderLpf.Capacitor = tostring(DesignHighOrderLpf.Capacitor..char); 
                    end -- endof -- if Order 4
                    DesignHighOrderLpf.k = 1;
                else -- else Order 3
                    if(char == "x")then -- IF Order 4
                        DesignHighOrderLpf.xAxis=0;
                        DesignHighOrderLpf.k = 1 ;
                    elseif(char == "y")then -- elseIF Order 4
                        DesignHighOrderLpf.xAxis=1;
                        DesignHighOrderLpf.k = 1 ;
                    elseif(char == "z")then-- elseIF Order 4
                        DesignHighOrderLpf.xAxis=2;
                        DesignHighOrderLpf.k = 1 ;
                    elseif char == "." then -- elseIF Order 4
                        if(DesignHighOrderLpf.yAxis==2 ) then 
                                DesignHighOrderLpf.Amin = (DesignHighOrderLpf.Amin..char); -- IF Order 5
                        elseif(DesignHighOrderLpf.yAxis==3 ) then 
                                DesignHighOrderLpf.Amax = (DesignHighOrderLpf.Amax..char); -- elseIF Order 5
                        end -- endof -- if Order 5           
                    end -- endof -- if Order 4                    
                end -- endof -- if Order 3
            end -- endof -- If Order 2
            
        elseif(MainMenu == 6) then -- elseIf Order 1 
            if(SubMenu == 1)      then  -- IF Order 2
               if(char == 'c')       then -- IF Order 3
                    if(VsystemConvertTo)then -- IF Order 4
                        Copy("r:="..strClynd.x..",\nθ:="..strClynd.y..",\nz:="..strClynd.z);
                    else 
                        Copy("r := "..strSphere.r..",\nθ:="..strSphere.theta..",\nφ:="..strSphere.phi);
                    end
                    var.store("f","r:"..strSphere.r.."\nθ:"..strSphere.theta);
               elseif(VectorParts.Index == 1) then 
                    VectorParts.x = VectorParts.x..char;
               elseif(VectorParts.Index == 2) then 
                    VectorParts.y = VectorParts.y..char;
               else 
                    VectorParts.z = VectorParts.z..char;
               end
            elseif(SubMenu == 2) then -- elseIF Order 2
               cursor.hide();
               if(TwoVectors.YAxis) then -- IF Order 3
                    TwoVectors.Vector_A[TwoVectors.XAxis] =  TwoVectors.Vector_A[TwoVectors.XAxis] .. char;
               elseif(not TwoVectors.YAxis) then 
                    TwoVectors.Vector_B[TwoVectors.XAxis] =  TwoVectors.Vector_B[TwoVectors.XAxis] .. char;                              
               end
            elseif(SubMenu == 4) then
                if((string.byte(char) >= 0x30 and string.byte(char) <= 0x39)) then -- IF Order 3
                    if(IP_AddressFlag) then -- IF Order 4
                        if(VectorSize < 4)then -- IF Order 5
                             if(tonumber(IP_Address[VectorSize])*10+tonumber(char) < 256)then -- IF Order 6
                                    IP_Address[VectorSize] = IP_Address[VectorSize]  .. char; end
                        else if(tonumber(IP_Address[VectorSize])*10+tonumber(char) < 33)then  -- elseIF Order 6
                                    IP_Address[VectorSize] = IP_Address[VectorSize]  .. char; end
                            end
                    else 
                         if(VectorSize == 4) then -- IF Order 5
                            if(tonumber(IP_Address[VectorSize])*10+tonumber(char) < 33)then 
                                    IP_Address[VectorSize] = IP_Address[VectorSize]  .. char; 
                            else    IP_Address[VectorSize] = char;
                            end
                         else IP_Address[VectorSize] = char; IP_AddressFlag = true;
                         end
                    end
                end
            
            elseif ((string.len(tostring(VectorValues[VectorSize])) > 0 and ((char == '.' and string.find(tostring(VectorValues[VectorSize]) ,'%.',0) == nil) or (string.byte(char) <= 0x39 and string.byte(char) >= 0x30)))) then
                        VectorValues[VectorSize] = tostring(VectorValues[VectorSize]..char);
            end
                        
            GraphingFlag = false;           
            cursor.hide();            
        elseif(MainMenu == 5 and SubMenu == 6)then 
            if(tostring(PeriodicTableUnit):len() < 3 and (string.byte(char) >= 0x30 and string.byte(char) <= 0x39 ) or (string.byte(char) >= 0x61 and string.byte(char) <= 0x87))then
               if(not tonumber(PeriodicTableUnit))then 
                        PeriodicTableUnit = PeriodicTableUnit .. char
               elseif(tonumber(PeriodicTableUnit)* 10 + tonumber(char) < 119) then PeriodicTableUnit = PeriodicTableUnit .. char end
               end                   
        elseif    (MainMenu == 4 and SubMenu == 7 and char == "c") then Copy(Galphabet.LowerCase[GreekIndex+GreekPage]);
        elseif    (MainMenu == 4 and SubMenu == 5) then 
        
                    if(char == "c") then CopyConstant(PhysicsConstants.ConstantIndex + PhysicsConstants.Page*PhysicsConstants.MaxPage) ;
                    elseif(char == "+" and PhysicsConstants.Page < PhysicsConstants.MaxPage) then PhysicsConstants.Page = PhysicsConstants.Page+1;
                    elseif(char == "-" and PhysicsConstants.Page > 0)                        then PhysicsConstants.Page = PhysicsConstants.Page-1;
                    
                    end
        elseif    (MainMenu == 5 and SubMenu == 5) then 
                    
                    if(char == "+" and quantity.page < quantity.maxpage) then quantity.page = quantity.page+1;
                    elseif(char == "-" and quantity.page > 0)   then quantity.page = quantity.page-1;
                    
                    end                    
                     
        elseif( MainMenu == 4 and SubMenu == 4 and char == "-" ) then negative_flg = not negative_flg;
        elseif( MainMenu == 4 and SubMenu == 1 and char == "-" and Level > 0)then Level = Level-1;
        elseif( MainMenu == 4 and SubMenu == 1 and char == "+" and Level < 3)then Level = Level+1;
        elseif( MainMenu == 4 and SubMenu == 1 and char == " " and ResistorType == 5)then if(ResistanceCalc.Output == 0) then ResistanceCalc.Output = 3;else ResistanceCalc.Output = ResistanceCalc.Output - 1 ;end 
        elseif( MainMenu == 4 and SubMenu == 1 and ResistorType == 4 )then
            if(string.len(SMDResistor) < 4 and 
              ((      ((char == 'r' and string.find(SMDResistor,'r',0) == nil ) 
                      or (char =="z" or char =="y" or char =="r" or char =="x" or char =="s" or char =="a" or char =="b" or char =="h" or char =="c" or char =="d" or char =="e" or char =="f")
                      )
                      and (string.len(SMDResistor) < 3 and string.len(SMDResistor) > 1 and SMDResistor:sub(2,2) ~= 'r') )
                      or (((char == 'r' and string.find(SMDResistor,'r',0) == nil) and (string.len(SMDResistor) < 3 and string.len(SMDResistor) > 0)))
                      or
                      ( string.byte(char) <= 0x39 and
                        string.byte(char) >= 0x30)
                        )) 
               then SMDResistor = SMDResistor..char 
               end
        elseif(MainMenu == 4 and SubMenu == 3 and VectorSize == 5) then VectorValues[VectorSize] = tostring(VectorValues[VectorSize]..char);      
        elseif(MainMenu == 4 and SubMenu == 2) then
                if(char == '+') then 
                     if(Capacitors.Counter < 4) then Capacitors.Counter= Capacitors.Counter + 1; end
                elseif(char == '-') then 
                     if(Capacitors.Counter > 1) then Capacitors.Counter= Capacitors.Counter - 1; end
                else Capacitors[X_Dimenstion-1] = tostring(Capacitors[X_Dimenstion-1])..char;
                end
        elseif ((string.len(tostring(VectorValues[VectorSize])) > 0 and ((char == '.' and string.find(tostring(VectorValues[VectorSize]) ,'%.',0) == nil) or (string.byte(char) <= 0x39 and string.byte(char) >= 0x30)))) then
            VectorValues[VectorSize] = tostring(VectorValues[VectorSize]..char);
        end screen:invalidate() ;
end
        
        
        
function on.arrowUp(char)        
                                 if(SubMenu == 9 and MainMenu == 9)then
                                        image_Viewer_number.yAxis  = image_Viewer_number.yAxis  + 200 ;
                                 elseif(SubMenu == 4 and MainMenu == 3)then
                                        if(DesignHighOrderLpf.yAxis>0)then DesignHighOrderLpf.yAxis =DesignHighOrderLpf.yAxis-1;end
                                 elseif(not TwoVectors.YAxis and MainMenu == 6 and SubMenu ==2) then
                                    cursor.hide();
                                    TwoVectors.YAxis = true;
                             
                                 elseif (MainMenu == 6) then 
                                        if(SubMenu == 1) then                             VsystemConvertTo = not VsystemConvertTo;
                                        elseif(SubMenu == 3 and  VectorSize > 0) then     VectorSize = VectorSize-1;
                                        elseif(SubMenu == 6)then                          if(Angle.Type>0) then Angle.Type = Angle.Type - 1;end
                                        end
                                 elseif(MainMenu == 4)then
                                                if SubMenu == 1 then 
                                                     if ResistorType == 1 then
                                                         if X_Dimenstion > 1 and X_Dimenstion < 4 and Resistor4Columns[X_Dimenstion] > 1 then Resistor4Columns[X_Dimenstion]=Resistor4Columns[X_Dimenstion]-1;
                                                         elseif X_Dimenstion == 1 and Resistor4Columns[X_Dimenstion] > 2 then Resistor4Columns[X_Dimenstion]=Resistor4Columns[X_Dimenstion]-1;
                                                         elseif X_Dimenstion == 4 and Resistor4Columns[X_Dimenstion] > 1 then Resistor4Columns[X_Dimenstion] = Resistor4Columns[X_Dimenstion]-1; end
                                                     elseif ResistorType == 2 then
                                                         if X_Dimenstion > 1 and X_Dimenstion < 5 and Resistor5Columns[X_Dimenstion] > 1 then Resistor5Columns[X_Dimenstion]=Resistor5Columns[X_Dimenstion]-1;
                                                         elseif X_Dimenstion == 1 and Resistor5Columns[X_Dimenstion] > 2 then Resistor5Columns[X_Dimenstion]=Resistor5Columns[X_Dimenstion]-1;
                                                         elseif X_Dimenstion == 5 and Resistor5Columns[X_Dimenstion] > 1 then Resistor5Columns[X_Dimenstion] = Resistor5Columns[X_Dimenstion]-1; end
                                                     elseif ResistorType == 3 then
                                                         if X_Dimenstion > 1 and X_Dimenstion < 7 and Resistor6Columns[X_Dimenstion] > 1 then Resistor6Columns[X_Dimenstion]=Resistor6Columns[X_Dimenstion]-1;
                                                         elseif X_Dimenstion == 1 and Resistor6Columns[X_Dimenstion] > 2 then Resistor6Columns[X_Dimenstion]=Resistor6Columns[X_Dimenstion]-1;
                                                         elseif X_Dimenstion == 5 and Resistor6Columns[X_Dimenstion] > 1 then Resistor6Columns[X_Dimenstion] = Resistor6Columns[X_Dimenstion]-1; end 
                                                     elseif ResistorType == 5 and VectorSize > 0 then VectorSize = VectorSize-1;
                                                     end
                                                elseif(SubMenu == 7 or SubMenu == 6)then 
                                                     if    ( GreekIndex > 1) then GreekIndex = GreekIndex - 1;
                                                     elseif( GreekPage  > 0) then GreekPage = GreekPage -1;
                                                     end
                                                elseif(SubMenu == 5 )then 
                                                     if(PhysicsConstants.ConstantIndex > 1) then  PhysicsConstants.ConstantIndex = PhysicsConstants.ConstantIndex - 1;
                                                     elseif(PhysicsConstants.Page > 0) then 
                                                                                                  PhysicsConstants.Page = PhysicsConstants.Page - 1 ;
                                                                                                  PhysicsConstants.ConstantIndex = PhysicsConstants.ConstantIndexMax;
                                                                                                  end
                                                end                                              
                                 elseif(MainMenu == 5 and SubMenu == 5 and quantity.index > 1)then quantity.index = quantity.index - 1;
                                 elseif MainMenu == 8 and SubMenu == 2 then  Bvariable = Bvariable + 1 ;   
                                 elseif VectorSize > 0 then VectorSize = VectorSize-1; 
                                 
                                 end;
 screen:invalidate();
 end
                                


function on.arrowDown(char)      
                                 if(SubMenu == 9 and MainMenu == 9)then
                                        image_Viewer_number.yAxis  = image_Viewer_number.yAxis  - 200 ;
                                 elseif(SubMenu == 4 and MainMenu == 3)then
                                        if(DesignHighOrderLpf.yAxis<5)then DesignHighOrderLpf.yAxis = DesignHighOrderLpf.yAxis+1;end
                                 elseif(MainMenu == 6 and SubMenu == 2 and TwoVectors.YAxis) then
                                            cursor.hide();
                                            TwoVectors.YAxis = false ;
                                 elseif(MainMenu == 4 and (SubMenu == 7 or SubMenu == 6))then 
                                            if    ( GreekIndex < 18) then GreekIndex = GreekIndex + 1;
                                            elseif( GreekPage  < 6) then GreekPage = GreekPage +1;
                                            end
                                 elseif (MainMenu == 6) then
                                    if(SubMenu == 1) then                             VsystemConvertTo = not VsystemConvertTo;
                                    elseif(SubMenu == 3 and  VectorSize < max ) then  VectorSize = VectorSize+1;
                                    elseif(SubMenu == 6)then                          if(Angle.Type<2) then Angle.Type = Angle.Type + 1;end
                                    end
                                 
                                 elseif(MainMenu == 4 and SubMenu == 5)then 
                                        if(PhysicsConstants.ConstantIndex < PhysicsConstants.ConstantIndexMax) then 
                                                PhysicsConstants.ConstantIndex = PhysicsConstants.ConstantIndex +1;
                                        elseif(PhysicsConstants.Page < PhysicsConstants.MaxPage) then 
                                                PhysicsConstants.Page = PhysicsConstants.Page +1 ;
                                                PhysicsConstants.ConstantIndex = 1;
                                                end
                                 elseif(MainMenu == 5 and SubMenu == 5 and quantity.index < quantity.maxindex)then quantity.index = quantity.index +1;
                                 elseif MainMenu == 4 and SubMenu == 1 then
                                     if ResistorType == 1 then
                                         if X_Dimenstion < 3 and Resistor4Columns[X_Dimenstion] < 10 then Resistor4Columns[X_Dimenstion]=Resistor4Columns[X_Dimenstion]+1;
                                         elseif X_Dimenstion == 3 and Resistor4Columns[X_Dimenstion] < 12 then Resistor4Columns[X_Dimenstion]=Resistor4Columns[X_Dimenstion]+1; 
                                         elseif X_Dimenstion == 4 and Resistor4Columns[X_Dimenstion] < 7 then Resistor4Columns[X_Dimenstion] = Resistor4Columns[X_Dimenstion]+1; end
                                     elseif ResistorType == 2 then
                                         if X_Dimenstion < 4 and Resistor5Columns[X_Dimenstion] < 10 then Resistor5Columns[X_Dimenstion]=Resistor5Columns[X_Dimenstion]+1;
                                         elseif X_Dimenstion == 4 and Resistor5Columns[X_Dimenstion] < 12 then Resistor5Columns[X_Dimenstion]=Resistor5Columns[X_Dimenstion]+1; 
                                         elseif X_Dimenstion == 5 and Resistor5Columns[X_Dimenstion] < 7 then Resistor5Columns[X_Dimenstion] = Resistor5Columns[X_Dimenstion]+1; end
                                     elseif ResistorType == 3 then
                                          if X_Dimenstion < 4 and Resistor6Columns[X_Dimenstion] < 10 then Resistor6Columns[X_Dimenstion]=Resistor6Columns[X_Dimenstion]+1;
                                          elseif X_Dimenstion == 4 and Resistor6Columns[X_Dimenstion] < 12 then Resistor6Columns[X_Dimenstion]=Resistor6Columns[X_Dimenstion]+1; 
                                          elseif X_Dimenstion == 5 and Resistor6Columns[X_Dimenstion] < 7 then Resistor6Columns[X_Dimenstion] = Resistor6Columns[X_Dimenstion]+1;
                                          elseif X_Dimenstion == 6 and Resistor6Columns[X_Dimenstion] < 6 then Resistor6Columns[X_Dimenstion] = Resistor6Columns[X_Dimenstion]+1;
                                          end
                                    elseif ResistorType == 5 and VectorSize < max then VectorSize = VectorSize+1;
                                    end
                                 
                                 elseif MainMenu == 8 and SubMenu == 2  and Bvariable > 0 then  Bvariable = Bvariable - 1 ; 
                                 elseif VectorSize < max then VectorSize = VectorSize+1; end 
screen:invalidate();
end











menu={
	{"Amplifiers",
		{"Common Emitter Design",   function() tab = false; MainMenu = 1; SubMenu = 1; baseHigh = 0;max =13; VectorValues[beta] = "360"; VectorValues[vcc] = "15"; VectorSize = 0; VectorValues[ic] = ".005"; VectorValues[rl] = "12000"; VectorValues[rs] = "50"; VectorValues[av] = "20"; screen:invalidate(); timer.stop();end },
		{"Common Collector Design", function() tab = false; MainMenu = 1; SubMenu = 2; baseHigh = 0;max = 4; VectorValues[beta] = "360"; VectorValues[vcc] = "15"; VectorSize = 0; VectorValues[ic] = ".005"; VectorValues[rl] = "12000"; VectorValues[rs] = "50"; VectorValues[av] = "20"; screen:invalidate(); timer.stop();end },
		{"Common Base Design",      function() tab = false; MainMenu = 1; SubMenu = 3; baseHigh = 0;max = 4; VectorValues[beta] = "360"; VectorValues[vcc] = "15"; VectorSize = 0; VectorValues[ic] = ".005"; VectorValues[rl] = "12000"; VectorValues[rs] = "50"; VectorValues[av] = "20"; screen:invalidate(); timer.stop();end },
		"-",
		{"BJT Comparison Table",    function() tab = false; MainMenu = 1; SubMenu = 4; screen:invalidate(); timer.stop(); end},    
		},
		
	{"Oscillators",
		{"Astable Multivibrator ",  function() tab = false; MainMenu = 2 ; VectorSize = 0; SubMenu = 1 ; max = 3 ;screen:invalidate() timer.stop();end},
		{"Tuned Input Oscillator ", function() tab = false; MainMenu = 2 ; VectorSize = 0; SubMenu = 2 ; max = 6 ;screen:invalidate() timer.stop();end},
		},
																		
	{"Filters",
		{"First Order  : Low_Pass", function() max = 4 ; VectorSize = 0; tab = false MainMenu = 3 ; SubMenu = 1 ; VectorValues[beta] = "10000" VectorValues[vcc] = "0.000000000047" VectorValues[ic] = "50000" VectorValues[rl] = "12000" VectorValues[rs] = "50" VectorValues[av] = "20" screen:invalidate() timer.stop();end},
		{"First Order  : High_Pass",function() max = 4 ; VectorSize = 0; tab = false MainMenu = 3 ; SubMenu = 2 ; VectorValues[beta] = "10000" VectorValues[vcc] = "0.000000000047" VectorValues[ic] = "50000" VectorValues[rl] = "12000" VectorValues[rs] = "50" VectorValues[av] = "20" screen:invalidate()timer.stop(); end},
		{"Secnd Order  : Band_Pass",function() tab = false ; VectorSize = 0; MainMenu = 3 ; SubMenu = 3 ; screen:invalidate() timer.stop();end},
		{"ActiveFilters: Low Pass", function() tab = false ; VectorSize = 0; MainMenu = 3 ; SubMenu = 4 ; screen:invalidate() timer.stop();end},
		},

	{"Basic",
		{"Resistors",               function() Y_Dimenstion = 1 ; tab = false MainMenu = 4 ; SubMenu = 1 ; max = 4 ;VectorValues[2] = "10" VectorValues[3] = "55" VectorValues[0] = ".00001" VectorValues[1] = ".0002" VectorValues[4] = ".001" screen:invalidate()timer.stop();end},
		{"Capacitors",              function() tab = false MainMenu = 4 ; SubMenu = 2 ; screen:invalidate()timer.stop(); end},
		{"Inductors",               function() tab = false MainMenu = 4 ; SubMenu = 3 ;max = 6; screen:invalidate() timer.stop();end},
		},
		
	{"CheatSheet",
		{"SI Units",                function() VectorValues[beta] = "0" tab = false MainMenu = 4 ; SubMenu = 6 ; VectorSize = 0;  screen:invalidate()timer.stop(); end},
		{"DerivedSI",               function() MainMenu = 5 ; SubMenu = 5;screen:invalidate(); timer.stop();end},
		{"Constants",               function() VectorValues[beta] = "0" tab = false MainMenu = 4 ; SubMenu = 5 ; VectorSize = 0;  screen:invalidate()timer.stop(); end},
		{"GreekAlaphbet",           function() tab = false; MainMenu = 4 ; SubMenu = 7;  screen:invalidate() timer.stop();end},
		{"CoordinateSystems",       function() tab = false; MainMenu = 5 ; SubMenu = 4;  screen:invalidate() timer.stop();end},    
		{"PeriodicTable",           function() tab = false; MainMenu = 5 ; SubMenu = 6;  screen:invalidate() timer.stop(); end},    
		},
		
	{"Calculator",
		{"One Vector",              function() tab = false; MainMenu = 6; SubMenu = 1; max = 4; math.setEvalSettings({{3,2},{5, 2},{'Angle Mode','Degree'},}); 		 screen:invalidate(); timer.stop(); end},
		{"Two Vectors",             function() tab = false; MainMenu = 6; SubMenu = 2; max = 4; math.setEvalSettings({{1,4},{3,1},{5, 2},{'Angle Mode','Degree'},}); screen:invalidate(); timer.stop(); end},
		{"QuickCalc",               function() VectorValues[beta] = "0"; max = 1; tab = false; MainMenu = 4 ; SubMenu = 4 ; VectorSize = 0;  math.setEvalSettings({{5,1},}); screen:invalidate() timer.stop(); end},
		{"ElectroMagnetic",         function() VectorValues[beta] = "0"; max = 4; tab = false; MainMenu = 6 ; SubMenu = 3 ; VectorSize = 0;  VectorValues[0] = 1; VectorValues[2] = 300000000 ; screen:invalidate() timer.stop(); end},
		{"IP Subnetting",           function() VectorValues[beta] = "0"; max = 4; tab = false; MainMenu = 6 ; SubMenu = 4 ; VectorSize = 0 ; screen:invalidate();timer.stop(); end},
		{"Angle Calc",              function() VectorValues[beta] = "0"; max = 4; tab = false; MainMenu = 6 ; SubMenu = 6 ; VectorSize = 0 ; Angle.Height = 1 ; Angle.width = 1 ;screen:invalidate();timer.stop(); end},
		},    
	  
	{"Simulator",
		{"B Field and Current",		function() BDirection_flg = false; IDirection_flg = true;Bvariable=0; Ivariable=40; Speed=0.01; tab=false; MainMenu=8; SubMenu=1; TimeVariation=0; screen:invalidate();end},
		{"Travling Wave",			function() Bvariable = 0;Speed = 0.01;tab = false; MainMenu = 8 ; SubMenu = 2 ; TimeVariation = 0; screen:invalidate();end},
		{"C and L effect",			function() Bvariable = 0;Speed = 0.01;tab = false; MainMenu = 8 ; SubMenu = 3 ; screen:invalidate();end},
		},
		
	{"Developer",
		{"Circuit Designer",		function() tab = false; MainMenu = 0 ;screen:invalidate();end},
		{"About",					function() tab = true; screen:invalidate();end},    
		},  
}




toolpalette.register(menu)
toolpalette.enableCut(true)
toolpalette.enable("Basic","Capacitors",false);
--toolpalette.enable("Basic","Inductors",false);
--toolpalette.enable("Filters","First Order : High_Pass",false);
toolpalette.enable("Filters","Secnd Order  : Band_Pass",false);
--toolpalette.enable("CheatSheet","White",false);




function BJTComparisionTable(gc)
    gc:setColorRGB(0xFF00FF);
    gc:setFont("sansserif","r",16);
    gc:drawString("Bipolar Junction Transistor ",30,5);
    gc:setColorRGB(0xFF0000);
    gc:setFont("sansserif","r",6);
    --===================================================
    --- - - - - - - - -  Source Code  - - - - - - - - - -
    --===================================================
    gc:drawString("Characterstic",8,46);
    gc:drawString("InputImpedance",7,62);
    gc:drawString("OutputImpedance",7,73);
    gc:drawString("PhaseShift",7,84);
    gc:drawString("VoltageGain",7,94);
    gc:drawString("CurrentGain",7,104);
    gc:drawString("PowerGain",7,115);
    gc:drawString("Input",7,125);
    gc:drawString("Output",7,136);
    gc:drawString("Common",7,146);
    gc:drawString("MOSFET Equivlant",7,156);
    
    gc:setColorRGB(0xff00);
    gc:drawString("CB",123,46);
    gc:drawString("Low",121,62);
    gc:drawString("VeryHigh",112,74);
    gc:drawString("0°",127,84);
    gc:drawString("High",121,94);
    gc:drawString("Low",121,104);
    gc:drawString("Low",121,114);
    gc:drawString("Emitter",115,124);
    gc:drawString("Collector",110,134);
    gc:drawString("Base",118,144);
    gc:drawString("CG",122,154);
    gc:drawString("* Usually Used at RF and high Frequency Applications.",0,180);
    
    gc:setColorRGB(0x55ff);
    gc:drawString("CE",193,46);
    gc:drawString("Medium",184,62);
    gc:drawString("High",191,72);
    gc:drawString("180°",193,84);
    gc:drawString("Medium",184,94);
    gc:drawString("Medium",184,104);
    gc:drawString("VeryHigh",181,114);
    gc:drawString("Base",189,124);
    gc:drawString("Collector",180,134);
    gc:drawString("Emitter",185,144);
    gc:drawString("CS",193,154);
    
    gc:setColorRGB(0xffff00);
    gc:drawString("CC",252,46);
    gc:drawString("High",251,62);
    gc:drawString("Low",252,72);
    gc:drawString("0°",258,84);
    gc:drawString("Low",252,94);
    gc:drawString("Medium",245,114);
    gc:drawString("High",251,104);
    gc:drawString("Base",250,124);
    gc:drawString("Emitter",245,134);
    gc:drawString("Collector",240,144);
    gc:drawString("CD",252,154);
    gc:drawString("* Usually Used as Buffer(SafeGuard/Sheild/defence).",0,170);
    
    gc:setColorRGB(0xaaaaaa);
    gc:drawLine(-1,59,321,59);
    gc:drawLine(-1,170,326,170);
    gc:drawLine(100,59,100,170);
    gc:drawLine(0,44,320,44);
    ---------------------------------------------------
end


function HighOrderLpfchebyshev(gc)
        math.setEvalSettings({{3,3},{1,18},{4,1},{5, 3},})
        gc:setColorRGB(0xff0000)
        if(DesignHighOrderLpf.Fp ~= DesignHighOrderLpf.Fs) then HighOrderLpfchebyshevCalc() end
        frstOrderStage = true;
        if(not((DesignHighOrderLpf.nOrder == 1 and DesignHighOrderLpf.nOrder == DesignHighOrderLpf.k)or
             (DesignHighOrderLpf.nOrder%2 == 1 and math.ceil(DesignHighOrderLpf.nOrder/2) == DesignHighOrderLpf.k)))then
        gc:drawImage(Resistor,90,98);
        gc:drawLine(70,101,90,101);
        gc:drawLine(108,101,130,101);
        gc:drawLine(120,101,120,75);
        gc:drawLine(120,75,190,75);
        gc:drawLine(270,75,208,75);
        gc:drawLine(270,75,270,135);
        gc:drawLine(250,110,280,110);
        Elec.OpAmp(220,110,gc,true)
        gc:drawLine(149,101,220,101);
        gc:drawLine(210,120,220,120);
        gc:drawLine(210,135,210,120);
        gc:drawLine(270,135,200,135);
        gc:drawLine(179,120,179,150);
        gc:drawLine(179,108,179,100);
        gc:drawLine(175,108,185,108);
        gc:drawLine(175,120,185,120);
        Elec.gnd(175,150,gc);
        Elec.R(240,132,gc,0);
        Elec.R(180,132,gc,0);
        Elec.R(130,98,gc,0);
        Elec.C(190,72,gc,0);
        else
        gc:drawLine(274,120,206,120);
        gc:drawLine(206,96,206,140);
        gc:drawLine(274,140,206,140);
        gc:drawLine(222,96,206,96);
        Elec.OpAmp(222,86,gc);
        Elec.gnd(207,82,gc)
        gc:drawLine(211,77,222,77);
        gc:drawLine(252,86,274,86);
        Elec.C(225,117,gc,0);
        Elec.R(224,137,gc,0);
        gc:drawLine(274,86,274,140);
        gc:drawLine(210,96,130,96);
        Elec.R(162,93,gc,0);
        frstOrderStage = false
        end


        
        gc:setColorRGB(0x0088ff)
        gc:setFont("sansserif","r",6);

        if(DesignHighOrderLpf.yAxis==0)then gc:setColorRGB(0x998822) ;gc:drawString ( "fs", 5  , 20); gc:drawString ( "->      "..DesignHighOrderLpf.Fs, 5  , 10);
        else gc:setColorRGB(0x0088ff);gc:drawString ( "fs", 5  , 20);end
        if(DesignHighOrderLpf.yAxis==1)then gc:setColorRGB(0x998822) ;gc:drawString ( "fp", 5  , 30);  gc:drawString ( "->      "..DesignHighOrderLpf.Fp, 5  , 10);
        else gc:setColorRGB(0x0088ff);gc:drawString ( "fp", 5  , 30);end
        if(DesignHighOrderLpf.yAxis==2)then gc:setColorRGB(0x998822) ;gc:drawString ( "Amin", 5  , 40);  gc:drawString ( "->      "..DesignHighOrderLpf.Amin, 5  , 10);
        else gc:setColorRGB(0x0088ff);gc:drawString ( "Amin", 5  , 40);end
        if(DesignHighOrderLpf.yAxis==3)then gc:setColorRGB(0x998822) ;gc:drawString ( "Amax", 5  , 50);  gc:drawString ( "->      "..DesignHighOrderLpf.Amax, 5  , 10);
        else gc:setColorRGB(0x0088ff);gc:drawString ( "Amax", 5  , 50);end
        if(DesignHighOrderLpf.yAxis==4)then gc:setColorRGB(0x998822) ;gc:drawString ( "k                      ◀▶", 5  , 60); 
        else gc:setColorRGB(0x0088ff);gc:drawString ( "k                      ◀▶", 5  , 60);end
        if(DesignHighOrderLpf.yAxis==5)then gc:setColorRGB(0x998822) ;gc:drawString ( "C", 5  , 70); gc:drawString ( "->      "..DesignHighOrderLpf.Capacitor, 5  , 10);
        else gc:setColorRGB(0x0088ff);gc:drawString ( "C", 5  , 70);end
        
        gc:setColorRGB(0x00ff00)
        gc:drawString ( "nOrder", 5  , 80);
         
        
        gc:drawString ((DesignHighOrderLpf.nOrder), 35  , 80);
        gc:setColorRGB(0xffffff)
        gc:drawString (Size(DesignHighOrderLpf.Fs).."Hz", 35  , 20);
        gc:drawString (Size(DesignHighOrderLpf.Fp).."Hz", 35  , 30);
        gc:drawString (Size(DesignHighOrderLpf.Amin).."dB", 35  , 40);
        gc:drawString (Size(DesignHighOrderLpf.Amax).."dB", 35  , 50);
        gc:drawString (DesignHighOrderLpf.k, 35  , 60);
        gc:drawString (Size(DesignHighOrderLpf.Capacitor/1), 35  , 70);  
        
        if(DesignHighOrderLpf.Fp ~= DesignHighOrderLpf.Fs) then 
        
              if(DesignHighOrderLpf.xAxis==0)then 
                theta = (3.141592653589793238462643383279502884197169399375105820974944592307816406286208998628034825342117067/2)*(2*DesignHighOrderLpf.k-1)/DesignHighOrderLpf.nOrder
                pk = math.evalStr("−2*π*"..DesignHighOrderLpf.Fp..
                                  "*sin("..theta..")*sinh("..DesignHighOrderLpf.psi..")+*2*π*"..DesignHighOrderLpf.Fp..
                                  "cos("..theta..")*cosh("..DesignHighOrderLpf.psi..")");
                if(DesignHighOrderLpf.nOrder > 0) then 
                        gc:setColorRGB(0x9900)
                        gc:drawString ("Pole  "..pk, 5  , 200);
                        gc:setColorRGB(0xffff00)
                        
                        c = 1/DesignHighOrderLpf.Capacitor;
                        if(frstOrderStage)then
                            gc:drawString ( Size(DesignHighOrderLpf.Capacitor/1).."F", 185  , 60);
                            gc:drawString ( Size(DesignHighOrderLpf.Capacitor/1).."F", 165  , 108);
                        else
                            gc:drawString ( Size(DesignHighOrderLpf.Capacitor/1).."F", 220  , 105);
                        end
                        R = (math.evalStr("1/(approx(abs("..pk..")/"..c.."))"));
                        if(not tonumber(R)) then R = math.evalStr("approx("..R:gsub("e","")..")"); end
                        
                        if(frstOrderStage)then
                        if(tonumber(R)) then 
                                    gc:drawString ( Size(R/1).."Ω", 130  , 85);
                                    gc:drawString ( Size(R/1).."Ω", 85  , 105);
                        else        gc:drawString ( math.evalStr(R.."▶approxFraction(10)").."Ω" , 130  , 85); 
                                    gc:drawString ( math.evalStr(R.."▶approxFraction(10)").."Ω", 85  , 105);
                        end
                        
                        R1 = math.evalStr("approx("..R.."*((3*abs("..pk..")-2*real("..pk.."))/(abs("..pk..")-real("..pk.."))))");
                        if(not tonumber(R1)) then R1 = math.evalStr("approx("..R1:gsub("e","")..")"); end
                        if(tonumber(R1)) then 
                                    gc:drawString (Size(R1/1).."Ω", 183  , 137);
                        else        gc:drawString ( math.evalStr(R1.."▶approxFraction(10)").."Ω" , 183  , 173); 
                        end
                        
                        R2 = math.evalStr("approx(2*"..R1.."*(1-real("..pk..")/abs("..pk..")))");
                        if(frstOrderStage)then if(not tonumber(R2)) then R2 = math.evalStr("approx("..R2:gsub("e","")..")"); end
                        if(tonumber(R2)) then 
                                    gc:drawString (Size(R2/1).."Ω", 240  , 137);
                        else        gc:drawString ( math.evalStr(R2.."▶approxFraction(10)").."Ω" , 240  , 137); 
                        end
                        end
                        else gc:drawString ( Size(R/1).."Ω", 220  , 126);
                        end
                        gc:setColorRGB(0x888888)
                        gc:drawString ("k : " .. DesignHighOrderLpf.k..",".. DesignHighOrderLpf.nOrder - DesignHighOrderLpf.k+1, 5  , 100);
                        
                        if(DesignHighOrderLpf.nOrder%2 ~= 0) then
                                    if (DesignHighOrderLpf.k < DesignHighOrderLpf.nOrder/2) then
                                    gc:drawString ("Stage : " .. DesignHighOrderLpf.k, 5  , 110);
                                    else gc:drawString ("Stage : " .. DesignHighOrderLpf.nOrder - DesignHighOrderLpf.k+1, 5  , 110);  end
                        else
                                    if (DesignHighOrderLpf.k <= DesignHighOrderLpf.nOrder/2) then
                                    gc:drawString ("Stage : " .. DesignHighOrderLpf.k, 5  , 190);
                                    else gc:drawString ("Stage : " .. DesignHighOrderLpf.nOrder - DesignHighOrderLpf.k+1, 5  , 110);  end
                        end
                    
                        if(tonumber(R2) and tonumber(R1)) then gc:drawString ("K(DC Gain) : " .. (1 + R2/R1), 5  , 160); end
                        gc:drawString ("ε: " .. DesignHighOrderLpf.ee, 5  , 180);
                        gc:drawString ("ψ: " .. DesignHighOrderLpf.psi, 5  , 190);
                        gc:drawString ("α: " .. math.evalStr("10*log(1+"..DesignHighOrderLpf.ee.."*cosh("..DesignHighOrderLpf.nOrder.."*cosh("..tmp..")))"), 5  , 170);
                   end
                
               elseif(DesignHighOrderLpf.xAxis==1)then 
                                 theta = (3.141592653589793238462643383279502884197169399375105820974944592307816406286208998628034825342117067/2)*(2*DesignHighOrderLpf.k-1)/DesignHighOrderLpf.nOrder
                                 pk = math.evalStr("−"..DesignHighOrderLpf.psi..
                                                   "*sin("..theta..")+*"..DesignHighOrderLpf.psi..
                                                   "*cos("..theta..")");
                                 if(DesignHighOrderLpf.nOrder > 0) then 
                                         gc:setColorRGB(0x9900)
                                         gc:drawString ("Pole  "..pk, 5  , 200);
                                         gc:setColorRGB(0xffff00)
                                         
                                         c = 1/DesignHighOrderLpf.Capacitor;
                                         if(frstOrderStage)then
                                         gc:drawString ( Size(DesignHighOrderLpf.Capacitor/1).."F", 185  , 60);
                                         gc:drawString ( Size(DesignHighOrderLpf.Capacitor/1).."F", 165  , 108);
                                         else gc:drawString ( Size(DesignHighOrderLpf.Capacitor/1).."F", 220  , 105);
                                         end
                                         R = (math.evalStr("1/(approx(abs("..pk..")/"..c.."))"));
                                         if(not tonumber(R)) then R = math.evalStr("approx("..R:gsub("e","")..")"); end
                                         if(frstOrderStage)then
                                         if(tonumber(R)) then 
                                                     gc:drawString ( Size(R/1).."Ω", 130  , 85);
                                                     gc:drawString ( Size(R/1).."Ω", 85  , 105);
                                         else        gc:drawString ( math.evalStr(R.."▶approxFraction(10)").."Ω" , 130  , 85); 
                                                     gc:drawString ( math.evalStr(R.."▶approxFraction(10)").."Ω", 85  , 105);
                                         end
                                         else        gc:drawString ( Size(R/1).."Ω", 220  , 126);
                                         end
                                         if(frstOrderStage)then
                                         R1 = math.evalStr("approx("..R.."*((3*abs("..pk..")-2*real("..pk.."))/(abs("..pk..")-real("..pk.."))))");
                                         if(not tonumber(R1)) then R1 = math.evalStr("approx("..R1:gsub("e","")..")"); end
                                         if(tonumber(R1)) then 
                                                     gc:drawString (Size(R1/1).."Ω", 183  , 137);
                                         else        gc:drawString ( math.evalStr(R1.."▶approxFraction(10)").."Ω" , 183  , 137); 
                                         end
                                         
                                         R2 = math.evalStr("approx(2*"..R1.."*(1-real("..pk..")/abs("..pk..")))");
                                         if(not tonumber(R2)) then R2 = math.evalStr("approx("..R2:gsub("e","")..")"); end
                                         if(tonumber(R2)) then 
                                                     gc:drawString (Size(R2/1).."Ω", 246  , 137);
                                         else        gc:drawString ( math.evalStr(R2.."▶approxFraction(10)").."Ω" , 246  , 137); 
                                         end
                                         end
                                         gc:setColorRGB(0x888888)
                                         gc:drawString ("k : " .. DesignHighOrderLpf.k..",".. DesignHighOrderLpf.nOrder - DesignHighOrderLpf.k+1, 5  , 90);
                                         
                                         if(DesignHighOrderLpf.nOrder%2 ~= 0) then
                                                     if (DesignHighOrderLpf.k < DesignHighOrderLpf.nOrder/2) then
                                                     gc:drawString ("Stage : " .. DesignHighOrderLpf.k, 5  , 100);
                                                     else gc:drawString ("Stage : " .. DesignHighOrderLpf.nOrder - DesignHighOrderLpf.k+1, 5  , 100);  end
                                         else
                                                     if (DesignHighOrderLpf.k <= DesignHighOrderLpf.nOrder/2) then
                                                     gc:drawString ("Stage : " .. DesignHighOrderLpf.k, 5  , 100);
                                                     else gc:drawString ("Stage : " .. DesignHighOrderLpf.nOrder - DesignHighOrderLpf.k+1, 5  , 100);  end
                                         end
                                     
                                    if(tonumber(R2) and tonumber(R1)) then gc:drawString ("K(DC Gain) : " .. (1 + R2/R1), 5  , 160); end
                                    gc:drawString ("ε: " .. DesignHighOrderLpf.ee, 5  , 180);
                                    gc:drawString ("ψ: " .. DesignHighOrderLpf.psi, 5  , 190);
                                    gc:drawString ("α: " .. math.evalStr("10*log(1+"..DesignHighOrderLpf.ee.."*cosh("..DesignHighOrderLpf.nOrder.."*cosh("..tmp..")))"), 5  , 170);
                                    end -- end of order
                                
                  end-- end of xAxis conditional statement

               end 
        
            
        gc:setColorRGB(0x55ff55)
        if    (DesignHighOrderLpf.xAxis==0)then 
            gc:setFont("serif","b",10); 
            gc:drawString("Active Filter ChebyShev Design",115,20);
        elseif(DesignHighOrderLpf.xAxis==1)then 
            gc:setFont("serif","b",10); 
            gc:drawString("Active Filter ButterWorth Design",115,20);
            gc:setFont("sansserif","r",6); 
            gc:setColorRGB(0x555555)
            gc:drawString("The Tool Assumed You Inserted (ws,wp) As (fs,fp) (without 2π)",25,0);
        elseif(DesignHighOrderLpf.xAxis==2)then 
            gc:setFont("serif","b",10); 
            gc:drawString("Active Filter ButterWorth Design",115,20);
        end 
        
        gc:setFont("sansserif","r",6);
        gc:setColorRGB(0x555555);
        gc:drawRect(100,20,230,18)
        gc:drawRect(240,165,80,45)
        gc:setColorRGB(0x990099)
        gc:drawString ( "Press :", 242  , 165);
        gc:drawString ( "[x] : Chebyshev", 245 , 175);
        gc:drawString ( "[y] : ButterWorth", 245  , 185);
        gc:drawString ( "[z] : NotUsedYet", 245  , 195);
end
 
function HighOrderLpfchebyshevCalc()
        math.setEvalSettings({{1,4},{3,1},{5, 2},{'Angle Mode','Radian'},})
        if(DesignHighOrderLpf.xAxis==0)then 
                
                DesignHighOrderLpf.ee      = (math.evalStr("(10^("..(DesignHighOrderLpf.Amax).."/10)-1)^0.5"));
                if(not tonumber(DesignHighOrderLpf.ee)) then DesignHighOrderLpf.ee = math.evalStr("approx("..DesignHighOrderLpf.ee:gsub("e","")..")"); clipboard.addText(DesignHighOrderLpf.ee);end
                if(tonumber(DesignHighOrderLpf.Fs) > tonumber(DesignHighOrderLpf.Fp) and
                    tonumber(DesignHighOrderLpf.Fs) ~=0 and tonumber(DesignHighOrderLpf.Fp) ~=0)then tmp = DesignHighOrderLpf.Fs/DesignHighOrderLpf.Fp
                else tmp = 2;
                end
                if(tonumber(DesignHighOrderLpf.Amin) ~= 0 and tonumber(DesignHighOrderLpf.Amax) < tonumber(DesignHighOrderLpf.Amin) and  tonumber(DesignHighOrderLpf.Amax) ~= 0) then
                DesignHighOrderLpf.nOrder  = math.ceil(math.evalStr("approx(cosh(((".."10^("..(DesignHighOrderLpf.Amin).."/10)-1)/(10^("..DesignHighOrderLpf.Amax.."/10)-1))^0.5) / cosh("..tmp.."))"));
                else DesignHighOrderLpf.nOrder = 0;
                end
                DesignHighOrderLpf.psi    = math.evalStr("approx(sinh(1/"..DesignHighOrderLpf.ee..")*1/"..DesignHighOrderLpf.nOrder..")");
        elseif(DesignHighOrderLpf.xAxis==1)then 
                
                DesignHighOrderLpf.ee      = (math.evalStr("(10^("..(DesignHighOrderLpf.Amax).."/10)-1)^0.5"));
                if(not tonumber(DesignHighOrderLpf.ee)) then DesignHighOrderLpf.ee = math.evalStr("approx("..DesignHighOrderLpf.ee:gsub("e","")..")"); clipboard.addText(DesignHighOrderLpf.ee);end
                if(tonumber(DesignHighOrderLpf.Fs) > tonumber(DesignHighOrderLpf.Fp) and
                    tonumber(DesignHighOrderLpf.Fs) ~=0 and tonumber(DesignHighOrderLpf.Fp) ~=0)then tmp = DesignHighOrderLpf.Fs/DesignHighOrderLpf.Fp
                else tmp = 2;
                end
                if(tonumber(DesignHighOrderLpf.Amin) ~= 0 and tonumber(DesignHighOrderLpf.Amax) < tonumber(DesignHighOrderLpf.Amin) and  tonumber(DesignHighOrderLpf.Amax) ~= 0) then
                    DesignHighOrderLpf.nOrder  = math.ceil(math.evalStr("approx(log(((((".."10^("..(DesignHighOrderLpf.Amin).."/10)-1)/(10^("..DesignHighOrderLpf.Amax.."/10)-1))^0.5)),10) / log(("..tmp.."),10))"));
                else DesignHighOrderLpf.nOrder = 0;
                    end
                DesignHighOrderLpf.psi    = math.evalStr("approx((1/"..DesignHighOrderLpf.ee..")^(1/"..DesignHighOrderLpf.nOrder..")*2 * π * "..DesignHighOrderLpf.Fp..")");
                else
        end
end 
 
 
 
 
function IP_Subnetting(gc)
    gc:setColorRGB(0xffff00)
    if (VectorSize < 4) then
         gc:drawRect(40 + 60*VectorSize,53,55,12);
    else 
         gc:setFont("sansserif","r",6);
         gc:drawString( "* CIDR",280,30);
         gc:setFont("sansserif","r",11);
    end
    
    
    gc:setColorRGB(0xffffff)
    gc:drawString ( IP_Address[0].."."..IP_Address[1].."."..IP_Address[2].."."..IP_Address[3].." / ".. IP_Address[4] , 145 - 4*(IP_Address[0]:len() + IP_Address[1]:len() + IP_Address[2]:len() + IP_Address[3]:len() + IP_Address[4]:len()) , 10);
    gc:setFont("sansserif","r",9);
    gc:drawString ( toBitsOneByte(IP_Address[0]).."."..toBitsOneByte(IP_Address[1]).."."..toBitsOneByte(IP_Address[2]).."."..toBitsOneByte(IP_Address[3])  , 40  , 50);

    Class = tonumber(IP_Address[0]);
    if(Class and Class > 0 and Class < 128) then 
                gc:drawString ( "Class" , 40  , 80);
                gc:drawString ( ": A" , 120  , 80);
                gc:drawString ( "NetworktMask" , 40  , 95);
                gc:drawString ( ": 255.0.0.0" , 120  , 95);               
        TempCIDR = tonumber(IP_Address[4])
        Classification = "";
       
        for i=1,TempCIDR do
            Classification = Classification .. "n" ;
            if(i%8 == 0) then Classification= Classification.."."; end;
        end
        
        for i=TempCIDR+1,32 do
                    Classification = Classification .. "h" ;
                    if(i%8 == 0 and i < 32) then Classification= Classification.."."; end;
                end
            
        gc:drawString ( Classification, 40  , 60);
        gc:drawString ( "IP Type" , 40  , 155); 
                        
        if(tonumber (IP_Address[0]) == 10)then gc:drawString ( ": Private IP" , 120  , 155); 
        else                                    gc:drawString ( ": Public IP" , 120  , 155);
        end  
        
    elseif(Class and Class > 127 and Class < 192) then 
                gc:drawString ( "Class" , 40  , 80);
                gc:drawString ( ": B" , 120  , 80);
                gc:drawString ( "DefaultMask" , 40  , 95);
                gc:drawString ( ": 255.255.0.0" , 120  , 95);  
        TempCIDR = tonumber(IP_Address[4])
            Classification = "";
            for i=1,TempCIDR do
                Classification = Classification .. "n" ;
                if(i%8 == 0) then Classification= Classification.."."; end;
            end
            for i=TempCIDR+1,32 do
                        Classification = Classification .. "h" ;
                        if(i%8 == 0 and i < 32) then Classification= Classification.."."; end;
                    end
                
            gc:drawString ( Classification, 40  , 60);
            
        gc:drawString ( "IP Type" , 40  , 155);                 
        if(tonumber (IP_Address[0]) == 172 and (tonumber(IP_Address[1]) >= 16 and tonumber(IP_Address[1]) <= 31))then gc:drawString ( ": Private IP" , 120  , 155); 
        else                                    gc:drawString ( ": Public IP" , 120  , 155);
        end  
        
    elseif(Class and Class > 191 and Class < 224) then 
                gc:drawString ( "Class" , 40  , 80);
                gc:drawString ( ": C" , 120  , 80);
                gc:drawString ( "NetworkMask" , 40  , 95);
                
                ------------------------------------------------------------------ need to fixing
                TempCIDR = tonumber(IP_Address[4])
                Classification = "";
                netMask = "";
                
                for i=1,TempCIDR do
                    
                    if(i%8 == 0) then netMask= netMask.."."; end;
                end
                gc:drawString ( ": 255.255.255.0" , 120  , 95);  
                
                if(tonumber(IP_Address[4]) > 24) then gc:drawString(": "..tostring(2^(IP_Address[4] - 24)) ,120,140)
                else gc:drawString(": "..tostring(2^(0)),120,140);
                end
                ------------------------------------------------------------------
                
                for i=1,TempCIDR do
                    Classification = Classification .. "n" ;
                    if(i%8 == 0) then Classification= Classification.."."; end;
                end
                
                for i=TempCIDR+1,32 do
                            Classification = Classification .. "h" ;
                            if(i%8 == 0 and i < 32) then Classification= Classification.."."; end;
                        end
                    
                gc:drawString ( Classification, 40  , 60);
                gc:drawString ( "IP Type" , 40  , 155); 
                if(tonumber (IP_Address[1]) == 168)then gc:drawString ( ": Private IP" , 120  , 155); 
                else                                    gc:drawString ( ": Public IP" , 120  , 155);
                end  
                
    elseif(Class and Class > 223 and Class < 240) then
                gc:drawString ( "Class" , 40  , 80);
                gc:drawString ( ": D    multicast" , 120  , 80);
                gc:drawString ( "DefaultMask" , 40  , 95);
                gc:drawString ( ": Not Defined" , 120  , 95);
        else
                gc:drawString ( "Class" , 40  , 80);
                gc:drawString ( ": E    reserved" , 120  , 80);
                gc:drawString ( "DefaultMask" , 40  , 95);
                gc:drawString ( ": Not Defined" , 120  , 95);                
        end
    gc:drawString("CIDR",40,110);
    gc:drawString ( ": "..IP_Address[4] , 120  , 110);
    math.setEvalSettings({{5, 2}})    
    CIDR_string = CIDRfunc(IP_Address);
    gc:drawString("Mask",40,125);
    gc:drawString ( ": "..math.evalStr("0b"..CIDR_string:sub(1,8))
                             ..math.evalStr("0b"..CIDR_string:sub(9,16))
                             ..math.evalStr("0b"..CIDR_string:sub(17,24))
                             ..math.evalStr("0b"..CIDR_string:sub(25,32)):sub(1,math.evalStr("0b"..CIDR_string:sub(25,32)):len()-1), 120  , 125);
    gc:drawString("SubNetwoks " ,40,140);        
    
end

function CountOnesFor_IP(temp)
    count = 0;
    for i=0 , string.len(tostring(temp)) do
    if(string.sub(temp,i,i) == "1") then count = count + 1 ; end
    end

return count;
end




function CIDRfunc(IP)
    local Full_IP = toBitsOneByte(IP[0])..toBitsOneByte(IP[1])..toBitsOneByte(IP[2])..toBitsOneByte(IP[3]);
    if(tonumber(IP[4]))then
        local Temp_IP = "";
        for i=1,tonumber(IP[4])  do  Temp_IP = Temp_IP .. Full_IP:sub(i,i);  end
        for i=tonumber(IP[4]),32 do  Temp_IP = Temp_IP .."0"; end
        Full_IP = Temp_IP;
    end
   return Full_IP     
end


function toBitsOneByte(num)
    if(num:len() == 0) then return "00000000"; end
    local t = "";
    while tonumber(num) > 0 do
        rest=math.fmod(num,2)
        t=t..rest
        
        num=(num-rest)/2
    end
    if(negative_flg)then 
        for i = string.len(t),31 do
           t=t .."1"
        end
    else
       for i = string.len(t),31 do
       t=t .."0"
       end
    end
    local tt = ""
    
    for i = 0,8,1 do
           tt = tt..t:sub(i,i)
           --if (i%8 == 0) then tt = tt.. " " end
    end
    
    return string.reverse(tt)
end













function FrequencyCalc(gc)
    FrequencyCalcMath();
    gc:setColorRGB(0xffffff)
    gc:fillRect(0,0,320,240)
    gc:drawImage(rf,-3,152)
    InputString = "Frequency :";
    if(VectorSize == 1) then
        InputString = "WaveLength : ";
    elseif(VectorSize == 2) then
                InputString = "Phase velocity : ";
    elseif(VectorSize == 3) then
                        InputString = "PeriodTime :";
    elseif(VectorSize == 4) then
                                InputString = "Energy :";
    end
        
    gc:setColorRGB(0x4d4d4d)
    gc:fillRect(0,30,320,18)
    gc:fillRect(0,50,320,18)
    gc:fillRect(0,70,320,18)
    gc:fillRect(0,90,320,18)
    gc:fillRect(0,110,320,21)
    gc:setColorRGB(0x0000)
    gc:fillRect(0,28,320,2)
    gc:fillRect(0,48,320,2)
    gc:fillRect(0,68,320,2)
    gc:fillRect(0,88,320,2)
    gc:fillRect(0,108,320,2)
    gc:fillRect(0,131,320,2)
    
    gc:setFont("sansserif","r",9);
    gc:drawString(InputString,10,8);
    gc:drawString(VectorValues[VectorSize],120,8);
    gc:setColorRGB(0xcccccc)
    if(VectorSize == 0) then  gc:setColorRGB(0xffff00) end
    gc:drawString("Frequency :",10,30);
    gc:drawString(Size(VectorValues[0]/1) .. "Hz",120,30);
    gc:drawString(ElecrtricSize(VectorValues[0]/1) .. " Hz",210,30);
    
    gc:setColorRGB(0xcccccc)
    if(VectorSize == 1) then  gc:setColorRGB(0xffff00) end
    gc:drawString("WaveLength λ:",10,50);
    gc:drawString(Size(VectorValues[1]/1) .. "m",120,50);
    gc:drawString(ElecrtricSize(VectorValues[1]/1) .. " m",210,50);
    
    gc:setColorRGB(0xcccccc)
    if(VectorSize == 2) then  gc:setColorRGB(0xffff00) end
    gc:drawString("Phase velocity υp:",10,70);
    gc:drawString(Size(VectorValues[2]/1) .. "m/s",120,70);
    gc:drawString(ElecrtricSize(VectorValues[2]/1) .. " m/s",210,70);
    
    gc:setColorRGB(0xcccccc)
    if(VectorSize == 3) then  gc:setColorRGB(0xffff00) end
    gc:drawString("PeriodTime :",10,90);
    gc:drawString(Size(VectorValues[3]/1) .. "s",120,90);
    gc:drawString(ElecrtricSize(VectorValues[3]/1) .. " s",210,90);
    
    gc:setFont("sansserif","r",6);
    gc:setColorRGB(0xaaff)
    if(VectorSize == 4) then  gc:setColorRGB(0xffff00) end
    gc:drawString("Energy (eV):",10,109);
    gc:drawString(Size(VectorValues[4]/1) .. "eV",120,109);
    gc:drawString(ElecrtricSize(VectorValues[4]/1) .. " eV",210,109);
    
    
    --if(VectorSize == 4) then  gc:setColorRGB(0xff0000) end
    
    
    gc:drawString("Thats mean one mole of Particles equals to "..Size(VectorValues[4] * 96500) .. "J of Energy",10,119);
    gc:setFont("sansserif","r",6);
    gc:setColorRGB(0xff0000)
    if( VectorValues[0]/1 >= 3 ) then   
        if(VectorValues[0]/1 < 30)then
           gc:drawString("ITU:Extremely low frequency (ELF)",10,132);
           gc:drawString("IEEE:  -    ",10,142);
           gc:drawString("IEEE:  -    ",140,142);
        elseif(VectorValues[0]/1 < 300)then
           gc:drawString("ITU:Super Low Frequency (SLF)",10,132);
            gc:drawString("IEEE:  -    ",10,142);
            gc:drawString("IEEE:  -    ",140,142);
        elseif(VectorValues[0]/1 < 3000)then
           gc:drawString("ITU:Ultra Low Frequency (ULF)",10,132);
            gc:drawString("IEEE:  -    ",10,142);
            gc:drawString("IEEE:  -    ",140,142);
        elseif(VectorValues[0]/1 < 30000)then
           gc:drawString("ITU:Very Low Frequency (VLF)",10,132);
            gc:drawString("IEEE:  -    ",10,142);
            gc:drawString("IEEE:  -    ",140,142);
        elseif(VectorValues[0]/1 < 300000)then
           gc:drawString("ITU:Low Frequency (LF)",10,132);
            gc:drawString("IEEE:  -    ",10,142);
            gc:drawString("IEEE:  -    ",140,142);
        elseif(VectorValues[0]/1 < 3000000)then
           gc:drawString("ITU:Medium Frequency (MF)",10,132);
            gc:drawString("IEEE:  -    ",10,142);
            gc:drawString("IEEE:  -    ",140,142);
        elseif(VectorValues[0]/1 < 30000000)then
           gc:drawString("ITU:High Frequency (HF)",10,132);
           gc:drawString("IEEE:High Frequency (HF)",10,142);
           gc:drawString("IEEE:  -    ",140,142);
        elseif(VectorValues[0]/1 < 300000000)then
           gc:drawString("ITU:Very High Frequency (VHF) - SkyWaves",10,132);
           gc:drawString("IEEE:Very High Frequency (VHF)",10,142);
           gc:drawString("IEEE:  -    ",140,142);
        elseif(VectorValues[0]/1 < 3000000000)then
           gc:drawString("ITU:Ultra High Frequency (UHF) - SkyWaves",10,132);
           if(VectorValues[0]/1 < 1000000000)then
                gc:drawString("IEEE:Ultra High Frequency (UHF)",10,142);
           elseif(VectorValues[0]/1 < 2000000000)then
                gc:drawString("IEEE:L Band",10,142);
           else gc:drawString("IEEE:S Band",10,142);
           end
           
           gc:drawString("IEEE:  -    ",140,142);
        elseif(VectorValues[0]/1 < 30000000000)then
           gc:drawString("ITU:Super High Frequency (SHF) - SkyWaves",10,132);
            gc:drawString("IEEE:Extremely low frequency (ELF)",10,142);
            gc:drawString("IEEE:  -    ",140,142);
        elseif(VectorValues[0]/1 < 300000000000)then
           gc:drawString("ITU:Extra High Frequency (EHF) - SkyWaves",10,132);
            gc:drawString("IEEE:Extremely low frequency (ELF)",10,142);
            gc:drawString("IEEE:  -    ",140,142);
        elseif(VectorValues[0]/1 < 3000000000000)then
           gc:drawString("ITU:(Treahertz or Tremendously ) High Frequency (THF) - SkyWaves",10,132);
            gc:drawString("IEEE:Extremely low frequency (ELF)",10,142);
            gc:drawString("IEEE:  -    ",140,142);
        end
    end
    gc:setColorRGB(0xff0000)
    Width = math.log(VectorValues[0])/math.log(10)*(11.5) ;
    --Width = 24;
    if(Width < 289) then gc:drawLine(289-Width,165,289-Width,200); end
end


function FrequencyCalcMath()
    if (tonumber(VectorValues[2]) == nil) then VectorValues[2] = 1; end
    if(VectorSize == 0) then 
        if (tonumber(VectorValues[0]) == nil) then VectorValues[0] = 0; end
         if (not(tonumber(VectorValues[0]) == 0)) then
            VectorValues[1] = VectorValues[2]/VectorValues[0]
            VectorValues[3] = 1/VectorValues[0];
            VectorValues[4] = (4.135667662*10^-15 * VectorValues[2])/VectorValues[1]
            end
    elseif(VectorSize == 1) then 
        if (tonumber(VectorValues[1]) == nil) then VectorValues[1] = 1; end
        if (not(tonumber(VectorValues[1]) == 0)) then 
            VectorValues[0] = VectorValues[2]/VectorValues[1];
            VectorValues[3] = 1/VectorValues[0];
            VectorValues[4] = (4.135667662*10^-15 * VectorValues[2])/VectorValues[1]
            end
    elseif(VectorSize == 2) then 
        if (tonumber(VectorValues[0]) == nil) then VectorValues[0] = 0; end
          if (not(tonumber(VectorValues[2]) == 0)) then
            VectorValues[1] = VectorValues[2]/VectorValues[0];
            VectorValues[3] = 1/VectorValues[0];
            VectorValues[4] = (4.135667662*10^-15 * VectorValues[2])/VectorValues[1]
        end
    elseif(VectorSize == 3) then 
        if (tonumber(VectorValues[3]) == nil) then VectorValues[3] = 1; end
         if (not(tonumber(VectorValues[3]) == 0)) then
            VectorValues[0] = 1/tonumber(VectorValues[3]);
            VectorValues[1] = VectorValues[2]/VectorValues[0];
            VectorValues[4] = (4.135667662*10^-15 * VectorValues[2])/VectorValues[1]
            end
    elseif(VectorSize == 4) then    
        if (tonumber(VectorValues[4]) == nil) then VectorValues[4] = 1; end
         if (not(tonumber(VectorValues[4]) == 0)) then
            VectorValues[1] = (4.135667662*10^-15 * VectorValues[2])/VectorValues[4];
            VectorValues[0] = VectorValues[2]/tonumber(VectorValues[1]);
            VectorValues[3] = 1/tonumber(VectorValues[0]);
            end
    end
    
end




function Resistance_4Band(gc)
    gc:drawImage(Resistor_4,58,40)
    gc:setFont("serif","r",6);
    gc:setColorRGB(0x123456)
    gc:fillRect(40,8,240,18)
    gc:setColorRGB(0x444444)
    gc:fillRect(40,8,50,18)
    gc:setColorRGB(0xffff99)
    gc:drawString("4-Band      5-Band      6-Band       SMD       Calc",50,10);    
    gc:setColorRGB(Resistnace_Color[Resistor4Columns[Y_Dimenstion]])         gc:fillRect(116,53,7,36)
    gc:setColorRGB(Resistnace_Color[Resistor4Columns[2]])         gc:fillRect(131,53,7,36)
    gc:setColorRGB(Resistnace_Color[Resistor4Columns[3]])         gc:fillRect(146,53,7,36)
    gc:setColorRGB(Resistance_TolColor[Resistor4Columns[4]])      gc:fillRect(187,53,7,36)
    gc:setFont("serif","r",14);
    gc:setColorRGB(ResistorResultColor)
    vRes = (Resistnace_Value[Resistor4Columns[1]]*10+Resistnace_Value[Resistor4Columns[2]])*math.pow (10, Resistnace_Value[Resistor4Columns[3]]);
    addition =    string.format("+%%%06.03f: %07sΩ",Resistance_Tolerance[Resistor4Columns[4]]*100,Size(vRes+vRes*Resistance_Tolerance[Resistor4Columns[4]]))
    subtraction = string.format("-%%%06.03f: %07sΩ",Resistance_Tolerance[Resistor4Columns[4]]*100,Size(vRes-vRes*Resistance_Tolerance[Resistor4Columns[4]]))
    NewStr = string.format(  "Resistance : %07sΩ",Size(vRes));
    gc:drawString(NewStr,158-gc:getStringWidth(NewStr)/2,100);
    gc:drawString(addition,158-gc:getStringWidth(addition)/2,120);
    gc:drawString(subtraction,158-gc:getStringWidth(subtraction)/2,140);
    gc:setColorRGB(50,50,50)
    gc:fillRect(0,200,380,15)
    gc:setColorRGB(0xffff00)
    if(X_Dimenstion == 1) then  gc:drawRect(115,52,8,37);
    elseif(X_Dimenstion==2)then gc:drawRect(130,52,8,37); 
    elseif(X_Dimenstion==3)then gc:drawRect(145,52,8,37);
    elseif(X_Dimenstion==4)then gc:drawRect(186,52,8,37); end 
    gc:setColorRGB(0xFFFFFF)
    gc:setFont("serif","r",6);
    gc:drawString(Footer_str,2,200,"top");
    gc:drawLine(0,200,wdth,200)
end





function Resistance_5Band(gc)
    gc:drawImage(Resistor_4,58,40)
    gc:setFont("serif","r",6);
    gc:setColorRGB(0x123456)
    gc:fillRect(40,8,240,18)
    gc:setColorRGB(0x444444)
    gc:fillRect(90,8,53,18)
    gc:setColorRGB(0xffff99)
    gc:drawString("4-Band      5-Band      6-Band       SMD       Calc",50,10);    
    gc:setColorRGB(Resistnace_Color[Resistor5Columns[1]])         gc:fillRect(116,53,7,36)
    gc:setColorRGB(Resistnace_Color[Resistor5Columns[2]])         gc:fillRect(131,53,7,36)
    gc:setColorRGB(Resistnace_Color[Resistor5Columns[3]])         gc:fillRect(146,53,7,36)
    gc:setColorRGB(Resistnace_Color[Resistor5Columns[4]])         gc:fillRect(160,53,7,36)
    gc:setColorRGB(Resistance_TolColor[Resistor5Columns[5]])      gc:fillRect(187,53,7,36)
    gc:setFont("serif","r",14);
    gc:setColorRGB(ResistorResultColor)
    vRes = (Resistnace_Value[Resistor5Columns[1]]*100+Resistnace_Value[Resistor5Columns[2]]*10+Resistnace_Value[Resistor5Columns[3]])*math.pow (10, Resistnace_Value[Resistor5Columns[4]]);
    addition =    string.format("+%%%06.03f: %07sΩ",Resistance_Tolerance[Resistor5Columns[5]]*100,Size(vRes+vRes*Resistance_Tolerance[Resistor5Columns[5]]))
    subtraction = string.format("-%%%06.03f: %07sΩ",Resistance_Tolerance[Resistor5Columns[5]]*100,Size(vRes-vRes*Resistance_Tolerance[Resistor5Columns[5]]))
    NewStr = string.format(  "Resistance : %07sΩ",Size(vRes));
    gc:drawString(NewStr,158-gc:getStringWidth(NewStr)/2,100);
    gc:drawString(addition,158-gc:getStringWidth(addition)/2,120);
    gc:drawString(subtraction,158-gc:getStringWidth(subtraction)/2,140);
    gc:setColorRGB(50,50,50)
    gc:fillRect(0,200,380,15)
    gc:setColorRGB(0xff00)
    if(X_Dimenstion == 1) then  gc:drawRect(115,52,8,37);
    elseif(X_Dimenstion==2)then gc:drawRect(130,52,8,37); 
    elseif(X_Dimenstion==3)then gc:drawRect(145,52,8,37);
    elseif(X_Dimenstion==4)then gc:drawRect(159,52,8,37);
    elseif(X_Dimenstion==5)then gc:drawRect(186,52,8,37); end 
    gc:setColorRGB(0xFFFFFF)
    gc:setFont("serif","r",6);
    gc:drawString(Footer_str,2,200,"top");
    gc:drawLine(0,200,wdth,200)
end







function Resistance_6Band(gc)
    gc:drawImage(Resistor_4,58,40)
    gc:setFont("serif","r",6);
    gc:setColorRGB(0x123456)
    gc:fillRect(40,8,240,18)
    gc:setColorRGB(0x444444)
    gc:fillRect(143,8,50,18)
    gc:setColorRGB(0xffff99)
    gc:drawString("4-Band      5-Band      6-Band       SMD       Calc",50,10);     
    gc:setColorRGB(Resistnace_Color[Resistor6Columns[1]])         gc:fillRect(116,53,7,36)
    gc:setColorRGB(Resistnace_Color[Resistor6Columns[2]])         gc:fillRect(131,53,7,36)
    gc:setColorRGB(Resistnace_Color[Resistor6Columns[3]])         gc:fillRect(146,53,7,36)
    gc:setColorRGB(Resistnace_Color[Resistor6Columns[4]])         gc:fillRect(160,53,7,36)
    gc:setColorRGB(Resistance_TolColor[Resistor6Columns[5]])      gc:fillRect(187,53,7,36)
    gc:setColorRGB(Ressitance_TempCoeffColor[Resistor6Columns[6]])      gc:fillRect(207,50,7,41)
    gc:setFont("serif","r",14);
    gc:setColorRGB(ResistorResultColor)
    vRes = (Resistnace_Value[Resistor6Columns[1]]*100+Resistnace_Value[Resistor6Columns[2]]*10+Resistnace_Value[Resistor6Columns[3]])*math.pow (10, Resistnace_Value[Resistor6Columns[4]]);
    addition =    string.format("+%%%06.03f: %07sΩ",Resistance_Tolerance[Resistor6Columns[5]]*100,Size(vRes+vRes*Resistance_Tolerance[Resistor6Columns[5]]))
    subtraction = string.format("-%%%06.03f: %07sΩ",Resistance_Tolerance[Resistor6Columns[5]]*100,Size(vRes-vRes*Resistance_Tolerance[Resistor6Columns[5]]))
    NewStr = string.format(  "Resistance : %07sΩ",Size(vRes));
    TempStr = string.format(  "TempCoeff: %04d ppm",Size(Ressitance_TempCoeff[Resistor6Columns[6]]));
    gc:drawString(NewStr,158-gc:getStringWidth(NewStr)/2,100);
    gc:drawString(addition,158-gc:getStringWidth(addition)/2,120);
    gc:drawString(subtraction,158-gc:getStringWidth(subtraction)/2,140);
    gc:drawString(TempStr,158-gc:getStringWidth(TempStr)/2,160);
    gc:setColorRGB(50,50,50)
    gc:fillRect(0,200,380,15)
    gc:setColorRGB(0xff00)
    if(X_Dimenstion == 1) then  gc:drawRect(115,52,8,37);
    elseif(X_Dimenstion==2)then gc:drawRect(130,52,8,37); 
    elseif(X_Dimenstion==3)then gc:drawRect(145,52,8,37);
    elseif(X_Dimenstion==4)then gc:drawRect(159,52,8,37);
    elseif(X_Dimenstion==5)then gc:drawRect(186,52,8,37);
    elseif(X_Dimenstion==6)then gc:drawRect(207,50,7,41); end 
    gc:setColorRGB(0xFFFFFF)
    gc:setFont("serif","r",6);
    gc:drawString(Footer_str,2,200,"top");
    gc:drawLine(0,200,wdth,200)
end







function Resistance_smd(gc)
    gc:setColorRGB(0x888888);gc:fillRect(100,50,20,50);gc:fillRect(190,50,20,50);gc:setColorRGB(0x888888);gc:drawRect(100,50,110,50)
    gc:setFont("serif","r",6);gc:setColorRGB(0x123456);gc:fillRect(40,8,240,18);gc:setColorRGB(0x444444);gc:fillRect(193,8,45,18);gc:setColorRGB(0xffff99)
    gc:drawString("4-Band      5-Band      6-Band       SMD       Calc",50,10);        
    gc:setFont("serif","r",14);
    gc:drawString(string.upper(SMDResistor),155 - string.len(SMDResistor) * 6,60);
    gc:setColorRGB(ResistorResultColor)
    GetTheLength= string.len(SMDResistor);
    DetectThe_R = SMDResistor:find('r',0);
    if(GetTheLength == 3) then for i=1,12 do
            if(SMDResistor:sub(3,3) == (ResistorSmdCode.EIAChar[i]))then DetectThe_R = 3 ; ResistorSmdCode.index = i ;break;end
                ResistorSmdCode.index = 0 ;
            end
    end
    if(DetectThe_R == nil and ResistorSmdCode.index == 0) then
            if(string.len(SMDResistor) > 2)then
                gc:drawString(string.format("%sΩ",Size((SMDResistor:sub(0,-2)) * math.pow(10,tonumber(SMDResistor:sub(GetTheLength,GetTheLength))))),140-GetTheLength*5,120);
                gc:setFont("serif","r",6);
                if(SMDResistor/1 == 0)then gc:drawString("jumper",160+GetTheLength*10,120); end 
            else
                gc:drawString(string.format("%sΩ",SMDResistor),160-GetTheLength*5,120);
                gc:setFont("serif","r",6);
                if(SMDResistor:len() ~= 0 and SMDResistor/1 == 0)then gc:drawString("jumper",160+GetTheLength*10,120); end
                end
    elseif((DetectThe_R == 3 and GetTheLength > 3)) then 
         gc:drawString(string.format("%sΩ",string.gsub(SMDResistor, "r", ".")),140-GetTheLength*5,120);
    elseif (DetectThe_R == 2 and GetTheLength > 2) then
          gc:drawString(string.format("%sΩ",string.gsub(SMDResistor, "r", ".")),140-GetTheLength*5,120);
    elseif(DetectThe_R == 3 and GetTheLength == 3)then
            if(tonumber(SMDResistor:sub(1,2)))then
                if(tonumber(SMDResistor:sub(1,2)) > 0 and tonumber(SMDResistor:sub(1,2)) <= 96) then 
                 gc:drawString(string.format("%sΩ",Size(ResistorSmdCode.EIAValue[ResistorSmdCode.index]*ResistorSmdCode.code[tonumber(SMDResistor:sub(1,2))])),160-string.len(string.format("%sΩ",ResistorSmdCode.EIAValue[ResistorSmdCode.index]*ResistorSmdCode.code[tonumber(SMDResistor:sub(1,2))]))*5,120);
                  
            else gc:drawString(string.format("Not Defined"),100,120);
            end 
            end
    else gc:drawString(string.format("Not Defined"),100,120);
    end
    gc:setFont("serif","r",6);
    gc:drawString("* Support EIA-96 Code System",2,185);
    gc:setColorRGB(50,50,50)
    gc:fillRect(0,200,380,15)
    gc:setColorRGB(0xFFFFFF)
    gc:setFont("serif","r",6);
    gc:drawString(Footer_str,2,200,"top");
    gc:drawLine(0,200,wdth,200)
    
end





function Resistance_Calc(gc)
    gc:setFont("serif","r",6);
    gc:setColorRGB(0x123456)
    gc:fillRect(40,8,240,18)
    gc:setColorRGB(0x444444)
    gc:fillRect(235,8,45,18)
    gc:setColorRGB(0xffff99)
    gc:drawString("4-Band      5-Band      6-Band       SMD       Calc",50,10);    
--------------------------------------------------------------------------------------------   
    gc:setColorRGB(50,50,50)
    gc:fillRect(0,200,380,15)
    gc:setColorRGB(0xFFFFFF)
    gc:drawString(Footer_str,2,200,"top");
    gc:drawLine(0,200,wdth,200)
    --gc:drawImage(Resistivity,140,30)
    gc:drawImage(ResistanceForm,15,115)
    gc:drawLine(0,33,wdth,33)
    gc:drawLine(0,175,wdth,175) 
--------------------------------------------------------------------------------------------
    gc:setFont("serif","r",6);
    gc:setColorRGB(0x987654)
               if(VectorSize == 0) then
                  gc:setColorRGB(Highlight)
                  gc:drawString(string.format("ρ        :%08s     %s",Size(VectorValues[0]/1),VectorValues[beta]),0,40);
                  gc:setColorRGB(0xffffff)
          else    
                  gc:drawString(string.format("ρ        :%08s     %s",Size(VectorValues[0]/1),VectorValues[beta]),0,40); 
        end
        gc:setColorRGB(0xffffff)
               if(VectorSize == 1) then
                  gc:setColorRGB(Highlight)
                  gc:drawString(string.format("Area   :%08sm²  %s",Size(VectorValues[1]/1),VectorValues[1]),0,50);
                  gc:setColorRGB(0xffffff)
          else    
                  gc:drawString(string.format("Area   :%08sm²  %s",Size(VectorValues[1]/1),VectorValues[1]),0,50); 
        end
               if(VectorSize == 2) then
                  gc:setColorRGB(Highlight)
                  gc:drawString(string.format("Length:%08sm  %s",Size(VectorValues[2]/1),VectorValues[2]),0,60);
                  gc:setColorRGB(0xffffff)
          else    
                  gc:drawString(string.format("Length:%08sm  %s",Size(VectorValues[2]/1),VectorValues[2]),0,60); 
        end
        
                if(VectorSize == 3) then
                  gc:setColorRGB(Highlight)
                  gc:drawString(string.format("Temp  :%08sC  %s",Size(VectorValues[3]/1),VectorValues[3]),0,70);
                  gc:setColorRGB(0xffffff)
          else    
                  gc:drawString(string.format("Temp  :%08sC  %s",Size(VectorValues[3]/1),VectorValues[3]),0,70); 
        end
        
        gc:setColorRGB(0x987654)
                 if(VectorSize == 4) then
                 gc:setColorRGB(Highlight)
                 gc:drawString(string.format("TCoef :%08s     %s",Size(VectorValues[4]/1),VectorValues[4]),0,80);
                 gc:setColorRGB(0xffffff)
         else    
                 gc:drawString(string.format("TCoef :%08s     %s",Size(VectorValues[4]/1),VectorValues[4]),0,80); 
       end
       
 --------------------------------------------------------------------------------------------      
        gc:setColorRGB(0x0ff0ff)
        gc:drawString(string.format("Resistance             %sΩ",Size(((VectorValues[0]*VectorValues[2])/VectorValues[1])*(1 + VectorValues[4]*(VectorValues[3]-20)))),0,90);
        gc:setColorRGB(0xffffff)
        if(ResistanceCalc.Output == 3)    then 
                gc:drawString(" Material                        ρ Resistivity",140,33);
                gc:setColorRGB(0xff5555)
                for i=1,13 do
                if(i+13*Level <= table.getn(ResistanceCalc.TempcoEfficient)) then
                gc:drawString(string.format("%-17s",ResistanceCalc.Material[i+13*Level]),140,33+i*10);
                gc:drawString(Size(ResistanceCalc.Resistivity[i+13*Level]/1),257,33+i*10);
                end
                end
        elseif(ResistanceCalc.Output == 1)then 
                gc:drawString(" Material                   K   TCoefficient",140,33);
                gc:setColorRGB(0x7777)
                for i=1,13 do
                if(i+13*Level <= table.getn(ResistanceCalc.TempcoEfficient)) then
                gc:drawString(string.format("%-17s",ResistanceCalc.Material[i+13*Level]),140,33+i*10);
                gc:drawString(Size(ResistanceCalc.TempcoEfficient[i+13*Level]),257,33+i*10);
                end
                end
        elseif(ResistanceCalc.Output == 2)then 
                gc:drawString(" Material                      σ Conductivity",140,33);
                gc:setColorRGB(0x5555ff)
                for i=1,13 do
                if(i+13*Level <= table.getn(ResistanceCalc.TempcoEfficient)) then
                gc:drawString(string.format("%-17s",ResistanceCalc.Material[i+13*Level]),140,33+i*10);
                gc:drawString((ResistanceCalc.Conductivity[i+13*Level]),257,33+i*10);
                end
                end
        else    gc:drawString(" Material                        FinalResults",140,33);
                gc:setColorRGB(0x55ff55)
                for i=1,13 do
                if(i+13*Level <= table.getn(ResistanceCalc.TempcoEfficient)) then
                gc:drawString(string.format("%-17s",ResistanceCalc.Material[i+13*Level]),140,33+i*10);
                gc:drawString(string.format("%sΩ",ElecrtricSize((ResistanceCalc.Resistivity[i+13*Level]*VectorValues[2]/VectorValues[1])*(1 + (ResistanceCalc.TempcoEfficient[i+13*Level])*(VectorValues[3]-20)))),247,33+i*10);
                end
                end
        end
--------------------------------------------------------------------------------------------            
        gc:setColorRGB(0x999999)
        gc:drawString("                        Press [+] or [-] To turn the TABLE page",0,176);
        gc:drawString("                    Press Space Button to Change TABLE Property",0,186);
end


















function CommonBase(gc)

    gc:setColorRGB(0x00a7ff)
    gc:setFont("serif","b",10);gc:drawString("Common Base Design",120,1);
    gc:setColorRGB(0x555555);
    gc:drawRect(60,1,250,18)
    gc:setFont("sansserif","r",6)
    --===================================================
    --- - - - - - - - -  Source Code  - - - - - - - - - -
    --===================================================
    gc:setColorRGB(0xFF0000);
    gc:drawLine(143,80,170,80);
    Elec.gnd(139,85,gc)
    Elec.bjt(172,73,gc,0);
    gc:drawLine(179,94,179,111);
    Elec.gnd(175,140,gc)
    gc:drawLine(179,66,179,57);
    gc:drawLine(179,57,252,57);
    gc:drawLine(232,57,232,137);
    Elec.gnd(228,140,gc)
    Elec.R(228,114,gc,90);
    Elec.gnd(248,104,gc)
    gc:drawLine(252,100,252,80);
    Elec.R(175,92,gc,90);
    gc:setFont("sansserif","r",6)
    gc:drawString("Vo",248,67);
    gc:drawArc(168,112,22,23,0,360);
    gc:drawString("Vs",175,119);
    gc:drawLine(252,57,252,65);
    gc:drawLine(243,66,260,66);
    gc:drawLine(249,80,255,80);
    
    Elec.R(248,84,gc,90);
    gc:setColorRGB(0x555555);
    if(VectorSize == rs)   then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor) end 
    gc:drawString(Size(VectorValues[rs]/1).."Ω",185,95);
    if(VectorSize == vcc)  then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor) end 
    gc:drawString(Size(VectorValues[vcc]/1).."Ω",236,116);
    if(VectorSize == beta) then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor) end 
    gc:drawString("β:"..VectorValues[beta],181,74);
    if(VectorSize == ic)   then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor) end 
    gc:drawString("Ic:"..VectorValues[ic],181,44);
    if(VectorSize == rl)   then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor) end 
    gc:drawString(Size(VectorValues[rl]/1).."Ω",257,87);
    ---------------------------------------------------
    alpha = VectorValues[beta]/(1+VectorValues[beta])
    gm = VectorValues[ic]/0.025;
    re = alpha * (1/gm);     
    gc:drawString("Avo:"..alpha * parallel(VectorValues[vcc],VectorValues[rl])/(re + VectorValues[rs]/1),5,84);
    gc:drawString("Ri:",5,94);
    gc:drawString("Ro:",5,104);
    gc:drawString("α:   "..string.format("%0.3f",alpha),5,114);
    gc:drawString("g : "..gm,5,124);
    gc:drawString("",12,124);
    gc:drawString("re:  "..string.format("%0.3f",re),5,134);

end


function CommonCollector(gc)
        gc:setColorRGB(0x00a7ff);
        gc:setFont("serif","b",10);gc:drawString("Common Collector Follower Design",80,1);
        gc:setColorRGB(0x555555);
        gc:drawRect(60,1,250,18);
        gc:setFont("sansserif","r",6);

        if(VectorSize == ic)   then gc:setColorRGB(Highlight);                                      else gc:setColorRGB(TableColorFor); end 
        gc:drawString("Ic: "..Size(VectorValues[ic]/1).."A",230,50);
        if(VectorSize == beta) then gc:setColorRGB(Highlight);                                      else gc:setColorRGB(TableColorFor); end 
        gc:drawString("β: "..VectorValues[beta],225,78);
        if(VectorSize == vcc)  then gc:drawString("* Vcc",1,200); gc:setColorRGB(Highlight);        else gc:setColorRGB(TableColorFor); end 
        gc:drawString(Size(VectorValues[vcc]/1).."V",182- tostring(Size(VectorValues[vcc]/1)):len()*2,28);
        if(VectorSize == rl)   then  gc:drawString("* R Load",1,200); gc:setColorRGB(Highlight);    else gc:setColorRGB(TableColorFor); end 
        gc:drawString(Size(VectorValues[rl]/1).."Ω",270- tostring(Size(VectorValues[rl]/1)):len()*2,107);
        if(VectorSize == rs)   then  gc:drawString("* Rs",1,200); gc:setColorRGB(Highlight);        else gc:setColorRGB(TableColorFor); end 
        gc:drawString(Size(VectorValues[rs]/1).."Ω",125- tostring(Size(VectorValues[rl]/1)):len()*2,70);
                
        gc:setColorRGB(0xFF0000);
        --===================================================
        --- - - - - - - - -  Source Code  - - - - - - - - - -
        --===================================================
        gc:drawLine(151,84,210,84);
        Elec.bjt(214,77,gc,0);
        gc:drawLine(151,84,113,84);
        Elec.R(116,81,gc,0);
        gc:drawLine(151,50,221,50);
        gc:drawLine(221,73,221,50);
        gc:drawLine(151,50,151,84);
        gc:drawLine(113,84,113,96);
        gc:drawArc(106,96,15,15,0,360);
        gc:drawLine(113,111,113,124);
        gc:drawLine(221,99,221,123);
        gc:drawLine(221,100,252,100);
        gc:drawLine(252,100,252,123);
        Elec.gnd(248,126,gc)
        Elec.gnd(217,126,gc)
        Elec.gnd(109,126,gc)
        Elec.C(227,97,gc,0);
        gc:drawLine(185,50,185,42);
        gc:drawLine(177,42,194,42);
        Elec.R(148,60,gc,90);
        Elec.R(218,105,gc,90);
        Elec.R(249,105,gc,90);
        Elec.C(135,81,gc,0);
        gc:setFont("sansserif","r",6)
        if(((VectorValues[vcc]/1)/(2*((VectorValues[beta]/1)+1)*((VectorValues[ic]/1)/(VectorValues[beta]/1)))) ~= nil) then
             RE = ((VectorValues[vcc]/1)/(2*((VectorValues[beta]/1)+1)*((VectorValues[ic]/1)/(VectorValues[beta]/1))));
             RB = ((VectorValues[beta]/1)*(((VectorValues[vcc]/2)-0.7)/(VectorValues[ic]/1)));
             Ib = ((VectorValues[vcc]/1)-0.7)/(RB+((VectorValues[beta]/1)+1)*RE);
             gc:setColorRGB(0xFFffff);
             gc:drawString("Ib:"..Size(Ib).."A",160,84);
             gc:drawString("Rπ:    "..Size(0.025/Ib).."Ω",5,84);
             
             Rxx = 0.025/Ib+((VectorValues[beta]/1)+1)*(RE*(VectorValues[rl]/1))/((VectorValues[rl]/1)+RE);
             Ri = parallel(Rxx,RB);
             Ro = parallel(RE,(0.025/Ib+parallel(VectorValues[rs]/1,RB/1))/(VectorValues[beta]/1+1));
             Av = ((VectorValues[beta]/1+1)*RE)/(0.025/Ib + (VectorValues[beta]/1+1)*RE)
             gc:drawString("Rxx:  "..Size(Rxx).."Ω",5,94);
             gc:drawString("Ri:     "..Size(Ri).."Ω",5,104);
             gc:drawString("R₀:     "..Size(Ro).."Ω",5,114);
             gc:drawString("Av₀(dB): "..20*math.log(Av)/math.log(10).."dB",5,144);
             gc:drawString("Av₀:         "..Av,5,134);
             gc:drawString(Size(RE).."Ω",190,108);
             gc:drawString(Size(RB).."Ω",157,63);
             
        else gc:drawString("RE",203,108);
             gc:drawString("RB",157,63);
        end
        gc:setColorRGB(0xFF0000);
        gc:drawString("Vs",109,98);
        ---------------------------------------------------
end



-- Resistor Parallel function
function parallel(AA,BB) return (AA * BB)/(AA + BB);end





function CommonEmitter(gc)
    
    gc:setFont("serif","r",6)
    if(page.number == 0) then
        gc:setColorRGB(0x0);       
        gc:setColorRGB(0xff0000);
        gc:drawLine(244,94,283,94);
        gc:drawLine(284,95,284,134);
        gc:drawLine(284,150,284,177);
        gc:drawLine(225,94,191,94);
        gc:drawLine(192,98,192,45);
        gc:drawLine(192,58,145,58);
        gc:drawLine(145,87,145,184);
        gc:drawLine(89,151,89,112);
        gc:drawLine(89,112,98,112);
        gc:drawLine(145,58,145,71);
        gc:drawLine(192,124,192,190);
        gc:drawLine(233,176,233,192);
        gc:drawLine(192,158,233,158);
        Elec.gnd(141,184,gc);
        Elec.gnd(85,153,gc);
        Elec.gnd(188,191,gc);
        Elec.gnd(229,192,gc);
        Elec.gnd(280,179,gc);
        Elec.bjt(185,105,gc,0);
        Elec.C(118,109,gc,0);
        Elec.C(225,91,gc,0);
        Elec.C(229,158,gc,90);
        Elec.R(98,109,gc,0);
        Elec.R(141,69,gc,90);
        Elec.R(188,71,gc,90);
        Elec.R(188,127,gc,90);
        Elec.R(141,142,gc,90);
        Elec.R(280,133,gc,90);
        Elec.R(162,109,gc,0);
        gc:drawLine(163,112,135,112);
        Elec.R(188,165,gc,90);
        gc:setColorRGB(0x00000);
        gc:fillArc(82,120,15,15,0,360);
        gc:setColorRGB(0xFF0000);
        gc:setFont("serif","b",6);
        gc:drawString("Vs",85,123);
        gc:drawArc(82,120,15,15,0,360);
        
        gc:setColorRGB(0xFFFFFF);
        gc:drawString("|Circuit|",10,200,"top");
        gc:drawLine(10,211,39,211);
        gc:setColorRGB(150,150,150);
        gc:drawString("             |Graph|",10,200,"top");       
        gc:drawLine(49,211,76,211); 
        gc:drawLine(0,200,wdth,200);
        gc:setColorRGB(0x00a7ff);
        gc:setFont("serif","b",10);
        gc:drawString("Common Emitter Amplifier Design",90,1);
        gc:setColorRGB(0x555555);
        gc:drawRect(60,1,250,18);
        
        if(VectorSize == beta) then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor+933333) end --β
        gc:setFont("serif","r",6);
        gc:drawString("β: ",12,baseHigh);
        gc:drawString(VectorValues[beta],22,baseHigh);--β   
          
        gc:setColorRGB(TableColorGND);    
        if(VectorSize == vcc)  then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor) end          --Vcc
        gc:setFont("serif","r",10);
        gc:drawString("V",0,baseHigh+10);    
        gc:setFont("serif","r",06);gc:drawString("cc:",7,baseHigh+14);         --Vcc  
        gc:drawString(Size(VectorValues[vcc]/1).."V",22,baseHigh+14);                                                                                        --Vcc
        
        gc:setColorRGB(TableColorGND);   
        if(VectorSize == ic)   then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor) end          -- Ic
        gc:setFont("serif","r",10);gc:drawString("I",5,baseHigh+22);    gc:setFont("serif","r",06);gc:drawString("c :",9,baseHigh+26);           -- Ic
        gc:drawString(Size(VectorValues[ic]/1).."A",22,baseHigh+26);                                                                                         -- Ic
        
        gc:setColorRGB(TableColorGND);                                                                                                           -- R Load
        if(VectorSize == rl) then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor) end                                             -- R Load
        gc:setFont("serif","r",10);gc:drawString("R",0,baseHigh+34);                                                                            -- R Load
        gc:setFont("serif","r",06);gc:drawString("L:",12,baseHigh+38);                                                                          -- R Load
        gc:drawString(Size(VectorValues[rl]/1).."Ω",22,baseHigh+38);                                                                                         -- R Load
        
        -------------------- start Of Rs Text ------------
        gc:setColorRGB(TableColorGND);    
        if(VectorSize == rs) then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor) end
        gc:setFont("serif","r",10);gc:drawString("R",0,baseHigh+45);
        gc:setFont("serif","r",06);gc:drawString("s:",12,baseHigh+49);
        gc:drawString(Size(VectorValues[rs]/1).."Ω",22,baseHigh+49);
        -------------------- End Of Rs Text ------------
        
        -------------------- start Of Av Text ------------
        gc:setColorRGB(TableColorGND);    
        if(VectorSize == av) then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor) end
        gc:setFont("serif","r",10);gc:drawString("A",0,baseHigh+56);
        gc:setFont("serif","r",06);gc:drawString("v:",12,baseHigh+60);
        --gc:drawString(VectorValues[av],22,baseHigh+60   );
        if(tonumber(VectorValues[av])) then gc:drawString(string.format("  %sdB",Size(20*(math.log(VectorValues[av])/math.log(10)))),16,baseHigh+60   ); end
        -------------------- End Of C123 Text ------------
        gc:setColorRGB(TableColorGND);   
        if(VectorSize == c1) then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor) end
        gc:setFont("serif","r",10);gc:drawString("C",0,baseHigh+68);
        gc:setFont("serif","r",06);gc:drawString("1:",12,baseHigh+72);
        gc:drawString(Size(VectorValues[c1]/1).."F",22,baseHigh+72   );
        
        gc:setColorRGB(TableColorGND);   
        if(VectorSize == c2) then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor) end
        gc:setFont("serif","r",10);gc:drawString("C",0,baseHigh+80);
        gc:setFont("serif","r",06);gc:drawString("2:",12,baseHigh+84);
        gc:drawString(Size(VectorValues[c2]/1).."F",22,baseHigh+84   );
        
        gc:setColorRGB(TableColorGND);   
        if(VectorSize == c3) then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor) end
        gc:setFont("serif","r",10);gc:drawString("C",0,baseHigh+92);
        gc:setFont("serif","r",06);gc:drawString("e:",12,baseHigh+96);
        gc:drawString(Size(VectorValues[c3]/1).."F",22,baseHigh+96);
                          
        
        
        gc:setColorRGB(TableColorGND);   
         if(VectorSize == vjc) then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor+933333) end
         gc:setFont("serif","r",10);gc:drawString("V",0,baseHigh+104);
         gc:setFont("serif","r",06);gc:drawString("jc:",10,baseHigh+108);
         gc:drawString(Size(VectorValues[vjc]/1).."V",22,baseHigh+108);
        gc:setColorRGB(TableColorGND);   
         if(VectorSize == vje) then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor+933333) end
         gc:setFont("serif","r",10);gc:drawString("V",0,baseHigh+116);
         gc:setFont("serif","r",06);gc:drawString("je:",10,baseHigh+120);
         gc:drawString(Size(VectorValues[vje]/1).."V",22,baseHigh+120);
        gc:setColorRGB(TableColorGND);   
         if(VectorSize == cjc) then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor+933333) end
         gc:setFont("serif","r",10);gc:drawString("C",0,baseHigh+128);
         gc:setFont("serif","r",06);gc:drawString("jc:",10,baseHigh+132);
         gc:drawString(Size(VectorValues[cjc]/1).."F",22,baseHigh+132);
        gc:setColorRGB(TableColorGND);   
         if(VectorSize == cje) then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor+933333) end
         gc:setFont("serif","r",10);gc:drawString("C",0,baseHigh+140);
         gc:setFont("serif","r",06);gc:drawString("je:",10,baseHigh+144);
         gc:drawString(Size(VectorValues[cje]/1).."F",22,baseHigh+144);
        gc:setColorRGB(TableColorGND)   ;
         if(VectorSize == taw) then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor+933333) end
         gc:setFont("serif","r",12);gc:drawString("τ",4,baseHigh+148);
         gc:setFont("serif","r",06);gc:drawString("F:",10,baseHigh+156);
         gc:drawString(Size(VectorValues[taw]/1).."s",22,baseHigh+156);
         
        
        gc:setColorRGB(0xff0000);
        gc:drawString("Entry: "..VectorValues[VectorSize],105,baseHigh+19);
        
        
        
        gc:setColorRGB(0xffffff);
        gc:setFont("serif","r",6);
        if(VectorSize == beta) then
            gc:setColorRGB(Highlight);
            gc:drawString(string.format("β:%s",VectorValues[beta]),207,110);
            gc:drawString(string.format("α: %s",Size(VectorValues[beta]/(VectorValues[beta]+1))),75,168);     
            gc:setColorRGB(0xffffff);
        else    
            gc:drawString(string.format("α: %s",Size(VectorValues[beta]/(VectorValues[beta]+1))),75,168);
            gc:drawString(string.format("β:%s",VectorValues[beta]),207,110);         
        end
        
        if (string.len(VectorValues[beta])> 0
        and string.len(VectorValues[vcc]) > 0 
        and VectorValues[ic] ~= '.'
        and VectorValues[av] ~= '.'
        and string.len(VectorValues[ic]) > 0 
        and string.len(VectorValues[rl]) > 0
        and string.len(VectorValues[av]) > 0 
        and string.len(VectorValues[rs]) > 0) then
        
            if(VectorSize == vcc) then
                gc:setColorRGB(Highlight);
                gc:drawString(string.format("%sV",Size(VectorValues[vcc]/1)),180,30);
                gc:setColorRGB(0xffffff);
            else 
                gc:drawString(string.format("%sV",Size(VectorValues[vcc]/1)),180,30);
            end
        
            gc:drawString(string.format("Rc:%sΩ",Size(CE_Design_Compute("RC"))),195-string.len(string.format("%sΩ",Size(CE_Design_Compute("RC")))),68);
            gc:drawString(string.format("Re:%sΩ",Size(CE_Design_Compute("RE") - CE_Design_Compute("Rx"))),175,164);
            gc:drawString(string.format("%sΩ",Size(CE_Design_Compute("RB"))),148,100); 
            gc:drawString(string.format("%sV",Size(CE_Design_Compute("VBB"))),90,40);    
            gc:drawString(string.format("R1:%sΩ",Size(CE_Design_Compute("R1"))) , 130,75)
            gc:drawString(string.format("R2:%sΩ",Size(CE_Design_Compute("R2"))) , 120,145)
            gc:drawString(string.format("Rx:%sΩ",Size(CE_Design_Compute("Rx"))),180,130);
            if CE_Design_Compute("Rx") < 0 or VectorValues[ic]/1 == 0 then
                 gc:setColorRGB(0xff4300);gc:drawString("-Not Applicaple",0,169);gc:setColorRGB(0xffffff);
            else    
                 gc:setColorRGB(0xff55);gc:drawString("-Applicable",0,169);gc:setColorRGB(0xffffff);
            end
            gc:setFont("serif","r",6);
            gc:drawString(string.format("%sV < Vs < %sV",Size(CE_Design_Compute("+Vs")),Size(CE_Design_Compute("-Vs"))),0,179);
            
            if(VectorSize == rs) then
                 gc:setColorRGB(Highlight);
                 gc:drawString(string.format("Rs:%sΩ",Size(VectorValues[rs]/1)),85,98);
                 gc:setColorRGB(0xffffff);
            else        
                 gc:drawString(string.format("Rs:%sΩ",Size(VectorValues[rs]/1)),85,98);
            end
        
            if(VectorSize == rl) then
                 gc:setColorRGB(Highlight);
                 gc:drawString(string.format("Rl:%sΩ",Size(VectorValues[rl]/1)),250,135);
                 gc:setColorRGB(0xffffff);       
            else        
                 gc:drawString(string.format("Rl:%sΩ",Size(VectorValues[rl]/1)),250,135);
            end
            
            if(VectorSize == c1) then
                 gc:setColorRGB(Highlight);
                 gc:drawString(string.format("C1:%sF",Size(VectorValues[c1]/1)),110,120);
                 gc:setColorRGB(0xffffff);
            else       
                 gc:drawString(string.format("C1:%sF",Size(VectorValues[c1]/1)),110,120);
            end
            
            if(VectorSize == c2) then
                 gc:setColorRGB(Highlight);
                 gc:drawString(string.format("C2:%sF",Size(VectorValues[c2]/1)),210,80);
                 gc:setColorRGB(0xffffff);
            else     
                 gc:drawString(string.format("C2:%sF",Size(VectorValues[c2]/1)),210,80);
            end
            
            if(VectorSize == c3) then
                 gc:setColorRGB(Highlight);
                 gc:drawString(string.format("C3:%sF",Size(VectorValues[c3]/1)),235,161);
                 gc:setColorRGB(0xffffff);
            else      
                 gc:drawString(string.format("C3:%sF",Size(VectorValues[c3]/1)),235,161);
            end
            
            gc:setColorRGB(0x888888);
            gc:setFont("serif","r",18);
            gc:drawString("F",218,15)
            gc:setFont("serif","r",16);
            gc:drawString("c",233,30)
            gc:setFont("serif","r",6);  
            gc:drawString(string.format("     Hgh:%07sHz",Size(CE_Design_Compute("Fh"))) ,229,31)
            gc:drawString(string.format("     Low:%07sHz",Size(CE_Design_Compute("Fl"))) ,229,41)
            gc:setColorRGB(0xffffff);  
            gc:drawString(string.format("Vo(max):%sV",Size(VectorValues[av]*CE_Design_Compute("-Vs"))),260-1.5*string.len(string.format("Vo(max):%sV",Size(VectorValues[av]*CE_Design_Compute("-Vs")))),64);
            gc:setColorRGB(0xffff00)     gc:drawString(string.format(" Rπ:%sΩ    Rxx:%sΩ",Size(CE_Design_Compute("Rπ")),Size(CE_Design_Compute("Rxx"))) ,0,188)
            gc:setColorRGB(0xffffff) 
        end
      
      elseif(page.number==1) then 
          gc:setColorRGB(0xFFFFFF)
          gc:drawString("             |Graph|",10,200,"top");          
          gc:drawLine(49,211,76,211)
          gc:setColorRGB(150,150,150)
          gc:drawLine(0,200,wdth,200) 
          gc:drawLine(10,211,39,211) 
          gc:drawString("|Circuit|",10,200,"top");
      end   
         
end







function Fmultivibrator(gc)
    local Footer_strwdth = gc:getStringWidth(Footer_str)   gc:setColorRGB(TableColorGND)    gc:fillRect(0,0,wdth,hgh)    gc:setFont("serif","r",6)
    --gc:drawImage(multivibrator,80,45)
    
    --===================================================
    --- - - - - - - - -  Source Code  - - - - - - - - - -
    --===================================================
    gc:setColorRGB(0xFF0000)
    Elec.bjt(118,166,gc,1);
    gc:drawLine(123,157,173,157);
    gc:drawLine(173,157,218,113);
    gc:drawLine(218,113,247,113);
    Elec.bjt(273,151,gc,0);
    gc:drawLine(269,158,215,158);
    gc:drawLine(215,158,170,113);
    gc:drawLine(170,113,143,113);
    gc:drawLine(170,113,170,47);
    gc:drawLine(217,114,217,47);
    gc:drawLine(109,146,109,47);
    gc:drawLine(109,47,280,47);
    gc:drawLine(280,145,280,47);
    gc:drawLine(280,173,280,195);
    gc:drawLine(109,171,109,194);
    gc:drawLine(280,195,109,195);
    Elec.C(131,110,gc,0);
    Elec.C(240,110,gc,0);
    --gc:drawLine(259,113,280,113);
    gc:drawLine(131,113,81,113);
    --gc:drawLine(109,113,81,113);
    gc:drawLine(259,113,308,113);
    gc:drawString("Vo",289,116);
    gc:drawString("Vo",84,116);
    Elec.gnd(276,199,gc)
    ---------------------------------------------------

    gc:setColorRGB(50,50,50)
    gc:fillRect(0,200,380,15)
    gc:setColorRGB(0xFFFFFF)
    gc:drawString(Footer_str,2,200,"top");
    gc:drawLine(0,200,wdth,200) 
    gc:setColorRGB(0x00a7ff)
    gc:setFont("serif","b",10);gc:drawString("Astable Multi-Vibrator Design",100,1);
    gc:setColorRGB(0x555555);gc:drawLine(60,1,310,1);gc:drawLine(60,18,310,18);gc:drawLine(310,1,310,18);gc:drawLine(60,1,60,18)
    gc:setColorRGB(0xffffff)
    
    
    -------------------- start Of β Text ------------
    gc:setColorRGB(TableColorGND)    if(VectorSize == beta) then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor) end    gc:setFont("serif","r",6);gc:drawString("β: ",4,baseHigh);gc:drawString(VectorValues[beta],15,baseHigh);
    -------------------- start Of Vcc Text ------------
    gc:setColorRGB(TableColorGND)    if(VectorSize == vcc)  then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor) end    gc:setFont("serif","r",10);gc:drawString("V",3,baseHigh+10);    gc:setFont("serif","r",06);gc:drawString("cc:",12,baseHigh+14);    gc:drawString(VectorValues[vcc],26,baseHigh+14);
    -------------------- start Of Ic Text ------------
    gc:setColorRGB(TableColorGND)    if(VectorSize == ic)   then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor) end    gc:setFont("serif","r",10);gc:drawString("I",4,baseHigh+22);    gc:setFont("serif","r",06);gc:drawString("c:",8,baseHigh+26);    gc:drawString(VectorValues[ic],18,baseHigh+26);
    -------------------- start Of RL Text ------------
    gc:setColorRGB(TableColorGND)    
    if(VectorSize == rl) then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor) end
    gc:setFont("serif","r",10);gc:drawString("F",4,baseHigh+34);
    gc:setFont("serif","r",06);gc:drawString("requency:",12,baseHigh+38);
    gc:drawString(VectorValues[rl],55,baseHigh+38);
    -------------------- End Of RL Text ------------
        
       
    
    
    gc:setFont("serif","r",06)
    gc:setColorRGB(0xffffff)
    gc:drawString(string.format("%sV",Size(VectorValues[vcc]/1)),190,35);
    gc:drawString(string.format("β:%s",Size(VectorValues[beta]/1)),275,152);
    gc:drawString(string.format("β:%s",Size(VectorValues[beta]/1)),75,152);
    gc:drawString(string.format("%sΩ",Size(Fmultivibrator_Compute("RC"))),95,70);
    gc:drawString(string.format("%sΩ",Size(Fmultivibrator_Compute("RC"))),265,70);
    gc:drawString(string.format("%sΩ",Size(Fmultivibrator_Compute("R12"))),150,70);
    gc:drawString(string.format("%sΩ",Size(Fmultivibrator_Compute("R12"))),210,70);
    gc:drawString(string.format("%sF",Size(Fmultivibrator_Compute("C"))),235,115);
    gc:drawString(string.format("%sF",Size(Fmultivibrator_Compute("C"))),125,115);
    gc:drawString(string.format("-PeriodTime:%ss",Size(Fmultivibrator_Compute("T"))),0,185);
    gc:drawString(string.format("-Frequency :%sHz",Size(VectorValues[rl]/1)),0,175);
    --gc:setColorRGB(0xff55);gc:drawString("--Period Time:%ss",Size(Fmultivibrator_Compute("R12")/1),0,169);
    
end
















function Flpf(gc)
    baseHigh = 30
    local Footer_strwdth = gc:getStringWidth(Footer_str)   gc:setColorRGB(TableColorGND)    gc:fillRect(0,0,wdth,hgh)    gc:setFont("serif","r",6)
    gc:drawImage(LPF,100,85)
    gc:setColorRGB(50,50,50)
    gc:fillRect(0,200,380,15)
    gc:setColorRGB(0xFF88)
    gc:drawString("[+] Cut-off Frequency will freeze Capacitor and change resistor.",0,187,"top");
    gc:setFont("serif","r",06);gc:drawString("[+] Fc:",0,baseHigh+148);    gc:drawString(string.format("%sHz",Size(Flpf_Compute("Fc")/1)),30,baseHigh+148);
    gc:setColorRGB(0xFFFFFF)
    gc:drawString(Footer_str,2,200,"top");
    gc:drawLine(0,200,wdth,200) 
    gc:setColorRGB(0x00a7ff)
    gc:setFont("serif","b",10);gc:drawString("Low Pass Filter",140,1);
    gc:setColorRGB(0x555555);gc:drawLine(60,1,310,1);gc:drawLine(60,18,310,18);gc:drawLine(310,1,310,18);gc:drawLine(60,1,60,18)
    gc:setColorRGB(0xffffff)
    -------------------- start Of Resistor_4 Text ------------
    gc:setColorRGB(TableColorGND)    if(VectorSize == beta) then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor) end    gc:setFont("serif","r",6);gc:drawString("Resistor_4",4,baseHigh);gc:drawString(string.format("%.0f",Flpf_Compute("R")/1),83,baseHigh);
    -------------------- start Of Capacitor Text ------------
    gc:setColorRGB(TableColorGND)    if(VectorSize == vcc)  then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor) end    gc:setFont("serif","r",06);gc:drawString("Capcitor",4,baseHigh+13);    gc:drawString(VectorValues[vcc],83,baseHigh+13);
    -------------------- start Of cutoff Freq. Text ------------
    gc:setColorRGB(TableColorGND)    if(VectorSize == ic)   then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor) end    gc:setFont("serif","r",06);gc:drawString("Cutoff Frequency",4,baseHigh+26);    gc:drawString(string.format("%.0f",Flpf_Compute("Fc")/1),83,baseHigh+26);
    -------------------- start Of Input Freq. Text ------------
    gc:setColorRGB(TableColorGND)    if(VectorSize == rl)   then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor) end    gc:setFont("serif","r",06);gc:drawString("Input Frequency ",4,baseHigh+38);
    gc:drawString(VectorValues[rl],83,baseHigh+38);

    gc:setColorRGB(TableColorGND)    
    if(VectorSize == rs) then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor) end
    gc:setFont("serif","r",6);gc:drawString("Amplitude ",4,baseHigh+50);gc:drawString(VectorValues[rs],83,baseHigh+50);

    gc:setColorRGB(TableColorGND)    
   
    gc:setFont("serif","r",6);
    gc:setColorRGB(TableColorGND) 
    if(VectorSize == beta) then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor) end gc:drawString(string.format("%sΩ",Size(Flpf_Compute("R"))),160,110);
    if(VectorSize == rs) then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor)   end gc:drawString(string.format("%sV",Size(VectorValues[rs]/1)),120,138);
    if(VectorSize == vcc)  then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor) end gc:drawString(string.format("%sF",Size(VectorValues[vcc]/1)),210,134);
    if(VectorSize == rl) then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor)   end gc:drawString(string.format("%sV",Size(VectorValues[rs] * Flpf_Compute("Vo") /1)),270,154);
    
    if(not tonumber(VectorValues[ic])) then VectorValues[ic] = 0 ; end
    
end


function FHpf(gc)
    baseHigh = 30
    local Footer_strwdth = gc:getStringWidth(Footer_str)   gc:setColorRGB(TableColorGND)    gc:fillRect(0,0,wdth,hgh)    gc:setFont("serif","r",6)
    gc:drawImage(HPF,120,90)
    gc:setColorRGB(50,50,50)
    gc:fillRect(0,200,380,15)
    gc:setColorRGB(0xFF88)
    gc:drawString("[+] Cut-off Frequency will freeze Capacitor and change resistor.",0,187,"top");
    gc:setFont("serif","r",06);gc:drawString("[+] Fc:",0,baseHigh+148);    gc:drawString(string.format("%sHz",Size(Flpf_Compute("Fc")/1)),30,baseHigh+148);
    gc:setColorRGB(0xFFFFFF)
    gc:drawString(Footer_str,2,200,"top");
    gc:drawLine(0,200,wdth,200) 
    gc:setColorRGB(0x00a7ff)
    gc:setFont("serif","b",10);gc:drawString("High Pass Filter",140,1);
    gc:setColorRGB(0x555555);gc:drawLine(60,1,310,1);gc:drawLine(60,18,310,18);gc:drawLine(310,1,310,18);gc:drawLine(60,1,60,18)
    gc:setColorRGB(0xffffff)
    
    
            -------------------- start Of Resistor_4 Text ------------
    gc:setColorRGB(TableColorGND)    if(VectorSize == beta) then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor) end    gc:setFont("serif","r",6);gc:drawString("Resistor",4,baseHigh);gc:drawString(string.format("%.0f",Flpf_Compute("R")/1),83,baseHigh);
    -------------------- start Of Capacitor Text ------------
    gc:setColorRGB(TableColorGND)    if(VectorSize == vcc)  then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor) end    gc:setFont("serif","r",06);gc:drawString("Capcitor",4,baseHigh+13);    gc:drawString(VectorValues[vcc],83,baseHigh+13);
    -------------------- start Of cutoff Freq. Text ------------
    gc:setColorRGB(TableColorGND)    if(VectorSize == ic)   then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor) end    gc:setFont("serif","r",06);gc:drawString("Cutoff Frequency",4,baseHigh+26);    gc:drawString(string.format("%.0f",Flpf_Compute("Fc")/1),83,baseHigh+26);
    -------------------- start Of Input Freq. Text ------------
    gc:setColorRGB(TableColorGND)    if(VectorSize == rl)   then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor) end    gc:setFont("serif","r",06);gc:drawString("Input Frequency ",4,baseHigh+38);
    gc:drawString(VectorValues[rl],83,baseHigh+38);
    -------------------- End Of RL Text ------------
    
    -------------------- start Of Rs Text ------------
    gc:setColorRGB(TableColorGND)    
    if(VectorSize == rs) then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor) end
    gc:setFont("serif","r",6);gc:drawString("Amplitude ",4,baseHigh+50);gc:drawString(VectorValues[rs],83,baseHigh+50);

    -------------------- End Of Rs Text ------------
    
    -------------------- start Of Av Text ------------
    gc:setColorRGB(TableColorGND)    
   
    gc:setFont("serif","r",6);
    gc:setColorRGB(TableColorGND) 
    if(VectorSize == beta) then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor) end gc:drawString(string.format("%sΩ",Size(Flpf_Compute("R"))),215,132);
    if(VectorSize == rs) then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor)   end gc:drawString(string.format("%sV",Size(VectorValues[rs]/1)),120,138);
    if(VectorSize == vcc)  then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor) end gc:drawString(string.format("%sF",Size(VectorValues[vcc]/1)),150,114);
    if(VectorSize == rl) then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor)   end gc:drawString(string.format("%sV",Size(VectorValues[rs] * Flpf_Compute("Vo"))),260,140);
    
    
    
end



function CE_Design_Compute(TargetValue)
    if     TargetValue == "RC" then return      VectorValues[vcc]/(3*VectorValues[ic])
    elseif TargetValue == "RE" then return      VectorValues[beta]/(VectorValues[beta] + 1)* CE_Design_Compute("RC") 
    elseif TargetValue == "RB" then return      (VectorValues[beta]+1)* CE_Design_Compute("RE") / 10 
    elseif TargetValue == "VBB"then return      VectorValues[vcc]/3+.7+VectorValues[ic]/VectorValues[beta]*CE_Design_Compute("RB")
    elseif TargetValue == "R1" then return      VectorValues[vcc]/CE_Design_Compute("VBB")*CE_Design_Compute("RB")
    elseif TargetValue == "R2" then return      VectorValues[vcc]/(VectorValues[vcc] - CE_Design_Compute("VBB"))*CE_Design_Compute("RB")
    elseif TargetValue == "Rπ" then return      VectorValues[beta]*(.025/VectorValues[ic])   
    elseif TargetValue == "Ko" then return      VectorValues[rl]/(VectorValues[rl]+CE_Design_Compute("RC"))
    elseif TargetValue == "Rx" then return      1/(VectorValues[beta]+1)  *((CE_Design_Compute("RC")/10) /(CE_Design_Compute("RC")/10 + VectorValues[rs])     *      (  (VectorValues[beta]* CE_Design_Compute("RC")*VectorValues[rl])/(math.abs(VectorValues[av])*(VectorValues[rl]+CE_Design_Compute("RC"))) - VectorValues[rs]) - CE_Design_Compute("Rπ"))  
    elseif TargetValue == "Rxx"then return      ((((VectorValues[beta]*((VectorValues[vcc])/(3*VectorValues[ic])))/(10)))/(((VectorValues[beta]*((VectorValues[vcc])/(3*VectorValues[ic])))/(10))+VectorValues[rs]))*(((VectorValues[beta]*((VectorValues[vcc])/(3*VectorValues[ic]))*VectorValues[rl])/(math.abs(VectorValues[av])*(VectorValues[rl]+((VectorValues[vcc])/(3*VectorValues[ic])))))-VectorValues[rs])                                
    elseif TargetValue == "Ki" then return      (1/(((1)/(CE_Design_Compute("RB")))+((1)/(CE_Design_Compute("Rxx")))))/(1/((((1)/(CE_Design_Compute("RB")))+((1)/(CE_Design_Compute("Rxx")))))   + VectorValues[rs]  )
    elseif TargetValue == "+Vs"then return      ((-CE_Design_Compute("Rxx")*(VectorValues[ic]/VectorValues[beta]))/(CE_Design_Compute("Ki"))) 
    elseif TargetValue == "-Vs"then return      ((VectorValues[vcc]-VectorValues[ic]*CE_Design_Compute("RC")-(CE_Design_Compute("VBB")-(VectorValues[ic]/VectorValues[beta])*CE_Design_Compute("RB")))/(CE_Design_Compute("Ki")+math.abs(VectorValues[av])))
    elseif TargetValue == "R11"then return      VectorValues[rs] + CE_Design_Compute("RB")*(CE_Design_Compute("Rπ") + (VectorValues[beta]+1)*CE_Design_Compute("Rx"))/(CE_Design_Compute("RB")*(CE_Design_Compute("Rπ") + (VectorValues[beta]+1)*CE_Design_Compute("Rx")));
    elseif TargetValue == "Fl" then return      math.max(1/(2*3.1415926535898*CE_Design_Compute("R11")*VectorValues[c1]),1/(2*3.1415926535898*VectorValues[c2]*(VectorValues[rl]+CE_Design_Compute("RC"))),1/(2*3.1415926535898*VectorValues[c3]*(CE_Design_Compute("RE2")*(CE_Design_Compute("Rx")+((CE_Design_Compute("Rπ")+CE_Design_Compute("RSB"))/(VectorValues[beta]+1))))/(CE_Design_Compute("RE2")+(CE_Design_Compute("Rx")+((CE_Design_Compute("Rπ")+CE_Design_Compute("RSB"))/(VectorValues[beta]+1))))));
    elseif TargetValue == "RE2" then return     (CE_Design_Compute("RE")-CE_Design_Compute("Rx"));
    elseif TargetValue == "RSB" then return     (CE_Design_Compute("RB")*VectorValues[rs]/(CE_Design_Compute("RB")+VectorValues[rs]));
    elseif TargetValue == "Cu" then if(tonumber(VectorValues[vjc]) > 0 and tonumber(VectorValues[vcc]-CE_Design_Compute("VBB")) >= 0 ) then return       VectorValues[cjc]/(math.pow(1+(VectorValues[vcc]-CE_Design_Compute("VBB"))/VectorValues[vjc],1/3));else return 1 ; end
    elseif TargetValue == "Re" then return      CE_Design_Compute("Rπ")+(VectorValues[beta]+1)*CE_Design_Compute("Rx")
    elseif TargetValue == "Ru" then return      (CE_Design_Compute("Re")*(CE_Design_Compute("RSB")+parallel(CE_Design_Compute("RC"),VectorValues[rl]))+(VectorValues[beta]+1)*CE_Design_Compute("RSB")*parallel(CE_Design_Compute("RC"),VectorValues[rl]))    /     (CE_Design_Compute("RSB")+CE_Design_Compute("Re"))
    elseif TargetValue == "Fu" then return      1/(2*3.1415926535898*CE_Design_Compute("Cu")*CE_Design_Compute("Ru"))
    elseif TargetValue == "Cπ" then return      (VectorValues[taw]*(VectorValues[ic]/.025)+(VectorValues[cje]/math.pow(math.abs(1-CE_Design_Compute("VBB")/VectorValues[vje]),1/3)));
    elseif TargetValue == "Fπ" then return      (1/(CE_Design_Compute("Rπ")*2*CE_Design_Compute("Cπ")*3.1415926535898));    
    elseif TargetValue == "Fh" then return      math.min(CE_Design_Compute("Fπ"),CE_Design_Compute("Fu"));  
    end
    return 0
end



function Flpf_Compute(Traget)

	if Traget == "Fc" then    
        if(VectorSize == ic) then if tonumber(VectorValues[ic]) then return VectorValues[ic]/1 end  
        else if(VectorValues[vcc] ~= '%.')then 
            if(tonumber(VectorValues[beta]) == nil) then VectorValues[beta] = 0 end
             VectorValues[ic] = string.format("%.0f",tonumber((1/(tonumber(VectorValues[vcc])*tonumber(VectorValues[beta]))*1)/(2 * 3.1415926535898))) ; 
            
              end
              return (1/((VectorValues[vcc])*(VectorValues[beta])))/(2 * 3.1415926535898) 
              end
             
              
     elseif Traget == "Vo" then
        if(MainMenu == 3 and SubMenu == 1)then
                  return      1/math.sqrt((1 + (VectorValues[rl]/(Flpf_Compute("Fc")*1))^2))
                 else   return  1/math.sqrt((1 + ((Flpf_Compute("Fc")/VectorValues[rl]*1))^2))
                 end
     elseif Traget == "R" then
        if(VectorSize ~= ic) then return VectorValues[beta]/1;
        elseif(tonumber(VectorValues[vcc]) and tonumber(VectorValues[ic]))then VectorValues[beta] = string.format("%.0f",1/(VectorValues[vcc]* VectorValues[ic] * 2 * 3.1415926535898))
             return      1/(VectorValues[vcc]* VectorValues[ic] * 2 * 3.1415926535898)
        end
     end
     
     return 0
end


function Fmultivibrator_Compute(TargetValue)
    if     TargetValue == "RC" then return      (VectorValues[vcc]-.2)/(VectorValues[ic])
    elseif     TargetValue == "R12" then return      (VectorValues[vcc]-.7)/(VectorValues[ic]/VectorValues[beta])
    elseif     TargetValue == "C" then return      (1/(1.3862943611199*VectorValues[rl]* Fmultivibrator_Compute("R12")))
    elseif     TargetValue == "T" then if(VectorValues[rl] ~= 0)then return      1/VectorValues[rl] else return '∞' end
    end
    return 0
end













---------------------------------------- TAB And Data Size Functions
function TAB(gc)   
     gc:setColorRGB(0xffffff);
     --gc:drawImage(kau,55,0)
     gc:drawImage(KAUClubLogo,0-25,0-10)
     dfg=platform.getDeviceID();
     gc:setColorRGB(50,50,50)
     gc:fillRect(0,200,380,15)
     gc:setFont("serif","r",6)  
     gc:setColorRGB(0xcccccc)
     if(dfg) then gc:drawString(string.format("%s",dfg),0,0);
     end
     
     gc:setColorRGB(0x555555)
     gc:drawLine(0,200,380,200) 
     gc:setColorRGB(0xffffff);
     gc:drawString(" Coded By Muath Abdullah      Contact : m0az@outlook.com    2018/11",10,200);
     
end



function Size(target)    
        target = tonumber(target);
        if target >=         1000000000000000000000000 then return (string.format("%.2fY",target/1000000000000000000000000))
        elseif target >=     1000000000000000000000 then return (string.format("%.2fZ",target/1000000000000000000000)) 
        elseif target >=     1000000000000000000 then return (string.format("%.2fE",target/1000000000000000000)) 
        elseif target >=     1000000000000000 then return (string.format("%.2fP",target/1000000000000000)) 
        elseif target >=     1000000000000 then return (string.format("%.2fT",target/1000000000000)) 
        elseif target >= 1000000000 then return (string.format("%.2fG",target/1000000000)) 
        elseif target >= 1000000 then return (string.format("%.2fM",target/1000000)) 
        elseif target >= 1000 then return (string.format("%.2fk",target/1000)) 
        elseif (target < 1 and target > 0.000999) then return (string.format("%.2fm",target*1000))
        elseif (target < .001 and target > 0.000000999) then return (string.format("%.2fu",target*1000000))
        elseif (target < .000001 and target > 0.000000000999) then return (string.format("%.2fn",target*1000000000)) 
        elseif (target < .000000001 and target > 0.000000000000999) then return (string.format("%.2fp",target*1000000000000)) 
        elseif (target < .000000000001 and target > 0.000000000000000999) then return (string.format("%.2ff",target*1000000000000000))
        elseif (target < .000000000000001 and target > 0.000000000000000000999) then return (string.format("%.2fa",target*1000000000000000000))
        elseif (target < .000000000000000001 and target > 0.000000000000000000000999) then return (string.format("%.2fz",target*1000000000000000000000))
        elseif (target < .000000000000000000001 and target > 0.000000000000000000000000999) then return (string.format("%.2fz",target*1000000000000000000000000))
        elseif (target < .000000000000000000000001 and target > 0.000000000000000000000000000999) then return (string.format("%.2fy",target*1000000000000000000000000000))    
        elseif (target < 0 and target > -1) then return string.format("%.2fm",target*1000)
        elseif (target < -1000 and target > -1000000) then return string.format("%.2fk",target/1000)
        end
     return string.format("%.2f",target)
end
---------------------------------------- TAB And Data Size Functions



function toBits(num)
    local t = "";
    if(negative_flg) then num = 4294967295 - num+1 ;end
    while tonumber(num) > 0 do
        rest=math.fmod(num,2)
        t=t..rest
        
        num=(num-rest)/2
    end
    if(negative_flg)then 
        for i = string.len(t),31 do
           t=t .."1"
        end
    else
       for i = string.len(t),31 do
       t=t .."0"
       end
    end
    local tt = ""
    
    for i = 0,32,1 do
           tt = tt..t:sub(i,i)
           if (i%8 == 0) then tt = tt.. " " end
    end
    
    return string.reverse(tt)
end







function QuickCalc(gc)
     gc:setFont("serif","r",6)   
     
      
     gc:setColorRGB(0x888888);
     gc:drawString("Press Minus Sign To Inverse First Number",130,195);  
     gc:drawLine(107,10,107,200)
     if(VectorSize == 1) then gc:setColorRGB(0xff0000); end
     gc:drawString("Number 2                       "..VectorValues[1],5 ,20);
     gc:setColorRGB(0x888888);
     
     if(VectorSize == 0) then gc:setColorRGB(0xff0000); end
     if(negative_flg) then gc:drawString("Number 1                       -"..VectorValues[0],5 ,10);  
     else  gc:drawString("Number 1                       "..VectorValues[beta],5 ,10); end
     gc:setColorRGB(0x888888);
     
     
     if((VectorValues[beta]/1) < 4294967295) then 
            gc:drawString("2'Complement Octal        "..tostring(toOctal(VectorValues[beta])),5 ,60);
            gc:drawString("2'Complement Binary      "..tostring(toBits(VectorValues[beta])),5 ,30);
            gc:drawString(string.format("2'Complement BEndian    %08X",hexadicemal(VectorValues[beta]/1)),5 ,40);
            gc:drawString(string.format("2'Complement LEndian    %s",littleEnd(string.format("%08X",hexadicemal(VectorValues[beta])/1))),5 ,50);
     else   gc:drawString("2'Complement Binary       Bigger than 32-bit",5 ,30);
            gc:drawString("2'Complement Hex          Bigger than 32-bit",5 ,40);
     end
     
     if(string.len(VectorValues[beta]) < 27) then gc:drawString("PowersPrefix                "..AdvSize(VectorValues[beta]/1),5,70);
     else  gc:drawString("PowersPrefix                   Is that real ?!",5,70);
     end
     --if( (math.evalStr((VectorValues[0]).." and "..(VectorValues[1])) == nil))then
     if(negative_flg) then
         gc:drawString("Num1  AND   Num2         "..math.evalStr(string.format("-%d and %d",VectorValues[0],VectorValues[1])),5 ,80);
         gc:drawString("Num1  OR     Num2         "..math.evalStr(string.format("-%d or %d",VectorValues[0],VectorValues[1])),5 ,90);
         gc:drawString("Num1  XOR   Num2         "..math.evalStr(string.format("-%d xor %d",VectorValues[0],VectorValues[1])),5 ,100);
         gc:drawString("Num1  NOR   Num2         "..math.evalStr(string.format("-%d nor %d",VectorValues[0],VectorValues[1])),5 ,110);
         gc:drawString("Num1  NAND Num2         "..math.evalStr(string.format("-%d nand %d",VectorValues[0],VectorValues[1])),5 ,120);
         gc:drawString("N1  RotateL N2 times      "..math.evalStr(string.format("rotate(-%d,%d)",VectorValues[0],VectorValues[1])),5 ,130);
         gc:drawString("N1  ShiftL    N2 times      "..math.evalStr(string.format("shift(-%d,%d)",VectorValues[0],VectorValues[1])),5 ,140);
         gc:drawString("Not N1                           "..math.evalStr(string.format("not -%d",VectorValues[0])),5 ,150);
     else
          
          gc:drawString("Num1  AND   Num2         "..math.evalStr(string.format("%d and %d",VectorValues[0],VectorValues[1])),5 ,80);
          gc:drawString("Num1  OR     Num2         "..math.evalStr(string.format("%d or %d",VectorValues[0],VectorValues[1])),5 ,90);
          gc:drawString("Num1  XOR   Num2         "..math.evalStr(string.format("%d xor %d",VectorValues[0],VectorValues[1])),5 ,100);
          gc:drawString("Num1  NOR   Num2         "..math.evalStr(string.format("%d nor %d",VectorValues[0],VectorValues[1])),5 ,110);
          gc:drawString("Num1  NAND Num2         "..math.evalStr(string.format("%d nand %d",VectorValues[0],VectorValues[1])),5 ,120);
          gc:drawString("N1  RotateL N2 times      "..math.evalStr(string.format("rotate(%d,%d)",VectorValues[0],VectorValues[1])),5 ,130);
          gc:drawString("N1  ShiftL    N2 times      "..math.evalStr(string.format("shift(%d,%d)",VectorValues[0],VectorValues[1])),5 ,140);
          gc:drawString("Not N1                           "..math.evalStr(string.format("not %d",VectorValues[0])),5 ,150);
     end
     --end
     if(VectorValues[beta]/1 < 65536) then gc:drawString("Unicode char                  "..string.uchar(VectorValues[beta]),5 ,170);
          else gc:drawString("Unicode char                  Too Big ( more than 65535 )",5 ,170); end
          
end



function toOctal(num)
    local t = "";
    if(negative_flg) then num = 4294967295 - num+1 ;end
    while tonumber(num) > 0 do
        rest=math.fmod(num,8)
        t=t..rest
        num=(num-rest)/8
    end    
    return string.reverse(t)
end



function hexadicemal(num)
  if (negative_flg)then return 0xFFFFFFFF-num+1
  else return num
  end
end



function littleEnd(Parameter)
    local temp = "";
    for i=8,1,-2 do
       temp = temp..Parameter:sub(i-1,i);
    end
    return temp
end



function AdvSize(target)    
        if(negative_flg) then
            if target >=     1000000000000000000000000 then return (string.format("-%06.2fY Yotta  ->  -%06.2f x 10 ^ 24  septillion",target/100000000000000000000000,target/100000000000000000000000)) 
            elseif target >= 1000000000000000000000 then return (string.format("-%06.2fZ Zetta  ->  -%06.2f x 10 ^ 21  sextillion",target/1000000000000000000000,target/1000000000000000000000)) 
            elseif target >= 1000000000000000000 then return (string.format("-%06.2fE Exa    ->  -%06.2f x 10 ^ 18  quintillion",target/1000000000000000000,target/1000000000000000000)) 
            elseif target >= 1000000000000000 then return (string.format("-%06.2fP Peta   ->  -%06.2f x 10 ^ 15  quadrillion",target/1000000000000000,target/1000000000000000)) 
            elseif target >= 1000000000000 then return (string.format("-%06.2fT Tera   ->  -%06.2f x 10 ^ 12  trillion",target/1000000000000,target/1000000000000)) 
            elseif target >= 1000000000 then return (string.format("-%06.2fG Giga    ->  -%06.2f x 10 ^ 9  billion",target/1000000000,target/1000000000)) 
            elseif target >= 1000000 then return (string.format("-%06.2fM Mega   ->  -%06.2f x 10 ^ 6  million ",target/1000000,target/1000000)) 
            elseif target >= 1000 then return (string.format("-%06.2fk Kilo      ->  -%06.2f x 10 ^ 3  thousand",target/1000,target/1000)) 
            elseif (target < 1 and target > 0.0999) then return (string.format("-%06.2fd Deci     ->  -%06.2f x 10 ^ -1",target*										  10,target*					   10))
            elseif (target < 1 and target > 0.00999) then return (string.format("-%06.2fc Centi    ->  -%06.2f x 10 ^ -2",target*										  100,target*					   100))
            elseif (target < 1 and target > 0.000999) then return (string.format("-%06.2fm Milli    ->  -%06.2f x 10 ^ -3",target*										  1000,target*					   1000))
            elseif (target < .001 and target > 0.000000999) then return (string.format("-%06.2fu Micro    ->  -%06.2f x 10 ^ -6",target*								  1000000,target*				   1000000))
            elseif (target < .000001 and target >          0.000000000999) then return (string.format("-%06.2fn Nano     ->  -%06.2f x 10 ^ -9",target*                   1000000000,target*               1000000000)) 
            elseif (target < .000000001 and target >       0.000000000000999) then return (string.format("-%06.2fp Pico     ->  -%06.2f x 10 ^ -12",target*               1000000000000,target*            1000000000000)) 
            elseif (target < .000000000001 and target >    0.000000000000000999) then return (string.format("-%06.2ff Femto    ->  -%06.2f x 10 ^ -15",target*            1000000000000000,target*         1000000000000000))
            elseif (target < .000000000000001 and target > 0.000000000000000000999) then return (string.format("-%06.2fa Atto     ->  -%06.2f x 10 ^ -18",target*         1000000000000000000,target*      1000000000000000000))
            elseif (target < .000000000000000001 and target > 0.000000000000000000000999) then return (string.format("-%06.2fz zepto    ->  -%06.2f x 10 ^ -21",target*   1000000000000000000000,target*   1000000000000000000000))
            elseif (target < .000000000000000000001 and target > 0.000000000000000000000000999) then return (string.format("-%06.2fy yocto    ->  -%06.2f x 10 ^ -24",target*1000000000000000000000000,target*1000000000000000000000000)) 
            end
            return string.format("-%06.2f",target)
        else
            if     target >=     1000000000000000000000000 then return (string.format("  %06.2fY Yotta  ->  %06.2f x 10 ^ 24  septillion",target/100000000000000000000000,target/100000000000000000000000)) 
            elseif target >=     1000000000000000000000 then return (string.format("  %06.2fZ Zetta  ->  %06.2f x 10 ^ 21  sextillion",target/1000000000000000000000,target/1000000000000000000000)) 
            elseif target >=     1000000000000000000 then return (string.format("  %06.2fE Exa    ->  %06.2f x 10 ^ 18  quintillion",target/1000000000000000000,target/1000000000000000000)) 
            elseif target >=     1000000000000000 then return (string.format("  %06.2fP Peta   ->  %06.2f x 10 ^ 15  quadrillion",target/1000000000000000,target/1000000000000000)) 
            elseif target >=     1000000000000 then return (string.format("  %06.2fT Tera   ->  %06.2f x 10 ^ 12  trillion",target/1000000000000,target/1000000000000)) 
            elseif target >= 1000000000 then return (string.format("  %06.2fG Giga    ->  %06.2f x 10 ^ 9  billion",target/1000000000,target/1000000000)) 
            elseif target >= 1000000 then return (string.format("  %06.2fM Mega   ->  %06.2f x 10 ^ 6  million",target/1000000,target/1000000)) 
            elseif target >= 1000 then return (string.format("  %06.2fk Kilo      ->  %06.2f x 10 ^ 3  thousand",target/1000,target/1000)) 
            elseif (target < 1 and target > 0.0999) then return (string.format("  %06.2fd Deci     ->  %06.2f x 10 ^ -1",target*10,target*10))
            elseif (target < 1 and target > 0.00999) then return (string.format("  %06.2fc Centi    ->  %06.2f x 10 ^ -2",target*100,target*100))
            elseif (target < 1 and target > 0.000999) then return (string.format("  %06.2fm Milli    ->  %06.2f x 10 ^ -3",target*1000,target*1000))
            elseif (target < .001 and target > 0.000000999) then return (string.format("  %06.2fu Micro    ->  %06.2f x 10 ^ -6",target*1000000,target*1000000))
            elseif (target < .000001 and target >          		 0.000000000999) then return (string.format("  %06.2fn Nano     ->  %06.2f x 10 ^ -9",target*                   1000000000,target*               1000000000)) 
            elseif (target < .000000001 and target >       		 0.000000000000999) then return (string.format("  %06.2fp Pico     ->  %06.2f x 10 ^ -12",target*               1000000000000,target*            1000000000000)) 
            elseif (target < .000000000001 and target >     	 0.000000000000000999) then return (string.format("  %06.2ff Femto    ->  %06.2f x 10 ^ -15",target*            1000000000000000,target*         1000000000000000))
            elseif (target < .000000000000001 and target > 		 0.000000000000000000999) then return (string.format("  %06.2fa Atto     ->  %06.2f x 10 ^ -18",target*         1000000000000000000,target*      1000000000000000000))
            elseif (target < .000000000000000001 and target > 	 0.000000000000000000000999) then return (string.format("  %06.2fz zepto    ->  %06.2f x 10 ^ -21",target*   1000000000000000000000,target*   1000000000000000000000))
            elseif (target < .000000000000000000001 and target > 0.000000000000000000000000999) then return (string.format("  %06.2fy yocto    ->  %06.2f x 10 ^ -24",target*1000000000000000000000000,target*1000000000000000000000000)) 

            end
            return string.format("  %06.2f",target)
        end
end





function ElecrtricSize(target)
		if target>=1000000000000000000000000000000000 								then return (string.format("%06.2fx10^33", target/1000000000000000000000000000000000))
	elseif target>=1000000000000000000000000000000 									then return (string.format("%06.2fx10^30", target/1000000000000000000000000000000))
	elseif target>=1000000000000000000000000000 									then return (string.format("%06.2fx10^27", target/1000000000000000000000000000))
	elseif target>=1000000000000000000000000 										then return (string.format("%06.2fx10^24", target/1000000000000000000000000))
	elseif target>=1000000000000000000000 											then return (string.format("%06.2fx10^21", target/1000000000000000000000))
	elseif target>=1000000000000000000 												then return (string.format("%06.2fx10^18", target/1000000000000000000))
	elseif target>=1000000000000000 												then return (string.format("%06.2fx10^15", target/1000000000000000))
	elseif target>=1000000000000 													then return (string.format("%06.2fx10^12", target/1000000000000))
	elseif target>=1000000000 														then return (string.format("%06.2fx10^9",  target/1000000000))
	elseif target>=1000000 															then return (string.format("%06.2fx10^6",  target/1000000))
	elseif target>=1000 															then return (string.format("%06.2fx10^3",  target/1000))
	elseif target>=1 																then return (string.format("%06.2fx10^0",  target))
	elseif (target<1 and target>0.0999) 											then return (string.format("%06.2fx10^-1", target*10))
	elseif (target<1 and target>0.00999) 											then return (string.format("%06.2fx10^-2", target*100))
	elseif (target<1 and target>0.000999) 											then return (string.format("%06.2fx10^-3", target*1000))
	elseif (target<.001 and target>0.000000999) 									then return (string.format("%06.2fx10^-6", target*1000000))
	elseif (target<.000001 and target>0.000000000999) 								then return (string.format("%06.2fx10^-9", target*1000000000))
	elseif (target<.000000001 and target>0.000000000000999) 						then return (string.format("%06.2fx10^-12",target*1000000000000))
	elseif (target<.000000000001 and target>0.000000000000000999) 					then return (string.format("%06.2fx10^-15",target*1000000000000000))
	elseif (target<.000000000000001 and target>0.000000000000000000999) 			then return (string.format("%06.2fx10^-18",target*1000000000000000000))
	elseif (target<.000000000000000001 and target>0.000000000000000000000999) 		then return (string.format("%06.2fx10^-21",target*1000000000000000000000))
	elseif (target<.000000000000000000001 and target>0.000000000000000000000000999)	then return (string.format("%06.2fx10^-24",target*1000000000000000000000000))
	end
	return string.format("%06.2f",target)
end




function Formula(gc)
    gc:setFont("sansserif","r",16);
    gc:setColorRGB(0xffffff)
    gc:fillRect(0,20,320,170)
    gc:setColorRGB(0x550055)
    gc:drawString("      Formulas  ",75,20)
    gc:setFont("sansserif","r",9);
    origin = 50;
    originx = 10;
    if(Enter_Flag_Page == 1)then
        gc:drawString("α = β/(1+β)                    β = α/(1-α)",originx,origin)
        gc:drawString("Rc = Vcc/(3*Ic)             Re = α*Rc    ",originx,origin+17)
        gc:drawString("Re = α*Rc                     Rb = (1+β)*Re/10    ",originx,origin+34)
        gc:drawString("Vbb = (Vcc/3) + 0.7 + (Ic/β)*Rb    ",originx,origin+51)
        gc:drawString("R1 = (Vcc/Vbb)*Rb     R2 = (Vcc/(Vcc-Vbb))*Rb ",originx,origin+68)
        gc:drawString("Rπ = β*(.025/Ic)           Ko = RL/(RL+Rc)",originx,origin+85)
        gc:setFont("serif","r",6);
        gc:drawString("Rx =(1/(β+1))*((0.1Rc)/(Rc/10+Rs)*((βRcRL)/(|Av|(RL+RC))-Rs)-Rπ)",originx,origin+105)
        gc:setFont("sansserif","r",9);
        gc:setColorRGB(0x0)
        gc:drawString("1",284,170);
        gc:drawString("▶",305,170);
        gc:setColorRGB(0xaaaaaa)
        gc:drawString("◀",277,170);
        gc:drawString("23",291,170);
    elseif(Enter_Flag_Page == 2)then
        gc:setColorRGB(0xaaaaaa)
        gc:drawString("3",298,170);
        gc:drawString("1",284,170);
        gc:setColorRGB(0x0)
        gc:drawString("2",291,170);
        gc:drawString("◀",277,170);
        gc:drawString("▶",305,170);
    elseif(Enter_Flag_Page == 3)then
        gc:setColorRGB(0xaaaaaa)
        gc:drawString("2",291,170);
        gc:drawString("1",284,170);
        gc:drawString("▶",305,170);
        gc:setColorRGB(0x0)
        gc:drawString("3",298,170);
        gc:drawString("◀",277,170);
        
    end
    gc:setColorRGB(0xaaaaaa)
    gc:drawLine(originx,origin+17,305,origin+17)
    gc:drawLine(originx,origin+34,305,origin+34)
    gc:drawLine(originx,origin+51,305,origin+51)
    gc:drawLine(originx,origin+68,305,origin+68)
    gc:drawLine(originx,origin+85,305,origin+85)
    gc:drawLine(originx,origin+102,305,origin+102)
    gc:drawLine(originx,origin+119,305,origin+119)
    
end



function CopyConstant(Index)
    if(PhysicsConstants.Tab == 0)then clipboard.addText(PhysicsConstants.Quantity[Index]:gsub(" ","_"));
    elseif(PhysicsConstants.Tab == 1)then clipboard.addText(PhysicsConstants.Value[Index]:gsub(" ","_"));
    else clipboard.addText(PhysicsConstants.Unit[Index]:gsub(" ","_"));
    end
end



function Constants(gc)
    gc:setFont("serif","r",6)
    
    
    gc:setColorRGB(0x555555)
    gc:drawLine(0,11,320,11);
    gc:drawLine(0,191,320,191);
    gc:drawString("   Press [Tab] To Change Copying Type.    [+] or [-] To change the Page",0,200);
    --gc:drawString("and [+] or [-] Buttons To change the Page",0,180);
    if(PhysicsConstants.Tab == 0) then
         gc:drawString("Quantity                                                                       Value",0,0);
         gc:drawString("                         Press [c] Char To Copy Quantity(Name)",0,190);
    elseif(PhysicsConstants.Tab == 1) then
         gc:drawString("                              Press [c] Char To Copy Value",0,190);
         gc:drawString("Quantity                                                                       Value",0,0);
    else gc:drawString("                                Press [c] Char To Copy Unit",0,190);
         gc:drawString("Quantity                                                                       Unit",0,0); 
    end
    
    gc:drawString(string.format("From %03d - to %03d  Page:%02d",1+(PhysicsConstants.Page)*(PhysicsConstants.MaxPage),(PhysicsConstants.Page+1)*(PhysicsConstants.MaxPage),PhysicsConstants.Page+1),60,0);
    gc:drawString(string.format("%03d  ",PhysicsConstants.ConstantIndex+PhysicsConstants.Page*PhysicsConstants.MaxPage),190,0);
    
    for i=1,18 do
    
    
    if(PhysicsConstants.ConstantIndex == i) then gc:setColorRGB(0x880000);
    else gc:setColorRGB(0x888888);
    end
    
    if(PhysicsConstants.Tab == 2) then
                
                gc:drawString(string.format("%s ",PhysicsConstants.Quantity[i+PhysicsConstants.Page*PhysicsConstants.MaxPage]),0,i*10);
                if(PhysicsConstants.ConstantIndex == i) then gc:setColorRGB(0xff0000);
                else gc:setColorRGB(0xffffff);
                end
                gc:drawString(string.format("%s ",PhysicsConstants.Unit[i+PhysicsConstants.Page*PhysicsConstants.MaxPage]),240,i*10);    
    else
                gc:drawString(string.format("%s ",PhysicsConstants.Quantity[i+PhysicsConstants.Page*PhysicsConstants.MaxPage]),0,i*10);
                if(PhysicsConstants.ConstantIndex == i) then gc:setColorRGB(0xff0000);
                else gc:setColorRGB(0xffffff);
                end
                gc:drawString(string.format("%s ",PhysicsConstants.Value[i+PhysicsConstants.Page*PhysicsConstants.MaxPage]),220,i*10);    
                end
    
    end
end






function GreekAlpha(gc)
    gc:setFont("serif","r",6)   
    gc:setColorRGB(0x555555)
    gc:drawLine(0,11,320,11);
    gc:drawLine(0,191,320,191);
    gc:drawString(" Press [c] Char To Copy Value [+]",0,190);
    gc:drawString("En Name             Upper         Lower        UpperCode        LowerCode",0,0);    
    for i=1,18 do
		if(GreekIndex == i) then gc:setColorRGB(0xff0000);
		else gc:setColorRGB(0xffffff); end
		gc:drawString(string.format("%s ",Galphabet.En_Name[i+GreekPage]),0,i*10);
		gc:drawString(string.format("%s ",Galphabet.UpperCase[i+GreekPage]),80,i*10);
		gc:drawString(string.format("%s ",Galphabet.LowerCase[i+GreekPage]),130,i*10);
		gc:drawString(string.format("%s ",Galphabet.UpperCode[i+GreekPage]),180,i*10);
		gc:drawString(string.format("%s ",Galphabet.LowerCode[i+GreekPage]),250,i*10);    
    end
end






function SIunit(gc)
    gc:setFont("serif","r",6)
    
    
    gc:setColorRGB(0x555555)
    gc:drawLine(0,11,320,11);
    gc:drawLine(0,191,320,191);
    gc:drawString("   Press [Tab] To Change Copying Type.    [+] or [-] To change the Page",0,200);
    gc:drawString("En Name    Symbol  Quantity                                        SI Unit",0,0);    
    for i=1,18 do

    if(GreekIndex == i) then gc:setColorRGB(0xff0000);
    else gc:setColorRGB(0xffffff);
    end
                gc:drawString(string.format("%s ",SI.Name[i+GreekPage]),0,i*10);
                gc:drawString(string.format("%s ",SI.Symbol[i+GreekPage]),65,i*10);
                gc:drawString(string.format("%s ",SI.Quantity[i+GreekPage]),90,i*10);
                --gc:drawString(string.format("%s ",SI.OtherSI[i+GreekPage]),180,i*10);
                gc:drawString(string.format("%s ",SI.base[i+GreekPage]),245,i*10);    
    end
end

function Copy(Index) clipboard.addText(Index); end





















--[[
                   ___           ___                       ___           ___           ___     
      ___         /  /\         /  /\          ___        /  /\         /  /\         /  /\    
     /__/\       /  /:/_       /  /:/         /  /\      /  /::\       /  /::\       /  /:/_   
     \  \:\     /  /:/ /\     /  /:/         /  /:/     /  /:/\:\     /  /:/\:\     /  /:/ /\  
      \  \:\   /  /:/ /:/_   /  /:/  ___    /  /:/     /  /:/  \:\   /  /:/~/:/    /  /:/ /::\ 
  ___  \__\:\ /__/:/ /:/ /\ /__/:/  /  /\  /  /::\    /__/:/ \__\:\ /__/:/ /:/___ /__/:/ /:/\:\
 /__/\ |  |:| \  \:\/:/ /:/ \  \:\ /  /:/ /__/:/\:\   \  \:\ /  /:/ \  \:\/:::::/ \  \:\/:/~/:/
 \  \:\|  |:|  \  \::/ /:/   \  \:\  /:/  \__\/  \:\   \  \:\  /:/   \  \::/~~~~   \  \::/ /:/ 
  \  \:\__|:|   \  \:\/:/     \  \:\/:/        \  \:\   \  \:\/:/     \  \:\        \__\/ /:/  
   \__\::::/     \  \::/       \  \::/          \__\/    \  \::/       \  \:\         /__/:/   
       ~~~~       \__\/         \__\/                     \__\/         \__\/         \__\/    


       
             ___         ___           ___                 
            /  /\       /  /\         /  /\          ___   
           /  /::\     /  /::\       /  /::\        /  /\  
          /  /:/\:\   /  /:/\:\     /  /:/\:\      /  /:/  
         /  /:/~/:/  /  /:/~/::\   /  /:/~/:/     /  /:/   
        /__/:/ /:/  /__/:/ /:/\:\ /__/:/ /:/___  /  /::\   
        \  \:\/:/   \  \:\/:/__\/ \  \:\/:::::/ /__/:/\:\  
         \  \::/     \  \::/       \  \::/~~~~  \__\/  \:\ 
          \  \:\      \  \:\        \  \:\           \  \:\
           \  \:\      \  \:\        \  \:\           \__\/
            \__\/       \__\/         \__\/                

--]]








CenterPoint={}
CenterPoint.x =150
CenterPoint.y =100


function VectorsPage(gc)
    gc:setColorRGB(0x555555);
    gc:setFont("serif","r",6);
    Vector1 = {}
    Vector1.x = -10;
    Vector1.y = 0;
    Vector1.z = 0;
    Vector1.angle = 180-30
    if(Coordinate == 0) then
        gc:setColorRGB(0xff0000);
        gc:drawImage(SphereSys,70,10)
        gc:drawString("Spherical system",240,2);
    elseif(Coordinate == 1) then
        gc:setColorRGB(0xff0000);
        gc:drawImage(Clynd,70,10)
        gc:drawString("Cylindrical system",235,2);
    else gc:drawString("z",150,150);
        gc:setColorRGB(0xff0000);
        gc:drawLine(143,103,248,103);
        gc:drawLine(143,103,100,140);
        gc:drawLine(143,104,143,38);
        gc:drawLine(143,104,178,133);
        gc:drawArc(105,50,75,75,240,60);
        gc:drawString("θ",140,110);
        gc:drawString("▲   z",139,30);
        gc:drawString("▶   y",244,98);   
        gc:drawString("▲   x",98,132);       
            
        gc:drawString("Coordinate system",235,2);
        end
    gc:setColorRGB(0x888888);
    gc:drawString("[TAB] To Change system",1,200);
    

end


function Circle(Vector,gc)
    gc:fillArc( CenterPoint.x,
                CenterPoint.y,
                math.sqrt((math.pow(Vector.x,2)+math.pow(Vector.y,2)))*(210/310)+Vector.z*(310/210),
                (210/310)*math.sqrt((math.pow(Vector.x,2)+math.pow(Vector.y,2)))+Vector.z*(210/310),
                0,
                360
                )
    --graph3d(crossp(Vector,Vector1),gc)
end

function graph3d(Vector,gc) 
                gc:drawLine(CenterPoint.x,
                CenterPoint.y,
                CenterPoint.x+Vector.x*(190/310)+Vector.z*(310/210)/2,
                CenterPoint.y+(-210/310)*Vector.y-Vector.z/2);
    gc:drawString("["..Vector.x..","..Vector.y..","..Vector.z.."]",CenterPoint.x+Vector.x*(190/310)+Vector.z*(310/210)/2+6,CenterPoint.y+(-210/310)*Vector.y-Vector.z/2-6);
    gc:drawArc(CenterPoint.x+Vector.x*(190/310)+Vector.z*(310/210)/2-1,CenterPoint.y+(-210/310)*Vector.y-Vector.z/2-1,3,3,0,360)
  
end




function crossp(Vect1,Vect2)
       Vectz = {}
       Vectz.x = Vect1.y*Vect2.z - Vect2.y*Vect1.z
       Vectz.y = Vect1.z*Vect2.x - Vect1.x*Vect2.z
       Vectz.z = Vect1.x*Vect2.y - Vect1.y*Vect2.x
       
return Vectz
end








function DivergenceSquare(Fun)
    local newvector = {}
    newvector.x = "0";
    newvector.y = "0";
    newvector.z = "0";

    if(Fun.x:len() > 0) then
    Fun.x = Fun.x:gsub("exp(","^")
    Fun.x = Fun.x:gsub("x","χ")

    if(Fun.x:find("χ",0)) then
        if(math.evalStr("("..Fun.x..",χ)")) then
            newvector.x = math.evalStr("("..Fun.x..",χ)");

            else newvector.x = "0";
            end
        else newvector.x = "0";
        end
    else newvector.x = "0";
    end
   
    if(Fun.y:len() > 0) then
    Fun.y = Fun.y:gsub("exp(","^")
    Fun.y = Fun.y:gsub("x","χ")
 
    if(Fun.y:find("y",0)) then
        if(math.evalStr("("..Fun.y..",y)")) then
        newvector.y =math.evalStr("("..Fun.y..",y)");
        else newvector.y ="0";
        end
        else newvector.y ="0";
        end
    else newvector.y ="0";
    end
   
    if(Fun.z:len() > 0) then 
    Fun.z = Fun.z:gsub("exp(","^")        
    Fun.z = Fun.z:gsub("x","χ")

    if(Fun.z:find('z',0) ~= nil) then
        if(math.evalStr("("..Fun.z..",z)") ~= nil)then
            newvector.z = math.evalStr("("..Fun.z..",z)");
        
        end
        else newvector.z ="0";
        end
    else newvector.z = "0";
    end        
        
    Fun.x = Fun.x:gsub("χ","x")
    Fun.y = Fun.y:gsub("χ","x")
    Fun.z = Fun.z:gsub("χ","x")

    
    newvector.x = newvector.x:gsub("χ","x")
    newvector.y = newvector.y:gsub("χ","x")
    newvector.z = newvector.z:gsub("χ","x")    
    newvector.x = newvector.x:gsub("υ","y")

         
    return newvector ;
end








function DivergenceSquareCylind(Fun)
    local newvector = {}
    newvector.x = "0";
    newvector.y = "0";
    newvector.z = "0";

    if(Fun.x:len() > 0) then
    Fun.x = Fun.x:gsub("exp(","^")
    Fun.x = Fun.x:gsub("x","χ")

    if(Fun.x:find("χ",0)) then
        if(math.evalStr("(χ*"..Fun.x..",χ)")) then
            newvector.x = math.evalStr("(1/χ)*(χ*"..Fun.x..",χ)");

            else newvector.x = "0";
            end
        else newvector.x = "0";
        end
    else newvector.x = "0";
    end
   
    if(Fun.y:len() > 0) then
    Fun.y = Fun.y:gsub("exp(","^")
    Fun.y = Fun.y:gsub("x","χ")
 
    if(Fun.y:find("y",0)) then
        if(math.evalStr("("..Fun.y..",y)")) then
        newvector.y =math.evalStr("("..Fun.y..",y)");
        else newvector.y ="0";
        end
        else newvector.y ="0";
        end
    else newvector.y ="0";
    end
   
    if(Fun.z:len() > 0) then 
    Fun.z = Fun.z:gsub("exp(","^")        
    Fun.z = Fun.z:gsub("x","χ")

    if(Fun.z:find('z',0) ~= nil) then
        if(math.evalStr("("..Fun.z..",z)") ~= nil)then
            newvector.z = math.evalStr("("..Fun.z..",z)");
        
        end
        else newvector.z ="0";
        end
    else newvector.z = "0";
    end        
        
    Fun.x = Fun.x:gsub("χ","x")
    Fun.y = Fun.y:gsub("χ","x")
    Fun.z = Fun.z:gsub("χ","x")

    
    newvector.x = newvector.x:gsub("χ","x")
    newvector.y = newvector.y:gsub("χ","x")
    newvector.z = newvector.z:gsub("χ","x")    
    newvector.x = newvector.x:gsub("υ","y")

         
    return newvector ;
end








function Curl(Fun)
    newstr="";
    Xdz = "0";
    Xdy = "0";
    Ydx = "0";
    Ydz = "0";
    Zdy = "0";
    Zdx = "0";
    part = {};
    part.x = "0";
    part.y = "0";
    part.z = "0";
    
    if(Fun.x:len() > 0) then
        Fun.x = Fun.x:gsub("exp(","^")
        Fun.x = Fun.x:gsub("x","χ")
                if(math.evalStr("("..Fun.x..",y)")) then
                    Xdy = math.evalStr("("..Fun.x..",y)")
                else
                    Xdy = "0"
                    end
                if(math.evalStr("("..Fun.x..",z)")) then
                    Xdz = math.evalStr("("..Fun.x..",z)")
                else
                    Xdz = "0"    
                    end
        --        end
        else 
           Xdz = "0"
           Xdy = "0"    
    end
    
    if(Fun.y:len() > 0) then
    Fun.y = Fun.y:gsub("exp(","^")
    Fun.y = Fun.y:gsub("x","χ")
            if(math.evalStr("("..Fun.y..",χ)") ~= nil) then
                Ydx = math.evalStr("("..Fun.y..",χ)")
            else
                Ydx = "0"
                end
            if(math.evalStr("("..Fun.y..",z)") ~= nil) then
                Ydz = math.evalStr("("..Fun.y..",z)")
            else
                Ydz = "0"
                end
    --        end
    else Ydx = "0"
         Ydz = "0"
    end

    if(Fun.z:len() > 0) then
    Fun.z = Fun.z:gsub("exp(","^")
    Fun.z = Fun.z:gsub("x","χ")

            if(math.evalStr("("..Fun.z..",χ)") ~= nil)then
                Zdx = math.evalStr("("..Fun.z..",χ)")
            else
                Zdx = "0"
                end
            if(math.evalStr("("..Fun.z..",y)") ~= nil)then
                Zdy = math.evalStr("("..Fun.z..",y)")
            else
                Zdy = "0"; 
                end

    else
        Zdx = "0"; 
        Zdy = "0";
        end

    if(math.evalStr(Zdy.."-"..Ydz)) then
        part.x = math.evalStr(Zdy.."-"..Ydz)
        else  part.x = "0"
        end
        
    if(math.evalStr(Xdz.."-"..Zdx))then
        part.y = math.evalStr(Xdz.."-"..Zdx)
        else part.y = "0"
    end
    
    if(math.evalStr(Ydx.."-"..Xdy)~= nil)then
        part.z = math.evalStr(Ydx.."-"..Xdy)
        else part.z = "0";
    end
  
    part.x = part.x:gsub("χ","x")
    part.x = part.x:gsub("υ","y")
    part.y = part.y:gsub("χ","x")
    part.y = part.y:gsub("υ","y")        
    part.z = part.z:gsub("χ","x")
    part.z = part.z:gsub("υ","y")
  
    if(Fun.x:len() > 0 ) then
        Fun.x = Fun.x:gsub("χ","x")
        Fun.x = Fun.x:gsub("Υ","y")
        Fun.x = Fun.x:gsub("κ","z")
    end
    if(Fun.y:len() > 0 ) then
        Fun.y = Fun.y:gsub("χ","x")
        Fun.y = Fun.y:gsub("Υ","y")
        Fun.y = Fun.y:gsub("κ","z")
    end
    if(Fun.z:len() > 0 ) then
        Fun.z = Fun.z:gsub("χ","x")
        Fun.z = Fun.z:gsub("Υ","y")
        Fun.z = Fun.z:gsub("κ","z")
    end
    return part

end











function VectorsComputer(gc)
    gc:setColorRGB(0xffffff);
    gc:fillRect(0,0,320,250);
    gc:setColorRGB(0x0);
    gc:drawLine(0,12,320,12);
    gc:setColorRGB(0xaaaaaa);
    gc:drawLine(0,58,320,58);
    gc:drawLine(0,72,320,72);
    gc:drawLine(0,85,320,85);
    gc:drawLine(0,136,320,136);
    
    gc:fillRect(0,0,320,12)
    gc:setColorRGB(0);
    gc:setFont("serif","r",6);
    if(VectorParts.Index == 1)then
        gc:setColorRGB(0xff0000);
        end
    
    if(VsystemType == 0) then
        gc:drawString("x : "..VectorParts.x,40-VectorParts.x:len()*2,0);
    elseif(VsystemType == 1)then
        gc:drawString("r : "..VectorParts.x,40-VectorParts.x:len()*2,0);
    else
        gc:drawString("r : "..VectorParts.x,40-VectorParts.x:len()*2,0);
    end    
   
    gc:setColorRGB(0);
    if(VectorParts.Index == 2)then
        gc:setColorRGB(0xff0000);
        end   
   
    if(VsystemType == 0) then
        gc:drawString("y : "..VectorParts.y,150-VectorParts.y:len()*2,0);
    elseif(VsystemType == 1)then
        gc:drawString("Φ : "..VectorParts.y,150-VectorParts.y:len()*2,0);
    else
        gc:drawString("θ : "..VectorParts.y,150-VectorParts.y:len()*2,0);
    end    
              
    gc:setColorRGB(0); 
    if(VectorParts.Index == 3)then
            gc:setColorRGB(0xff0000);
            end    
    if(VsystemType == 0) then
         gc:drawString("z : "..VectorParts.z,250-VectorParts.z:len()*2,0);
    elseif(VsystemType == 1)then
         gc:drawString("z : "..VectorParts.z,250-VectorParts.z:len()*2,0);
    else
         gc:drawString("Φ : "..VectorParts.z,250-VectorParts.z:len()*2,0);
    end    
    
    gc:setColorRGB(0); 
             
            gc:setFont("sansserif","r",6);
            local firstDeriv  = {};
            
            if(VsystemType == 0) then firstDeriv = DivergenceSquare(VectorParts) ;
            else firstDeriv = DivergenceSquareCylind(VectorParts) ;
            end
            
            local Rotation    = Curl(VectorParts);
            gc:setColorRGB(0x456789);
            gc:drawString("Note: For Gradient Put The Hole Vector Equation In X Field.",0,45);
            
            Grad ={};
            Grad.x = gradient(VectorParts,"x")
            Grad.y = gradient(VectorParts,"y")
            Grad.z = gradient(VectorParts,"z")
            gc:drawString("Gradient:    ∇F=   "..Grad.x,0,12);
            gc:drawString("ŷ "..Grad.y,75,22);
            gc:drawString("ž "..Grad.z,75,32);
            
            gc:drawString("(Scalar) Divergence ∇.f =  ",0,59);
            if(math.evalStr(firstDeriv.x:gsub("x","χ").." + "..firstDeriv.y:gsub("x","χ").." + " .. firstDeriv.z:gsub("x","χ"))) then 
            gc:drawString(" "..math.evalStr(firstDeriv.x:gsub("x","χ").." + "..firstDeriv.y:gsub("x","χ").." + " .. firstDeriv.z:gsub("x","χ")):gsub("χ","x"),110,59);
            end

            gc:drawString("(Scalar) Laplacian ∇²f  ",0,72);
            gc:drawString("= "..laplacian(),102,72);

            gc:drawString("CURL  ∇xf     =  ",0,86);
            gc:drawString(" "..Rotation.x,75,86);
            gc:drawString("ŷ "..Rotation.y,75,96);
            gc:drawString("ž "..Rotation.z,75,106);                        
            gc:setColorRGB(0xff0000);
            
            
            
            if(VsystemConvertTo)then 
                gc:drawString("(r,φ,z)                             ( Cylindrical )       [↓↑]Change Type.  [c]Copy.",0,124);
                if(strClynd.x:len() > 80)then
                    XpartLength = math.floor(strClynd.x:len()/2) 
                    gc:drawString("r = "..strClynd.x:sub(1,XpartLength-1),0,137);
                    while(XpartLength < strClynd.x:len())do
                        if(not(strClynd.x:sub(XpartLength,XpartLength) == ' '))then
                          break
                        else XpartLength = XpartLength+1;
                        end 
                        end
                    gc:drawString(strClynd.x:sub((XpartLength),strClynd.x:len()),15,147);
                else gc:drawString("r = "..strClynd.x,0,137);
                end
                if(strClynd.y:len() > 80)then
                     gc:drawString("Φ= "..strClynd.y:sub(1,strClynd.y:len()/2),0,157);
                     gc:drawString(strClynd.y:sub(strClynd.y:len()/2+1,strClynd.y:len()),15,167);
                else gc:drawString("Φ= "..strClynd.y,0,157);
                end
                
                if(strClynd.z:len() > 80)then
                     gc:drawString("ž = "..strClynd.z:sub(1,strClynd.z:len()/2),0,177);
                     gc:drawString(strClynd.z:sub(strClynd.z:len()/2+1,strClynd.z:len()),15,187);
                else gc:drawString("ž = "..strClynd.z,0,177);
                end
            else
                gc:drawString("(r,θ,φ) , 0≤θ≤π                  ( Spherical )        [↓↑]Change Type.  [c]Copy. ",0,124);
                if(strSphere.r:len()>70)then
                     XpartLength = math.floor(strSphere.r:len()/2) 
                     if(string.byte(strSphere.r:sub(XpartLength+1,XpartLength+1)) == 134 ) then XpartLength = XpartLength + 1; end 
                     gc:drawString("r = "..strSphere.r:sub(1,XpartLength),0,137);
                     
                     while(XpartLength < strSphere.r:len())do
                         if(string.byte(strSphere.r:sub(XpartLength,XpartLength)) >= 0x20 and string.byte(strSphere.r:sub(XpartLength,XpartLength)) <= 0x7f ) then
                           break;
                         else XpartLength = XpartLength+1;
                        end 
                     end
                     gc:drawString(strSphere.r:sub(XpartLength,strSphere.r:len()),15,147);
                else gc:drawString("r = "..strSphere.r,0,137);
                end
                --kajdshkajhdflkahfgklafg;adfkl;lakfg;lajfgdl;jafdlgjadf;lgja;ldfj;lajfdgl;jafdlgjfdl;gj
                if(strSphere.theta:len()>70)then
                     XpartLength = math.floor(strSphere.theta:len()/2) 
                     
                     if(string.byte(strSphere.theta:sub(XpartLength+1,XpartLength+1)) == 134 ) then XpartLength = XpartLength + 1; end 
                     gc:drawString("Φ = "..strSphere.theta:sub(1,XpartLength),0,157);
                     while(XpartLength < strSphere.theta:len())do
                         if(string.byte(strSphere.theta:sub(XpartLength,XpartLength)) >= 0x20 and string.byte(strSphere.theta:sub(XpartLength,XpartLength)) <= 0x7f ) then
                           break
                         else XpartLength = XpartLength+1;
                        end 
                     end
                    gc:drawString(strSphere.theta:sub(XpartLength,strSphere.theta:len()),15,167);
                else gc:drawString("Φ= "..strSphere.theta,0,157);
                end
                if(strSphere.phi:len()>70)then
                     XpartLength = math.floor(strSphere.phi:len()/2) 
                     gc:drawString("θ = "..strSphere.phi:sub(1,XpartLength),0,177);
                     if(string.byte(strSphere.phi:sub(XpartLength+1,XpartLength+1)) == 134 ) then XpartLength = XpartLength + 1; end 
                     while(XpartLength < strSphere.phi:len())do
                         if(not(strSphere.phi:sub(XpartLength,XpartLength) == ' '))then
                           break
                         else XpartLength = XpartLength+1;
                        end 
                     end
                    gc:drawString(strSphere.phi:sub(XpartLength,strSphere.phi:len()),15,187);
                else gc:drawString("θ = ",0,177);
                end
                
                
            end
    gc:setColorRGB(0,200,200)
    
    if(tonumber(VectorParts.x) and tonumber(VectorParts.y) and tonumber(VectorParts.z))then   
        if(not(VectorParts.x:len() == 1 and VectorParts.x == "-") and 
           not(VectorParts.y:len() == 1 and VectorParts.y == "-") and
           not(VectorParts.z:len() == 1 and VectorParts.z == "-")
        )then    
            gc:drawString(math.evalStr((VectorParts.x).."/sqrt("..(VectorParts.x)*(VectorParts.x)+(VectorParts.y)*(VectorParts.y)+(VectorParts.z)*(VectorParts.z)..")"):sub(1,7).."∠"..math.evalStr("approx(cos("..(VectorParts.x).."/".."sqrt("..(VectorParts.x)*(VectorParts.x)+(VectorParts.y)*(VectorParts.y)+(VectorParts.z)*(VectorParts.z)..")))"):sub(1,6),30,115);
            gc:drawString(math.evalStr((VectorParts.y).."/sqrt("..(VectorParts.x)*(VectorParts.x)+(VectorParts.y)*(VectorParts.y)+(VectorParts.z)*(VectorParts.z)..")"):sub(1,7).."∠"..math.evalStr("approx(cos("..(VectorParts.y).."/".."sqrt("..(VectorParts.x)*(VectorParts.x)+(VectorParts.y)*(VectorParts.y)+(VectorParts.z)*(VectorParts.z)..")))"):sub(1,6),130,115);
            gc:drawString(math.evalStr((VectorParts.z).."/sqrt("..(VectorParts.x)*(VectorParts.x)+(VectorParts.y)*(VectorParts.y)+(VectorParts.z)*(VectorParts.z)..")"):sub(1,7).."∠"..math.evalStr("approx(cos("..(VectorParts.z).."/".."sqrt("..(VectorParts.x)*(VectorParts.x)+(VectorParts.y)*(VectorParts.y)+(VectorParts.z)*(VectorParts.z)..")))"):sub(1,6),230,115);
        end
    end
    gc:setColorRGB(50,50,50)
    gc:fillRect(0,200,380,15)
    gc:setColorRGB(0xFFFFFF)
    gc:setFont("serif","r",6);
    gc:drawString(Footer_str,2,200,"top");
    gc:drawLine(0,200,wdth,200)
end




function TwoVectorsComputer(gc)
      GeneralColor = 0xaaaaaa 
      --math.setEvalSettings({{1,4},{3,1},{5, 2},{'Angle Mode','Degree'},})
      gc:setColorRGB(0x0);
      gc:fillRect(0,0,320,250);
      --gc:setColorRGB(0x0);
      --gc:drawLine(0,30,320,30);
      
      gc:setColorRGB(0xaaaaaa);
      gc:setFont("serif","r",6);        

      gc:setColorRGB(0x333333);

      gc:drawLine(0,43,320,43);
      gc:drawLine(0,84,320,84);
      gc:drawLine(0,1,320,1);
      gc:setColorRGB(0x555555);
      gc:drawLine(0,132,320,132);
      gc:drawLine(0,144,320,144);
      gc:drawLine(320/6,145,320/6,220);
      gc:drawLine(320/3+320/6,145,320/3+320/6,220);
      gc:drawLine(320/3*2+320/6,145,320/3*2+320/6,220);
      gc:drawLine(0,178,320,178);
      
      
      gc:setColorRGB(0xffffff);

      gc:drawLine(320/3,145,320/3,220);
      gc:drawLine(320/3*2,145,320/3*2,220);     
      gc:drawString("y                                   y                                  z",50,142);
      gc:drawString("x                                  z                                 x",100,173);
      
      
      
      if(GraphingFlag) then gc:setColorRGB(0xff00ff); gc:fillArc( 157  , 105  ,5 ,5,0 ,360); gc:setColorRGB(0xffffff); gc:drawString("Center",145,90);  end
      AnglesOfA = AngleToPlanes(TwoVectors.Vector_A);
      AnglesOfB = AngleToPlanes(TwoVectors.Vector_B);
      
      
      gc:drawString("    Press Tab To Activate The cursor Garphing , [▶][◀] ChangePlanes",5,132);
      
      if(TwoVectors.YAxis and TwoVectors.XAxis == 0) then gc:setColorRGB(0xffffff); else gc:setColorRGB(0xff0000); end 
      gc:drawString("Ax : ".. TwoVectors.Vector_A[0] ,40- TwoVectors.Vector_A[0] :len()*2-20,2);
      if(AnglesOfA[0]) then gc:drawString("∠ : ".. AnglesOfA[0].."°" ,15,12); end
      if(not TwoVectors.YAxis and TwoVectors.XAxis == 0) then gc:setColorRGB(0xffffff); else gc:setColorRGB(0xff00); end 
      gc:drawString("Bx : ".. TwoVectors.Vector_B[0] ,40- TwoVectors.Vector_B[0] :len()*2-20,22);
      if(AnglesOfB[0]) then gc:drawString("∠ : ".. AnglesOfB[0].."°" ,15,32);end
      if(TwoVectors.YAxis and TwoVectors.XAxis == 1) then gc:setColorRGB(0xffffff); else gc:setColorRGB(0xff0000); end 
      gc:drawString("Ay : "..TwoVectors.Vector_A[1] ,160-TwoVectors.Vector_A[1] :len()*2-20,2);
      if(AnglesOfA[1]) then gc:drawString("∠ : ".. AnglesOfA[1].."°" ,135,12);end
      if(not TwoVectors.YAxis and TwoVectors.XAxis == 1) then gc:setColorRGB(0xffffff); else gc:setColorRGB(0xff00); end 
      gc:drawString("By : ".. TwoVectors.Vector_B[1] ,160- TwoVectors.Vector_B[1] :len()*2-20,22);
      if(AnglesOfB[1]) then gc:drawString("∠ : ".. AnglesOfB[1].."°" ,135,32);end
      if(TwoVectors.YAxis and TwoVectors.XAxis == 2) then gc:setColorRGB(0xffffff); else gc:setColorRGB(0xff0000); end 
      gc:drawString("Az : "..TwoVectors.Vector_A[2] ,270-TwoVectors.Vector_A[2]:len()*2-20,2);
      if(AnglesOfA[2]) then gc:drawString("∠ : ".. AnglesOfA[2].."°" ,245,12);end
      if(not TwoVectors.YAxis and TwoVectors.XAxis == 2) then gc:setColorRGB(0xffffff); else gc:setColorRGB(0xff00); end 
      gc:drawString("Bz : ".. TwoVectors.Vector_B[2] ,270- TwoVectors.Vector_B[2] :len()*2-20,22);
      if(AnglesOfB[2]) then gc:drawString("∠ : ".. AnglesOfB[2].."°" ,245,32);end
      

      if(math.evalStr("crossp(["..TwoVectors.Vector_A[0]..","..TwoVectors.Vector_A[1]..","..TwoVectors.Vector_A[2].."],["..TwoVectors.Vector_B[0]..","..TwoVectors.Vector_B[1]..","..TwoVectors.Vector_B[2].."])")) then
      
         
         VectorCrossed = crosspOfTwoVectorClass(TwoVectors.Vector_A,TwoVectors.Vector_B)
         CrossedVecto ={};
         CrossedVecto[0] = tostring(CorrectTheNumberStrings(VectorCrossed.x));
         CrossedVecto[1] = tostring(CorrectTheNumberStrings(VectorCrossed.y));
         CrossedVecto[2] = tostring(CorrectTheNumberStrings(VectorCrossed.z));
         AnglesaOfAxB = AngleToPlanes(CrossedVecto);
         gc:setColorRGB(0x55ff);
         gc:drawString("AxB x  "..VectorCrossed.x,15,42);
         gc:drawString("AxB y  "..VectorCrossed.y,135,42);
         gc:drawString("AxB z  "..VectorCrossed.z,245,42);
         gc:drawString("∠  ".. AnglesaOfAxB[0].."°" ,15,52);
         gc:drawString("∠  ".. AnglesaOfAxB[1].."°" ,135,52);
         gc:drawString("∠  ".. AnglesaOfAxB[2].."°" ,245,52);
         
         VectorCrossed = crosspOfTwoVectorClass(TwoVectors.Vector_B,TwoVectors.Vector_A)
         CrossedVecto1 ={};
         CrossedVecto1[0] = VectorCrossed.x;
         CrossedVecto1[1] = VectorCrossed.y;
         CrossedVecto1[2] = VectorCrossed.z;
         gc:setColorRGB(0xffff00);
         gc:drawString("BxA x  "..VectorCrossed.x ,15,62);
         gc:drawString("BxA y  "..VectorCrossed.y ,135,62);
         gc:drawString("BxA z  "..VectorCrossed.z ,245,62);        
         gc:drawString("∠  ".. 180 - AnglesaOfAxB[0].."°" ,15,72);
         gc:drawString("∠  ".. 180 - AnglesaOfAxB[1].."°" ,135,72);
         gc:drawString("∠  ".. 180 - AnglesaOfAxB[2].."°" ,245,72);          
          
          --GraphPart
               
      xNegFlag = false
      yNegFlag = false 
      zNegFlag = false;
        
      V_BxA = GraphSetup(CrossedVecto1)
      if(tonumber(V_BxA.x) == nil)then V_BxA.x = tonumber(V_BxA.x:sub(4,V_BxA.x:len())) ; xNegFlag = true ;end;
      if(tonumber(V_BxA.x) ~= nil)then 
        V_BxA.x = V_BxA.x * 52;
      if(tonumber(V_BxA.y) == nil)then V_BxA.y = tonumber(V_BxA.y:sub(4,V_BxA.y:len())) ; yNegFlag = true ;end;
      V_BxA.y = V_BxA.y * 35;
      if(tonumber(V_BxA.z) == nil)then V_BxA.z = tonumber(V_BxA.z:sub(4,V_BxA.z:len())) ; zNegFlag = true ;end;
      V_BxA.z = V_BxA.z * 52;

      
                   if(xNegFlag) then
                                 if(yNegFlag) then  gc:setColorRGB(0xFFFF00);
                                                    gc:drawLine(53,178,53-V_BxA.x,178+V_BxA.y );
                                                    gc:setColorRGB(0xFF0000);
                                                    gc:fillArc( 53-V_BxA.x-1  , 178+V_BxA.y-1  ,2  ,2,0 ,360);
                                                    gc:setColorRGB(0xFFFF00);
                                                    if(zNegFlag)then 
                                                            gc:drawLine(160,178,159-V_BxA.z,178+V_BxA.y ); 
                                                            gc:drawLine(266,178,267-V_BxA.x,178+V_BxA.z*35/52 );
                                                            gc:setColorRGB(0xFF0000);
                                                            gc:fillArc( 160-V_BxA.z-1  , 178+V_BxA.y-1  ,2  ,2,0 ,360);
                                                            gc:fillArc( 266-V_BxA.x-1  , 178+V_BxA.z*35/52-1  ,2  ,2,0 ,360);
                                                    else    gc:drawLine(160,178,160+V_BxA.z,178+V_BxA.y );
                                                            gc:drawLine(266,178,267-V_BxA.x,178-V_BxA.z*35/52 );
                                                            gc:setColorRGB(0xFF0000);
                                                            gc:fillArc( 160+V_BxA.z-1  , 178+V_BxA.y-1  ,2  ,2,0 ,360);
                                                            gc:fillArc( 266-V_BxA.x  , 178-V_BxA.z*35/52-1  ,2  ,2,0 ,360);
                                                    end
                                                    
                                 else               gc:setColorRGB(0xFFFF00);
                                                    gc:drawLine(53,178,53-V_BxA.x,178-V_BxA.y );
                                                    gc:setColorRGB(0xFF0000);
                                                    gc:fillArc( 53-V_BxA.x-1  , 178-V_BxA.y-1  ,2  ,2,0 ,360);
                                                    gc:setColorRGB(0xFFFF00);
                                                    if(zNegFlag)then 
                                                            gc:drawLine(160,178,159-V_BxA.z,178-V_BxA.y ); 
                                                            gc:drawLine(266,178,267-V_BxA.x,178+V_BxA.z*35/52 );
                                                            gc:setColorRGB(0xFF0000);
                                                            gc:fillArc( 160-V_BxA.z-1  , 178-V_BxA.y-1  ,2  ,2,0 ,360);
                                                            gc:fillArc( 266-V_BxA.x-1  , 178+V_BxA.z*35/52-1  ,2  ,2,0 ,360);
                                                    else    gc:drawLine(160,178,160+V_BxA.z,178-V_BxA.y );
                                                            gc:drawLine(266,178,267-V_BxA.x,178-V_BxA.z*35/52 );
                                                            gc:setColorRGB(0xFF0000);
                                                            gc:fillArc( 160+V_BxA.z-1  , 178-V_BxA.y-1  ,2  ,2,0 ,360);
                                                            gc:fillArc( 266-V_BxA.x  , 178-V_BxA.z*35/52-1  ,2  ,2,0 ,360);
                                                    end
                                 end
                  else 
                       if(yNegFlag) then            gc:setColorRGB(0xFFFF00);
                                                    gc:drawLine(53,178,53+V_BxA.x,178+V_BxA.y );
                                                    gc:setColorRGB(0xFF0000);
                                                    gc:fillArc( 53+V_BxA.x-1  , 178+V_BxA.y-1  ,2  ,2,0 ,360);
                                                    gc:setColorRGB(0xFFFF00);
                                                   if(zNegFlag)then 
                                                            gc:drawLine(160,178,159-V_BxA.z,178+V_BxA.y ); 
                                                            gc:drawLine(266,178,267+V_BxA.x,178+V_BxA.z*35/52 );
                                                            gc:setColorRGB(0xFF0000);
                                                            gc:fillArc( 160-V_BxA.z-1  , 178+V_BxA.y-1  ,2  ,2,0 ,360);
                                                            gc:fillArc( 266+V_BxA.x-1  , 178+V_BxA.z*35/52-1  ,2  ,2,0 ,360);
                                                    else    gc:drawLine(160,178,160+V_BxA.z,178+V_BxA.y );
                                                            gc:drawLine(266,178,267+V_BxA.x,178-V_BxA.z*35/52 );
                                                            gc:setColorRGB(0xFF0000);
                                                            gc:fillArc( 160+V_BxA.z-1  , 178+V_BxA.y-1  ,2  ,2,0 ,360);
                                                            gc:fillArc( 266+V_BxA.x  , 178-V_BxA.z*35/52-1  ,2  ,2,0 ,360);
                                                    end
                       else                         gc:setColorRGB(0xFFFF00);
                                                    gc:drawLine(53,178,53+V_BxA.x,178-V_BxA.y );
                                                    if(zNegFlag)then 
                                                            gc:drawLine(160,178,159-V_BxA.z,178-V_BxA.y ); 
                                                            gc:drawLine(266,178,267+V_BxA.x,178+V_BxA.z*35/52 );
                                                            gc:setColorRGB(0xFF0000);
                                                            gc:fillArc( 160-V_BxA.z-1  , 178-V_BxA.y-1  ,2  ,2,0 ,360);
                                                            gc:fillArc( 266+V_BxA.x-1  , 178+V_BxA.z*35/52-1  ,2  ,2,0 ,360);
                                                    else    gc:drawLine(160,178,160+V_BxA.z,178-V_BxA.y );
                                                            gc:drawLine(266,178,267+V_BxA.x,178-V_BxA.z*35/52 );
                                                            gc:setColorRGB(0xFF0000);
                                                            gc:fillArc( 160+V_BxA.z-1  , 178-V_BxA.y-1  ,2  ,2,0 ,360);
                                                            gc:fillArc( 266+V_BxA.x  , 178-V_BxA.z*35/52-1  ,2  ,2,0 ,360);
                                                    end
                                                    gc:setColorRGB(0xFF0000);
                                                    gc:fillArc( 53+V_BxA.x-1  , 178-V_BxA.y-1  ,2  ,2,0 ,360);
                       end
                  end          
            
             
       end
       
                xNegFlag = false
                yNegFlag = false 
                zNegFlag = false;
                if(tonumber(TwoVectors.Vector_A[0]) and tonumber(TwoVectors.Vector_A[1]) and tonumber(TwoVectors.Vector_A[2]) and tonumber(TwoVectors.Vector_A[0]) + tonumber(TwoVectors.Vector_A[1]) + tonumber(TwoVectors.Vector_A[2]) ~= 0 and
                   tonumber(TwoVectors.Vector_B[0]) and tonumber(TwoVectors.Vector_B[1]) and tonumber(TwoVectors.Vector_B[2]) and tonumber(TwoVectors.Vector_B[0]) + tonumber(TwoVectors.Vector_B[1]) + tonumber(TwoVectors.Vector_B[2]) ~= 0 )
                   then
                V1 = GraphSetup(TwoVectors.Vector_A)
                if(tonumber(V1.x) == nil)then V1.x = tonumber(V1.x:sub(4,V1.x:len())) ; xNegFlag = true ;end;
                V1.x = V1.x * 52;
                if(tonumber(V1.y) == nil)then V1.y = tonumber(V1.y:sub(4,V1.y:len())) ; yNegFlag = true ;end;
                V1.y = V1.y * 35;
                if(tonumber(V1.z) == nil)then V1.z = tonumber(V1.z:sub(4,V1.z:len())) ; zNegFlag = true ;end;
                V1.z = V1.z * 52;
      
                 
                if(xNegFlag) then
                               if(yNegFlag) then  gc:setColorRGB(0xff0000);
                                                  gc:drawLine(53,178,53-V1.x,178+V1.y );
                                                  gc:setColorRGB(0xffff00);
                                                  gc:fillArc( 53-V1.x-1  , 178+V1.y-1  ,2  ,2,0 ,360);
                                                  gc:setColorRGB(0xff0000);
                                                  if(zNegFlag)then 
                                                          gc:drawLine(160,178,159-V1.z,178+V1.y ); 
                                                          gc:drawLine(266,178,267-V1.x,178+V1.z*35/52 );
                                                          gc:setColorRGB(0xffff00);
                                                          gc:fillArc( 160-V1.z-1  , 178+V1.y-1  ,2  ,2,0 ,360);
                                                          gc:fillArc( 266-V1.x-1  , 178+V1.z*35/52-1  ,2  ,2,0 ,360);
                                                  else    gc:drawLine(160,178,160+V1.z,178+V1.y );
                                                          gc:drawLine(266,178,267-V1.x,178-V1.z*35/52 );
                                                          gc:setColorRGB(0xffff00);
                                                          gc:fillArc( 160+V1.z-1  , 178+V1.y-1  ,2  ,2,0 ,360);
                                                          gc:fillArc( 266-V1.x  , 178-V1.z*35/52-1  ,2  ,2,0 ,360);
                                                  end
                                                  
                               else               gc:setColorRGB(0xff0000);
                                                  gc:drawLine(53,178,53-V1.x,178-V1.y );
                                                  gc:setColorRGB(0xffff00);
                                                  gc:fillArc( 53-V1.x-1  , 178-V1.y-1  ,2  ,2,0 ,360);
                                                  gc:setColorRGB(0xff0000);
                                                  if(zNegFlag)then 
                                                          gc:drawLine(160,178,159-V1.z,178-V1.y ); 
                                                          gc:drawLine(266,178,267-V1.x,178+V1.z*35/52 );
                                                          gc:setColorRGB(0xffff00);
                                                          gc:fillArc( 160-V1.z-1  , 178-V1.y-1  ,2  ,2,0 ,360);
                                                          gc:fillArc( 266-V1.x-1  , 178+V1.z*35/52-1  ,2  ,2,0 ,360);
                                                  else    gc:drawLine(160,178,160+V1.z,178-V1.y );
                                                          gc:drawLine(266,178,267-V1.x,178-V1.z*35/52 );
                                                          gc:setColorRGB(0xffff00);
                                                          gc:fillArc( 160+V1.z-1  , 178-V1.y-1  ,2  ,2,0 ,360);
                                                          gc:fillArc( 266-V1.x  , 178-V1.z*35/52-1  ,2  ,2,0 ,360);
                                                  end
                               end
                else 
                     if(yNegFlag) then            gc:setColorRGB(0xff0000);
                                                  gc:drawLine(53,178,53+V1.x,178+V1.y );
                                                  gc:setColorRGB(0xffff00);
                                                  gc:fillArc( 53+V1.x-1  , 178+V1.y-1  ,2  ,2,0 ,360);
                                                  gc:setColorRGB(0xff0000);
                                                 if(zNegFlag)then 
                                                          gc:drawLine(160,178,159-V1.z,178+V1.y ); 
                                                          gc:drawLine(266,178,267+V1.x,178+V1.z*35/52 );
                                                          gc:setColorRGB(0xffff00);
                                                          gc:fillArc( 160-V1.z-1  , 178+V1.y-1  ,2  ,2,0 ,360);
                                                          gc:fillArc( 266+V1.x-1  , 178+V1.z*35/52-1  ,2  ,2,0 ,360);
                                                  else    gc:drawLine(160,178,160+V1.z,178+V1.y );
                                                          gc:drawLine(266,178,267+V1.x,178-V1.z*35/52 );
                                                          gc:setColorRGB(0xffff00);
                                                          gc:fillArc( 160+V1.z-1  , 178+V1.y-1  ,2  ,2,0 ,360);
                                                          gc:fillArc( 266+V1.x  , 178-V1.z*35/52-1  ,2  ,2,0 ,360);
                                                  end
                     else                         gc:setColorRGB(0xff0000);
                                                  gc:drawLine(53,178,53+V1.x,178-V1.y );
                                                  if(zNegFlag)then 
                                                          gc:drawLine(160,178,159-V1.z,178-V1.y ); 
                                                          gc:drawLine(266,178,267+V1.x,178+V1.z*35/52 );
                                                          gc:setColorRGB(0xffff00);
                                                          gc:fillArc( 160-V1.z-1  , 178-V1.y-1  ,2  ,2,0 ,360);
                                                          gc:fillArc( 266+V1.x-1  , 178+V1.z*35/52-1  ,2  ,2,0 ,360);
                                                  else    gc:drawLine(160,178,160+V1.z,178-V1.y );
                                                          gc:drawLine(266,178,267+V1.x,178-V1.z*35/52 );
                                                          gc:setColorRGB(0xffff00);
                                                          gc:fillArc( 160+V1.z-1  , 178-V1.y-1  ,2  ,2,0 ,360);
                                                          gc:fillArc( 266+V1.x  , 178-V1.z*35/52-1  ,2  ,2,0 ,360);
                                                  end
                                                  gc:setColorRGB(0xffff00);
                                                  gc:fillArc( 53+V1.x-1  , 178-V1.y-1  ,2  ,2,0 ,360);
                     end
                end          
      
      
      
      
      
                            
                xNegFlag = false
                yNegFlag = false 
                zNegFlag = false;
           
                V2 = GraphSetup(TwoVectors.Vector_B)
                
                if(not (V2.x == -9321.0978 or V2.y == -9321.0978 or V2.z == -9321.0978)) then 
                
                if(tonumber(V2.x) == nil)then 
                V2.x = tonumber(V2.x:sub(4,V2.x:len())) ; xNegFlag = true ;end;
                V2.x = V2.x * 52;
                if(tonumber(V2.y) == nil)then V2.y = tonumber(V2.y:sub(4,V2.y:len())) ; yNegFlag = true ;end;
                V2.y = V2.y * 35;
                if(tonumber(V2.z) == nil)then V2.z = tonumber(V2.z:sub(4,V2.z:len())) ; zNegFlag = true ;end;
                V2.z = V2.z * 52;
      
                 if(xNegFlag) then
                               if(yNegFlag) then  gc:setColorRGB(0x00FF00);
                                                  gc:drawLine(53,178,53-V2.x,178+V2.y );
                                                  gc:setColorRGB(0xffff00);
                                                  gc:fillArc( 53-V2.x-1  , 178+V2.y-1  ,2  ,2,0 ,360);
                                                  gc:setColorRGB(0x00FF00);
                                                  if(zNegFlag)then 
                                                          gc:drawLine(160,178,159-V2.z,178+V2.y ); 
                                                          gc:drawLine(266,178,267-V2.x,178+V2.z*35/52 );
                                                          gc:setColorRGB(0xffff00);
                                                          gc:fillArc( 160-V2.z-1  , 178+V2.y-1  ,2  ,2,0 ,360);
                                                          gc:fillArc( 266-V2.x-1  , 178+V2.z*35/52-1  ,2  ,2,0 ,360);
                                                  else    gc:drawLine(160,178,160+V2.z,178+V2.y );
                                                          gc:drawLine(266,178,267-V2.x,178-V2.z*35/52 );
                                                          gc:setColorRGB(0xffff00);
                                                          gc:fillArc( 160+V2.z-1  , 178+V2.y-1  ,2  ,2,0 ,360);
                                                          gc:fillArc( 266-V2.x  , 178-V2.z*35/52-1  ,2  ,2,0 ,360);
                                                  end
                                                  
                               else               gc:setColorRGB(0x00FF00);
                                                  gc:drawLine(53,178,53-V2.x,178-V2.y );
                                                  gc:setColorRGB(0xffff00);
                                                  gc:fillArc( 53-V2.x-1  , 178-V2.y-1  ,2  ,2,0 ,360);
                                                  gc:setColorRGB(0x00FF00);
                                                  if(zNegFlag)then 
                                                          gc:drawLine(160,178,159-V2.z,178-V2.y ); 
                                                          gc:drawLine(266,178,267-V2.x,178+V2.z*35/52 );
                                                          gc:setColorRGB(0xffff00);
                                                          gc:fillArc( 160-V2.z-1  , 178-V2.y-1  ,2  ,2,0 ,360);
                                                          gc:fillArc( 266-V2.x-1  , 178+V2.z*35/52-1  ,2  ,2,0 ,360);
                                                  else    gc:drawLine(160,178,160+V2.z,178-V2.y );
                                                          gc:drawLine(266,178,267-V2.x,178-V2.z*35/52 );
                                                          gc:setColorRGB(0xffff00);
                                                          gc:fillArc( 160+V2.z-1  , 178-V2.y-1  ,2  ,2,0 ,360);
                                                          gc:fillArc( 266-V2.x  , 178-V2.z*35/52-1  ,2  ,2,0 ,360);
                                                  end
                               end
                else 
                     if(yNegFlag) then            gc:setColorRGB(0x00FF00);
                                                  gc:drawLine(53,178,53+V2.x,178+V2.y );
                                                  gc:setColorRGB(0xffff00);
                                                  gc:fillArc( 53+V2.x-1  , 178+V2.y-1  ,2  ,2,0 ,360);
                                                  gc:setColorRGB(0x00FF00);
                                                 if(zNegFlag)then 
                                                          gc:drawLine(160,178,159-V2.z,178+V2.y ); 
                                                          gc:drawLine(266,178,267+V2.x,178+V2.z*35/52 );
                                                          gc:setColorRGB(0xffff00);
                                                          gc:fillArc( 160-V2.z-1  , 178+V2.y-1  ,2  ,2,0 ,360);
                                                          gc:fillArc( 266+V2.x-1  , 178+V2.z*35/52-1  ,2  ,2,0 ,360);
                                                  else    gc:drawLine(160,178,160+V2.z,178+V2.y );
                                                          gc:drawLine(266,178,267+V2.x,178-V2.z*35/52 );
                                                          gc:setColorRGB(0xffff00);
                                                          gc:fillArc( 160+V2.z-1  , 178+V2.y-1  ,2  ,2,0 ,360);
                                                          gc:fillArc( 266+V2.x  , 178-V2.z*35/52-1  ,2  ,2,0 ,360);
                                                  end
                     else                         gc:setColorRGB(0x00FF00);
                                                  gc:drawLine(53,178,53+V2.x,178-V2.y );
                                                  if(zNegFlag)then 
                                                          gc:drawLine(160,178,159-V2.z,178-V2.y ); 
                                                          gc:drawLine(266,178,267+V2.x,178+V2.z*35/52 );
                                                          gc:setColorRGB(0xffff00);
                                                          gc:fillArc( 160-V2.z-1  , 178-V2.y-1  ,2  ,2,0 ,360);
                                                          gc:fillArc( 266+V2.x-1  , 178+V2.z*35/52-1  ,2  ,2,0 ,360);
                                                  else    gc:drawLine(160,178,160+V2.z,178-V2.y );
                                                          gc:drawLine(266,178,267+V2.x,178-V2.z*35/52 );
                                                          gc:setColorRGB(0xffff00);
                                                          gc:fillArc( 160+V2.z-1  , 178-V2.y-1  ,2  ,2,0 ,360);
                                                          gc:fillArc( 266+V2.x  , 178-V2.z*35/52-1  ,2  ,2,0 ,360);
                                                  end
                                                  gc:setColorRGB(0xffff00);
                                                  gc:fillArc( 53+V2.x-1  , 178-V2.y-1  ,2  ,2,0 ,360);
                     end
                end          
      
      
                xNegFlag = false
                yNegFlag = false 
                zNegFlag = false;
                end
                V3 = GraphSetup(CrossedVecto)
                
                if((TwoVectors.Vector_A[0] ~= TwoVectors.Vector_B[0] and TwoVectors.Vector_A[1] ~= TwoVectors.Vector_B[1] and TwoVectors.Vector_A[2] ~= TwoVectors.Vector_B[2])) then 
                
                if(tonumber(V3.x) == nil)then V3.x = tonumber(V3.x:sub(4,V3.x:len())) ; xNegFlag = true ;end;
                V3.x = V3.x * 52;
                if(tonumber(V3.y) == nil)then V3.y = tonumber(V3.y:sub(4,V3.y:len())) ; yNegFlag = true ;end;
                V3.y = V3.y * 35;
                if(tonumber(V3.z) == nil)then V3.z = tonumber(V3.z:sub(4,V3.z:len())) ; zNegFlag = true ;end;
                V3.z = V3.z * 52;
      
                if(xNegFlag) then
                               if(yNegFlag) then  gc:setColorRGB(0x2222ff);
                                                  gc:drawLine(53,178,53-V3.x,178+V3.y );
                                                  gc:setColorRGB(0xffff00);
                                                  gc:fillArc( 53-V3.x-1  , 178+V3.y-1  ,2  ,2,0 ,360);
                                                  gc:setColorRGB(0x2222ff);
                                                  if(zNegFlag)then 
                                                          gc:drawLine(160,178,159-V3.z,178+V3.y ); 
                                                          gc:drawLine(266,178,267-V3.x,178+V3.z*35/52 );
                                                          gc:setColorRGB(0xffff00);
                                                          gc:fillArc( 160-V3.z-1  , 178+V3.y-1  ,2  ,2,0 ,360);
                                                          gc:fillArc( 266-V3.x-1  , 178+V3.z*35/52-1  ,2  ,2,0 ,360);
                                                  else    gc:drawLine(160,178,160+V3.z,178+V3.y );
                                                          gc:drawLine(266,178,267-V3.x,178-V3.z*35/52 );
                                                          gc:setColorRGB(0xffff00);
                                                          gc:fillArc( 160+V3.z-1  , 178+V3.y-1  ,2  ,2,0 ,360);
                                                          gc:fillArc( 266-V3.x  , 178-V3.z*35/52-1  ,2  ,2,0 ,360);
                                                  end
                                                  
                               else               gc:setColorRGB(0x2222ff);
                                                  gc:drawLine(53,178,53-V3.x,178-V3.y );
                                                  gc:setColorRGB(0xffff00);
                                                  gc:fillArc( 53-V3.x-1  , 178-V3.y-1  ,2  ,2,0 ,360);
                                                  gc:setColorRGB(0x2222ff);
                                                  if(zNegFlag)then 
                                                          gc:drawLine(160,178,159-V3.z,178-V3.y ); 
                                                          gc:drawLine(266,178,267-V3.x,178+V3.z*35/52 );
                                                          gc:setColorRGB(0xffff00);
                                                          gc:fillArc( 160-V3.z-1  , 178-V3.y-1  ,2  ,2,0 ,360);
                                                          gc:fillArc( 266-V3.x-1  , 178+V3.z*35/52-1  ,2  ,2,0 ,360);
                                                  else    gc:drawLine(160,178,160+V3.z,178-V3.y );
                                                          gc:drawLine(266,178,267-V3.x,178-V3.z*35/52 );
                                                          gc:setColorRGB(0xffff00);
                                                          gc:fillArc( 160+V3.z-1  , 178-V3.y-1  ,2  ,2,0 ,360);
                                                          gc:fillArc( 266-V3.x  , 178-V3.z*35/52-1  ,2  ,2,0 ,360);
                                                  end
                               end
                else 
                     if(yNegFlag) then            gc:setColorRGB(0x2222ff);
                                                  gc:drawLine(53,178,53+V3.x,178+V3.y );
                                                  gc:setColorRGB(0xffff00);
                                                  gc:fillArc( 53+V3.x-1  , 178+V3.y-1  ,2  ,2,0 ,360);
                                                  gc:setColorRGB(0x2222ff);
                                                 if(zNegFlag)then 
                                                          gc:drawLine(160,178,159-V3.z,178+V3.y ); 
                                                          gc:drawLine(266,178,267+V3.x,178+V3.z*35/52 );
                                                          gc:setColorRGB(0xffff00);
                                                          gc:fillArc( 160-V3.z-1  , 178+V3.y-1  ,2  ,2,0 ,360);
                                                          gc:fillArc( 266+V3.x-1  , 178+V3.z*35/52-1  ,2  ,2,0 ,360);
                                                  else    gc:drawLine(160,178,160+V3.z,178+V3.y );
                                                          gc:drawLine(266,178,267+V3.x,178-V3.z*35/52 );
                                                          gc:setColorRGB(0xffff00);
                                                          gc:fillArc( 160+V3.z-1  , 178+V3.y-1  ,2  ,2,0 ,360);
                                                          gc:fillArc( 266+V3.x  , 178-V3.z*35/52-1  ,2  ,2,0 ,360);
                                                  end
                     else                         gc:setColorRGB(0x2222ff);
                                                  gc:drawLine(53,178,53+V3.x,178-V3.y );
                                                  if(zNegFlag)then 
                                                          gc:drawLine(160,178,159-V3.z,178-V3.y ); 
                                                          gc:drawLine(266,178,267+V3.x,178+V3.z*35/52 );
                                                          gc:setColorRGB(0xffff00);
                                                          gc:fillArc( 160-V3.z-1  , 178-V3.y-1  ,2  ,2,0 ,360);
                                                          gc:fillArc( 266+V3.x-1  , 178+V3.z*35/52-1  ,2  ,2,0 ,360);
                                                  else    gc:drawLine(160,178,160+V3.z,178-V3.y );
                                                          gc:drawLine(266,178,267+V3.x,178-V3.z*35/52 );
                                                          gc:setColorRGB(0xffff00);
                                                          gc:fillArc( 160+V3.z-1  , 178-V3.y-1  ,2  ,2,0 ,360);
                                                          gc:fillArc( 266+V3.x  , 178-V3.z*35/52-1  ,2  ,2,0 ,360);
                                                  end
                                                  gc:setColorRGB(0xffff00);
                                                  gc:fillArc( 53+V3.x-1  , 178-V3.y-1  ,2  ,2,0 ,360);
                     end
                end          
                end   
                   
                   
             
          end        
          --EndofGraphPart
          
          
          gc:setColorRGB(0x888800);
          if(GraphingPageIndexForTwoVectorGraph == 3 ) then gc:drawRect(0,145,106,66);
          elseif(GraphingPageIndexForTwoVectorGraph == 2 ) then gc:drawRect(106,145,107,66);
          else gc:drawRect(213,145,104,66);
          end
         
          Angle=0
          gc:setColorRGB(0xffffff);
          DotVector = math.evalStr("dotp(["..TwoVectors.Vector_A[0]..","..TwoVectors.Vector_A[1]..","..TwoVectors.Vector_A[2].."],["..TwoVectors.Vector_B[0]..","..TwoVectors.Vector_B[1]..","..TwoVectors.Vector_B[2].."])");
          gc:drawString("A.B       "..DotVector ,15,95);
          Angle = math.evalStr("(cos("..(DotVector).."/".."(sqrt("..(TwoVectors.Vector_A[0]).."*"..(TwoVectors.Vector_A[0]).."+"..(TwoVectors.Vector_A[1]).."*"..(TwoVectors.Vector_A[1]).."+"..(TwoVectors.Vector_A[2]).."*"..(TwoVectors.Vector_A[2])..") *\
                        sqrt("..(TwoVectors.Vector_B[0]).."*"..(TwoVectors.Vector_B[0]).."+"..(TwoVectors.Vector_B[1]).."*"..(TwoVectors.Vector_B[1]).."+"..(TwoVectors.Vector_B[2]).."*"..(TwoVectors.Vector_B[2]).."))))")
          if(Angle) then  gc:drawString("θ           ".. Angle.."°" ,15,105); end
      end
      


end


function crosspOfTwoVectorClass(Vector_A,Vector_B)
    RetrunedVector = math.evalStr("crossp(["..Vector_A[0]..","..Vector_A[1]..","..Vector_A[2].."],["..Vector_B[0]..","..Vector_B[1]..","..Vector_B[2].."])")
    Vectz = {};
    Vectz.x = RetrunedVector:sub(3,RetrunedVector:find(',')-1);
    Vectz.y = RetrunedVector:sub(RetrunedVector:find(',')+1,RetrunedVector:find(',')+RetrunedVector:sub(RetrunedVector:find(',')+1,RetrunedVector:len()):find(',')-1);
    Vectz.z = RetrunedVector:sub(2+Vectz.y:len()+Vectz.x:len()+3,RetrunedVector:len()-2);
	return Vectz
end


function CorrectTheNumberStrings(Arg)
    newNumber = '';
    for i=1,Arg:len()do
		if(string.byte(Arg:sub(i,i)) > 0x2f and string.byte(Arg:sub(i,i)) < 0x3a) then newNumber = newNumber.. Arg:sub(i,i); end
    end
    if(string.byte(Arg:sub(1,1)) == 226) then newNumber = newNumber/1 * -1; end
    return newNumber;
end


function AngleToPlanes(Vector)
	V = {};
    if(tonumber(Vector[0]) and tonumber(Vector[1]) and tonumber(Vector[2]) and not (tonumber(Vector[0]) ==0 and tonumber(Vector[1])==0 and tonumber(Vector[2]) ==0 ))then   
       
       if( not(Vector[0]:len() == 1 and Vector[0] == "-") and 
           not(Vector[1]:len() == 1 and Vector[1] == "-") and
           not(Vector[2]:len() == 1 and Vector[2] == "-")
        )then    
            V[0] = math.evalStr("approx(cos("..(Vector[0]).."/".."sqrt("..(Vector[0])*(Vector[0])+(Vector[1])*(Vector[1])+(Vector[2])*(Vector[2])..")))"):sub(1,6);
            V[1] = math.evalStr("approx(cos("..(Vector[1]).."/".."sqrt("..(Vector[0])*(Vector[0])+(Vector[1])*(Vector[1])+(Vector[2])*(Vector[2])..")))"):sub(1,6);
            V[2] = math.evalStr("approx(cos("..(Vector[2]).."/".."sqrt("..(Vector[0])*(Vector[0])+(Vector[1])*(Vector[1])+(Vector[2])*(Vector[2])..")))"):sub(1,6);
        end
    else
        V[0] = 0;
        V[1] = 0;
        V[2] = 0;
    end
    return V;
end



function GraphSetup(Vector)
    VectorGraph = {};
    VectorGraph.x = math.evalStr((Vector[0]).."/sqrt("..(Vector[0]).."*"..(Vector[0]).."+"..(Vector[1]).."*"..(Vector[1]).."+"..(Vector[2]).."*"..(Vector[2])..")")
    VectorGraph.y = math.evalStr((Vector[1]).."/sqrt("..(Vector[0]).."*"..(Vector[0]).."+"..(Vector[1]).."*"..(Vector[1]).."+"..(Vector[2]).."*"..(Vector[2])..")")
    VectorGraph.z = math.evalStr((Vector[2]).."/sqrt("..(Vector[0]).."*"..(Vector[0]).."+"..(Vector[1]).."*"..(Vector[1]).."+"..(Vector[2]).."*"..(Vector[2])..")")
    return VectorGraph;
end




function laplacian()
    
    Vx = {}
    Vy = {}
    Vz = {}
	
    VectorParts.x = VectorParts.x:gsub("x","χ")
    VectorParts.y = VectorParts.y:gsub("x","χ")
    VectorParts.z = VectorParts.z:gsub("x","χ")
            
    if(math.evalStr("("..VectorParts.x..",x,2)"))then
        Vx.x 	= math.evalStr("("..VectorParts.x..",χ,2)")
        Vx.y 	= math.evalStr("("..VectorParts.x..",y,2)")
        Vx.z 	= math.evalStr("("..VectorParts.x..",z,2)")
        Vx.comp = math.evalStr(Vx.x.."+"..Vx.y.."+"..Vx.z);
        else Vx.comp = "0"
    end
    
    if(math.evalStr("("..VectorParts.y..",y,2)"))then
        Vy.x 	= math.evalStr("("..VectorParts.y..",χ,2)")
        Vy.y 	= math.evalStr("("..VectorParts.y..",y,2)")
        Vy.z 	= math.evalStr("("..VectorParts.y..",z,2)")
        Vy.comp = math.evalStr(Vy.x.."+"..Vy.y.."+"..Vy.z);
        else Vy.comp = "0"
    end
    
    
    if(math.evalStr("("..VectorParts.z..",z,2)"))then
        Vz.x 	= math.evalStr("("..VectorParts.z..",χ,2)")
        Vz.y 	= math.evalStr("("..VectorParts.z..",y,2)")
        Vz.z 	= math.evalStr("("..VectorParts.z..",z,2)")
        Vz.comp = math.evalStr(Vz.x.."+"..Vz.y.."+"..Vz.z);
        else Vz.comp = "0"
    end
    
    VectorParts.x = VectorParts.x:gsub("χ","x")
    VectorParts.y = VectorParts.y:gsub("χ","x")
    VectorParts.z = VectorParts.z:gsub("χ","x")
    
    
    Result = "("..Vx.comp .. ")  +ŷ("..Vy.comp..")  +ž("..Vz.comp..")";
    return Result
end




function gradient(fun,typ)
    if(math.evalStr("("..fun.x..",x)") ~= nil)then
    if(typ == "x")then
           return math.evalStr("("..fun.x:gsub("x","χ")..",χ)"):gsub("χ","x")
    elseif (typ == 'y')then
           return math.evalStr("("..fun.x:gsub("x","χ")..",y)"):gsub("χ","x")
    else   return math.evalStr("("..fun.x:gsub("x","χ")..",z)"):gsub("χ","x")
   end
   end
   return " "
end



function DerivedSI(gc)
    gc:setFont("serif","r",6)
    
    gc:setColorRGB(0x555555)
    gc:drawLine(0,11,320,11);
    gc:drawLine(0,21,320,21);
    gc:drawString(string.format("From %03d - to %03d  Page:%02d",1+(quantity.page)*(quantity.maxindex),(quantity.page+1)*(quantity.maxindex),quantity.page+1),0,0);
    gc:drawString(string.format("%03d  ",quantity.index+quantity.page*quantity.maxindex),130,0);
    gc:drawString("Name                                        Symbol    Unit",0,10);
    gc:setColorRGB(0x0055aa)
    gc:drawString(string.format("Description : %s ",quantity.Description[quantity.index+quantity.page*quantity.maxindex]:sub(1,quantity.Description[quantity.index+quantity.page*quantity.maxindex]:len()/2)),0,190);
    gc:drawString(string.format("%s",quantity.Description[quantity.index+quantity.page*quantity.maxindex]:sub(quantity.Description[quantity.index+quantity.page*quantity.maxindex]:len()/2+1),quantity.Description[quantity.index+quantity.page*quantity.maxindex]:len()),0,200);
    gc:setColorRGB(0x00aa44)
    gc:drawString(string.format("Comments : %s",quantity.Comments[quantity.index+quantity.page*quantity.maxindex]),0,180);
    for i=1,16 do
		if(quantity.index == i) then gc:setColorRGB(0x880000);
		else gc:setColorRGB(0x888888); end
     
		gc:drawString(string.format("%s ",quantity.Derived[i+quantity.page*quantity.maxindex]),0,10+i*10);
		if(quantity.index == i) then gc:setColorRGB(0xff0000);
		else gc:setColorRGB(0xffffff); end
		
		gc:drawString(string.format("%s ",quantity.Symbol[i+quantity.page*quantity.maxindex]),160,10+i*10);
		gc:drawString(string.format("%s ",quantity.unit[i+quantity.page*quantity.maxindex]),190,10+i*10);    
                
    
    end
end















-------------------------------------------------------------------------------------------------------------------------------------------------------

--______         _           _ _    _____     _     _      
--| ___ \       (_)         | (_)  |_   _|   | |   | |     
--| |_/ /__ _ __ _  ___   __| |_  ___| | __ _| |__ | | ___ 
--|  __/ _ \ '__| |/ _ \ / _` | |/ __| |/ _` | '_ \| |/ _ \
--| | |  __/ |  | | (_) | (_| | | (__| | (_| | |_) | |  __/
--\_|  \___|_|  |_|\___/ \__,_|_|\___\_/\__,_|_.__/|_|\___|
--                                                         
-------------------------------------------------------------------------------------------------------------------------------------------------------













local pTable = {}

function qPeriodic(gc)
        gc:setColorRGB(0x333333) ;
        gc:drawRect(40,1,230,11);
    --if(qPeriodicClassification ~= 0 ) then sort() end
    
    sort()
    
    tempColor = 0;
    MaterialColorFlag = false
    Index = 1;
    gc:setFont("sansserif","r",6);
    --PeriodicTableUnit
    if(tonumber(PeriodicTableUnit) ~= nil) then
        if(tonumber(PeriodicTableUnit) >= 1 and tonumber(PeriodicTableUnit) <= 118 ) then
            tempColor = pTable[tonumber(PeriodicTableUnit)][29];
            pTable[tonumber(PeriodicTableUnit)][29] = 0xff0000;
            MaterialColorFlag = true
            Index = tonumber(PeriodicTableUnit)
        end    
    elseif(PeriodicTableUnit:len()>0) then
        Index = search(tostring(PeriodicTableUnit)) ;
        if(Index ~= nil) then 
            MaterialColorFlag = true 
            tempColor = pTable[Index][29];
            pTable[Index][29] = 0xff0000;
        end
    end
    gc:setColorRGB(0xffff00) ; gc:drawString("AtomicNumber or Symbol:"..PeriodicTableUnit,60,20); 
    gc:setColorRGB(0x444444) ; gc:drawString("[Tab]",0,0);
    --column 1
    gc:setColorRGB(pTable[1][29]) ; gc:drawString(pTable[1][2],25,0);
    gc:setColorRGB(pTable[3][29]) ; gc:drawString(pTable[3][2],25,10);
    gc:setColorRGB(pTable[11][29]) ; gc:drawString(pTable[11][2],25,20);
    gc:setColorRGB(pTable[19][29]) ; gc:drawString(pTable[19][2],25,30);
    gc:setColorRGB(pTable[37][29]) ; gc:drawString(pTable[37][2],25,40);
    gc:setColorRGB(pTable[55][29]) ; gc:drawString(pTable[55][2],25,50);
    gc:setColorRGB(pTable[87][29]) ; gc:drawString(pTable[87][2],25,60);
    
    --column 2
    gc:setColorRGB(pTable[4][29]) ; gc:drawString(pTable[4][2],40,10);
    gc:setColorRGB(pTable[12][29]) ; gc:drawString(pTable[12][2],40,20);
    gc:setColorRGB(pTable[20][29]) ; gc:drawString(pTable[20][2],40,30);
    gc:setColorRGB(pTable[38][29]) ; gc:drawString(pTable[38][2],40,40);
    gc:setColorRGB(pTable[56][29]) ; gc:drawString(pTable[56][2],40,50);
    gc:setColorRGB(pTable[88][29]) ; gc:drawString(pTable[88][2],40,60); 
    
    --column 3

    gc:setColorRGB(pTable[21][29]) ; gc:drawString(pTable[21][2],55,30);
    gc:setColorRGB(pTable[39][29]) ; gc:drawString(pTable[39][2],55,40);
    gc:setColorRGB(0xffffaa) ; gc:drawString("Lat",55,50);
    gc:setColorRGB(0xffffaa) ; gc:drawString("Act",55,60); 
    
    --column 4
    gc:setColorRGB(pTable[22][29]) ; gc:drawString(pTable[22][2],70,30);
    gc:setColorRGB(pTable[40][29]) ; gc:drawString(pTable[40][2],70,40);
    gc:setColorRGB(pTable[72][29]) ; gc:drawString(pTable[72][2],70,50);
    gc:setColorRGB(pTable[104][29]) ; gc:drawString(pTable[104][2],70,60); 
   
    --column 5
    gc:setColorRGB(pTable[23][29]) ; gc:drawString(pTable[23][2],85,30);
    gc:setColorRGB(pTable[41][29]) ; gc:drawString(pTable[41][2],85,40);
    gc:setColorRGB(pTable[73][29]) ; gc:drawString(pTable[73][2],85,50);
    gc:setColorRGB(pTable[105][29]) ; gc:drawString(pTable[105][2],85,60); 

    --column 6
    gc:setColorRGB(pTable[24][29]) ; gc:drawString(pTable[24][2],100,30);
    gc:setColorRGB(pTable[42][29]) ; gc:drawString(pTable[42][2],100,40);
    gc:setColorRGB(pTable[74][29]) ; gc:drawString(pTable[74][2],100,50);
    gc:setColorRGB(pTable[106][29]) ; gc:drawString(pTable[106][2],100,60); 
   
    --column 7
    gc:setColorRGB(pTable[25][29]) ; gc:drawString(pTable[25][2],115,30);
    gc:setColorRGB(pTable[43][29]) ; gc:drawString(pTable[43][2],115,40);
    gc:setColorRGB(pTable[75][29]) ; gc:drawString(pTable[75][2],115,50);
    gc:setColorRGB(pTable[107][29]) ; gc:drawString(pTable[107][2],115,60); 
   
    --column 8
    gc:setColorRGB(pTable[26][29]) ; gc:drawString(pTable[26][2],130,30);
    gc:setColorRGB(pTable[44][29]) ; gc:drawString(pTable[44][2],130,40);
    gc:setColorRGB(pTable[76][29]) ; gc:drawString(pTable[76][2],130,50);
    gc:setColorRGB(pTable[108][29]) ; gc:drawString(pTable[108][2],130,60); 
   
    --column 9
    gc:setColorRGB(pTable[27][29]) ; gc:drawString(pTable[27][2],145,30);
    gc:setColorRGB(pTable[45][29]) ; gc:drawString(pTable[45][2],145,40);
    gc:setColorRGB(pTable[77][29]) ; gc:drawString(pTable[77][2],145,50);
    gc:setColorRGB(pTable[109][29]) ; gc:drawString(pTable[109][2],145,60); 
   
   
    --column 10
    gc:setColorRGB(pTable[28][29]) ; gc:drawString(pTable[28][2],160,30);
    gc:setColorRGB(pTable[46][29]) ; gc:drawString(pTable[46][2],160,40);
    gc:setColorRGB(pTable[78][29]) ; gc:drawString(pTable[78][2],160,50);
    gc:setColorRGB(pTable[110][29]) ; gc:drawString(pTable[110][2],160,60); 
   
    --column 11
    gc:setColorRGB(pTable[29][29]) ; gc:drawString(pTable[29][2],175,30);
    gc:setColorRGB(pTable[47][29]) ; gc:drawString(pTable[47][2],175,40);
    gc:setColorRGB(pTable[79][29]) ; gc:drawString(pTable[79][2],175,50);
    gc:setColorRGB(pTable[111][29]) ; gc:drawString(pTable[111][2],175,60); 
   
   
    --column 12
    gc:setColorRGB(pTable[30][29]) ; gc:drawString(pTable[30][2],190,30);
    gc:setColorRGB(pTable[48][29]) ; gc:drawString(pTable[48][2],190,40);
    gc:setColorRGB(pTable[80][29]) ; gc:drawString(pTable[80][2],190,50);
    gc:setColorRGB(pTable[112][29]) ; gc:drawString(pTable[112][2],190,60); 
    

    --column 13
    gc:setColorRGB(pTable[5][29]) ; gc:drawString(pTable[5][2],205,10);
    gc:setColorRGB(pTable[13][29]) ; gc:drawString(pTable[13][2],205,20);
    gc:setColorRGB(pTable[31][29]) ; gc:drawString(pTable[31][2],205,30);
    gc:setColorRGB(pTable[49][29]) ; gc:drawString(pTable[49][2],205,40);
    gc:setColorRGB(pTable[81][29]) ; gc:drawString(pTable[81][2],205,50);
    gc:setColorRGB(pTable[113][29]) ; gc:drawString(pTable[113][2],205,60);  

    --column 14
    gc:setColorRGB(pTable[6][29]) ; gc:drawString(pTable[6][2],220,10);
    gc:setColorRGB(pTable[14][29]) ; gc:drawString(pTable[14][2],220,20);
    gc:setColorRGB(pTable[32][29]) ; gc:drawString(pTable[32][2],220,30);
    gc:setColorRGB(pTable[50][29]) ; gc:drawString(pTable[50][2],220,40);
    gc:setColorRGB(pTable[82][29]) ; gc:drawString(pTable[82][2],220,50);
    gc:setColorRGB(pTable[114][29]) ; gc:drawString(pTable[114][2],220,60);  
    
    --column 15
    gc:setColorRGB(pTable[7][29]) ; gc:drawString(pTable[7][2],235,10);
    gc:setColorRGB(pTable[15][29]) ; gc:drawString(pTable[15][2],235,20);
    gc:setColorRGB(pTable[33][29]) ; gc:drawString(pTable[33][2],235,30);
    gc:setColorRGB(pTable[51][29]) ; gc:drawString(pTable[51][2],235,40);
    gc:setColorRGB(pTable[83][29]) ; gc:drawString(pTable[83][2],235,50);
    gc:setColorRGB(pTable[115][29]) ; gc:drawString(pTable[115][2],235,60);  
    
    --column 16
    gc:setColorRGB(pTable[8][29]) ; gc:drawString(pTable[8][2],250,10);
    gc:setColorRGB(pTable[16][29]) ; gc:drawString(pTable[16][2],250,20);
    gc:setColorRGB(pTable[34][29]) ; gc:drawString(pTable[34][2],250,30);
    gc:setColorRGB(pTable[52][29]) ; gc:drawString(pTable[52][2],250,40);
    gc:setColorRGB(pTable[84][29]) ; gc:drawString(pTable[84][2],250,50);
    gc:setColorRGB(pTable[116][29]) ; gc:drawString(pTable[116][2],250,60);                       


    --column 17
    gc:setColorRGB(pTable[9][29]) ; gc:drawString(pTable[9][2],265,10);
    gc:setColorRGB(pTable[17][29]) ; gc:drawString(pTable[17][2],265,20);
    gc:setColorRGB(pTable[35][29]) ; gc:drawString(pTable[35][2],265,30);
    gc:setColorRGB(pTable[53][29]) ; gc:drawString(pTable[53][2],265,40);
    gc:setColorRGB(pTable[85][29]) ; gc:drawString(pTable[85][2],265,50);
    gc:setColorRGB(pTable[117][29]) ; gc:drawString(pTable[117][2],265,60);                       
 
    --column 18
    gc:setColorRGB(pTable[2][29]) ; gc:drawString(pTable[2][2],280,0);
    gc:setColorRGB(pTable[10][29]) ; gc:drawString(pTable[10][2],280,10);
    gc:setColorRGB(pTable[18][29]) ; gc:drawString(pTable[18][2],280,20);
    gc:setColorRGB(pTable[36][29]) ; gc:drawString(pTable[36][2],280,30);
    gc:setColorRGB(pTable[54][29]) ; gc:drawString(pTable[54][2],280,40);
    gc:setColorRGB(pTable[86][29]) ; gc:drawString(pTable[86][2],280,50);
    gc:setColorRGB(pTable[118][29]) ; gc:drawString(pTable[118][2],280,60);    
   
   
   
   -- Lanthanide Series					
     gc:setColorRGB(pTable[57][29]) ; gc:drawString(pTable[57][2],70,70);
     gc:setColorRGB(pTable[58][29]) ; gc:drawString(pTable[58][2],85,70);
     gc:setColorRGB(pTable[59][29]) ; gc:drawString(pTable[59][2],100,70);
     gc:setColorRGB(pTable[60][29]) ; gc:drawString(pTable[60][2],115,70);
     gc:setColorRGB(pTable[61][29]) ; gc:drawString(pTable[61][2],130,70);
     gc:setColorRGB(pTable[62][29]) ; gc:drawString(pTable[62][2],145,70);
     gc:setColorRGB(pTable[63][29]) ; gc:drawString(pTable[63][2],160,70);
     gc:setColorRGB(pTable[64][29]) ; gc:drawString(pTable[64][2],175,70);
     gc:setColorRGB(pTable[65][29]) ; gc:drawString(pTable[65][2],190,70);
     gc:setColorRGB(pTable[66][29]) ; gc:drawString(pTable[66][2],205,70);
     gc:setColorRGB(pTable[67][29]) ; gc:drawString(pTable[67][2],220,70);
     gc:setColorRGB(pTable[68][29]) ; gc:drawString(pTable[68][2],235,70);
     gc:setColorRGB(pTable[69][29]) ; gc:drawString(pTable[69][2],250,70);
     gc:setColorRGB(pTable[70][29]) ; gc:drawString(pTable[70][2],265,70);
     gc:setColorRGB(pTable[71][29]) ; gc:drawString(pTable[71][2],280,70);
     
   -- Actinide
    gc:setColorRGB(pTable[89][29]) ; gc:drawString(pTable[89][2],70,80);
    gc:setColorRGB(pTable[90][29]) ; gc:drawString(pTable[90][2],85,80);
    gc:setColorRGB(pTable[91][29]) ; gc:drawString(pTable[91][2],100,80);
    gc:setColorRGB(pTable[92][29]) ; gc:drawString(pTable[92][2],115,80);
    gc:setColorRGB(pTable[93][29]) ; gc:drawString(pTable[93][2],130,80);
    gc:setColorRGB(pTable[94][29]) ; gc:drawString(pTable[94][2],145,80);
    gc:setColorRGB(pTable[95][29]) ; gc:drawString(pTable[95][2],160,80);
    gc:setColorRGB(pTable[96][29]) ; gc:drawString(pTable[96][2],175,80);
    gc:setColorRGB(pTable[97][29]) ; gc:drawString(pTable[97][2],190,80);
    gc:setColorRGB(pTable[98][29]) ; gc:drawString(pTable[98][2],205,80);
    gc:setColorRGB(pTable[99][29]) ; gc:drawString(pTable[99][2],220,80);
    gc:setColorRGB(pTable[100][29]) ; gc:drawString(pTable[100][2],235,80);
    gc:setColorRGB(pTable[101][29]) ; gc:drawString(pTable[101][2],250,80);
    gc:setColorRGB(pTable[102][29]) ; gc:drawString(pTable[102][2],265,80);
    gc:setColorRGB(pTable[103][29]) ; gc:drawString(pTable[103][2],280,80);
    

    
    if(MaterialColorFlag) then
            pTable[tonumber(Index)][29] = tempColor;
            
            gc:setColorRGB(0x5599aa) ; 
            gc:drawString("Name : "..pTable[Index][1],0,90);
            gc:drawString("AtomicNumber : "..Index,0,100);
            gc:drawString("Group : "..pTable[Index][6],0,110);
            gc:drawString("Group 2 : "..pTable[Index][7],0,120);
            gc:drawString("Period : "..pTable[Index][8],0,130);
            gc:drawString("Atomic Radius:"..pTable[Index][15],0,140);                        
            gc:drawString("AtomWeight : "..pTable[Index][3],0,150);
            gc:drawString("Phase at STP: "..pTable[Index][4],0,160);
            gc:drawString("Type : "..pTable[Index][5],0,170);
            gc:drawString(pTable[Index][27],0,200);
            gc:drawString("e Config : "..pTable[Index][9],0,180);
            gc:drawString("Ion. E. (eV): "..pTable[Index][11],0,190);
            
            gc:setColorRGB(0x55aa99) ;
            gc:drawString("Possible Oxidation States:"..pTable[Index][26],90,130);
            gc:drawString("Atomic R (calc):"..pTable[Index][18],100,90);
            gc:drawString("Van der Waals (R):"..pTable[Index][19],90,100);
            gc:drawString("Discovery (Year):"..pTable[Index][28],130,190);
            gc:drawString("Crystal Structure:"..pTable[Index][14],90,120);     
            gc:drawString("Metallic Radius (pm):"..pTable[Index][16],130,170);
            gc:drawString("Electron Affinity (kJ/mol):"..pTable[Index][22],130,180);
            gc:drawString("Thermal Conduct. W/(m K):"..pTable[Index][23],90,110);
            gc:drawString("Resistivity (Ωm):"..pTable[Index][24],130,160);
            
            gc:setColorRGB(0xaa5599) ; 
            gc:drawString("Electro-negativity:"..pTable[Index][20],200,150); 
            gc:drawString("Melting Point (°C):"..pTable[Index][12],200,120);
            gc:drawString("Boiling Point (°C):"..pTable[Index][13],200,140);
            gc:drawString("G-state Level: "..pTable[Index][10],200,100);
            gc:drawString("CAS Num:"..pTable[Index][25],200,90);
            
       else     
           
           gc:setColorRGB(0xffffff) ; 
           gc:drawString("-- Electricity --",90,90);
           
           gc:setColorRGB(0x5599aa) ; 
           gc:drawString("Name",0,90);
           gc:drawString("AtomicNumber",0,100);
           gc:drawString("Group",0,110);
           gc:drawString("Group 2",0,120);
           gc:drawString("Period",0,130);
           gc:drawString("Atomic Radius",0,140);                        
           gc:drawString("AtomWeight",0,150);
           gc:drawString("Phase at STP",0,160);
           gc:drawString("Type",0,170);
           
           gc:drawString("e Config",0,180);
           
           
           gc:setColorRGB(0x55aa99) ;
           gc:drawString("Ion. E. (eV)",90,120);
           gc:drawString("Possible Oxidation States",90,130);
           gc:drawString("Atomic R (calc)",90,140);
           gc:drawString("Van der Waals (R)",90,160);
           gc:drawString("Discovery (Year)",90,190);
           gc:drawString("Crystal Structure",90,180);     
           gc:drawString("Metallic Radius (pm)",90,170);
           gc:drawString("Electron Affinity (kJ/mol)",90,150);
           gc:drawString("Thermal Conduct W/(m K)",90,110);
           gc:drawString("Resistivity (Ωm)",90,100);
           
           gc:setColorRGB(0xaa5599) ; 
           gc:drawString("Electro-negativity",200,150); 
           gc:drawString("Melting Point (°C)",200,120);
           gc:drawString("Boiling Point (°C)",200,140);
           gc:drawString("G-state Level",200,100);
           gc:drawString("CAS Num",200,90);            
            
            
         
          end
          gc:setColorRGB(0xffffff) ; 
       if(qPeriodicClassification == 1)then
        gc:drawString("Classified to Discovery Year",60,10);  
       elseif(qPeriodicClassification == 2)then   
        gc:drawString("Classified to Ionization Energy",60,10); 
       elseif(qPeriodicClassification == 3)then   
        gc:drawString("Classified to Melting Point",60,10);
       elseif(qPeriodicClassification == 4)then   
        gc:drawString("Classified to State",60,10);
       elseif(qPeriodicClassification == 5)then   
        gc:drawString("Classified to Conductivity",60,10);
       elseif(qPeriodicClassification == 6)then   
         gc:drawString("Classified to MagnaticType",60,10);
         gc:setColorRGB(0xff0000) ; 
         gc:drawString("Antiferromagnetic",60,0);
         gc:setColorRGB(0xff00) ; 
         gc:drawString("Diamag",135,0);
         gc:setColorRGB(0xaaaa) ; 
         gc:drawString("Paramag",170,0);
         gc:setColorRGB(0xff) ; 
         gc:drawString("Ferromag",210,0);
      elseif(qPeriodicClassification == 7)then   
         gc:drawString("Classified to Boiling",60,10);
      end   
          
end


function search(targetSymbol)
    for i=1 , 118 do
        if(pTable[i][2]:lower():find(targetSymbol,0) ~= nil and pTable[i][2]:len() == targetSymbol:len())then
            return i
        end
    end
    return nil
end

function sort()

    Col = 0x202020

    if(qPeriodicClassification == 0) then
        for i=1 , 104 do
            Col = Col + 0x5
            pTable[i][29] = pTableColors[i]
        end

    elseif(qPeriodicClassification == 1)then
        for i=1 , 104 do
            Col = Col + 0x5
            pTable[Year[i]][29] = Col
        end
        for i = 105 , 118 do
            pTable[Year[i]][29] = 0x000000
        end  
    elseif(qPeriodicClassification == 2)then    
        for i=1 , 104 do
        Col = Col + 0x500
        pTable[Ionazation[i]][29] = Col
        end
        for i = 105 , 118 do
            pTable[Ionazation[i]][29] = 0x00000
        end
    elseif(qPeriodicClassification == 3)then    
        for i=1 , 104 do
        Col = Col + 0x20000
        pTable[MeltingPoint[i]][29] = Col
        end
        for i = 105 , 118 do
            pTable[MeltingPoint[i]][29] = 0x00000
        end
    elseif(qPeriodicClassification == 4)then   
        for i=1 , 118 do
            if(i < 12)then
                pTable[State[i]][29] = 0xff00
            elseif(i < 14)then
                pTable[State[i]][29] = 0x0000ff
            elseif(i<91)then
                pTable[State[i]][29] = 0xffffff
            else
                pTable[State[i]][29] = 0x555555
            end
        end
    elseif(qPeriodicClassification == 5)then   --Conductor
        for i=1 , 118 do
            if(i < 73)then
                pTable[Conductor[i]][29] = 0xff
            elseif(i < 78)then
                pTable[Conductor[i]][29] = 0xff0000
            elseif(i<116)then
                pTable[Conductor[i]][29] = 0x555555
            else
                pTable[Conductor[i]][29] = 0xff00
            end
        end            
    elseif(qPeriodicClassification == 6)then   --MagnaticType
        for i=1 , 118 do
            if(i < 2)then
                pTable[MagnaticType[i]][29] = 0xff0000
            elseif(i < 35)then
                pTable[MagnaticType[i]][29] = 0xff00
            elseif(i<39)then
                pTable[MagnaticType[i]][29] = 0xff
            elseif(i<71)then
                pTable[MagnaticType[i]][29] = 0x555555
            else
                pTable[MagnaticType[i]][29] = 0xaaaa
            end
        end        
    elseif(qPeriodicClassification == 7)then
                for i=1,94 do
                    Col = Col + 0x20000
                    pTable[Boiling[i]][29] = Col
                end
                for i = 95 , 118 do
                    pTable[Boiling[i]][29] = 0x000000
                end  
    end


--Boiling
end


pTable =
{
{    "Hydrogen","H","1.00794","Gas","Non Metal","1","IA","1","1s1","2S1/2","13.5984","-259.14","-252.87","hex","(v) 37","","37","53","120","2.2","0.0899","72.8","0.1805","#N/A","CAS1333-74-0","+1,-1","Cavendish, Henry","1766",0xa6e680,"N/A"},
{    "Helium","He","4.002602","Gas","Noble Gas","18","VIIIA","1","1s2","1S0","24.5874","#N/A","-268.93","","(v) 32","","32","31","140","#N/A","0.1785","#N/A","0.1513","#N/A","CAS7440-59-7","0","Ramsey, Sir William & Cleve, Per Teodor","1895",0x8e87dc,"N/A"},
{    "Lithium","Li","6.941","Solid","Alkali Metal","1","IA","2","[He] 2s1","2S1/2","5.3917","180.54","1342","BCC","(m) 152","152","134","167","182","0.98","0.535","59.6","85","0.000000094","CAS7439-93-2","+1","Arfvedson, Johan August","1817",0xcc5e8e,"Conductor"},
{    "Beryllium","Be","9.012182","Solid","Alkaline Earth Metal","2","IIA","2","[He] 2s2","1S0","9.3227","1287","2470","HCP","(m) 112","112","90","112","153","1.57","1.848","#N/A","190","0.00000004","CAS7440-41-7","+2","Vauquelin, Nicholas Louis","1797",0xe4c7c9,"Conductor"},
{    "Boron","B","10.811","Solid","Metalloids","13","IIIA","2","[He] 2s2 2p1","2P°1/2","8.298","2075","4000","rhom.","(v) 82","","82","87","192","2.04","2.46","26.7","27","10000","CAS7440-42-8","+3","Davy, Sir Humphry & Thénard, Louis-Jaques  & Gay-Lussac, Louis-Joseph","1808",0x95cec9,"Insulator"},
{    "Carbon","C","12.0107","Solid","Non Metal","14","IVA","2","[He] 2s2 2p2","3P0","11.2603","3550","4027","hex","(v) 77","","77","67","170","2.55","2.26","153.9","140","0.00001","CAS7440-44-0","+2,4/-4","unknown","ancient",0xa6e680,"Conductor"},
{    "Nitrogen","N","14.0067","Gas","Non Metal","15","VA","2","[He] 2s2 2p3","4S°3/2","14.5341","-210.1","-195.79","hex","(v) 75","","75","56","155","3.04","1.251","7","0.02583","#N/A","CAS7727-37-9","+1,2,3,4,5/-1,2,3","Rutherford, Daniel","1772",0xa6e680,"N/A"},
{    "Oxygen","O","15.9994","Gas","Non Metal","16","VIA","2","[He] 2s2 2p4","3P2","13.6181","-218.3","-182.9","§cubic","(v) 73","","73","48","152","3.44","1.429","141","0.02658","#N/A","CAS7782-44-7","-2","Priestley, Joseph & Scheele, Carl Wilhelm","1774",0xa6e680,"N/A"},
{    "Fluorine","F","18.9984032","Gas","Halogen","17","VIIA","2","[He] 2s2 2p5","2P°3/2","17.4228","-219.6","-188.12","§cubic","(v) 71","","71","42","147","3.98","1.696","328","0.0277","#N/A","CAS7782-41-4","-1","Moissan, Henri","1886",0xd7a4de,"N/A"},
{    "Neon","Ne","20.1797","Gas","Noble Gas","18","VIIIA","2","[He] 2s2 2p6","1S0","21.5645","-248.59","-246.08","FCC","(v) 69","","69","38","154","#N/A","0.9","#N/A","0.0491","#N/A","CAS7440-01-9","0","Ramsay, William & Travers, Morris","1898",0x8e87dc,"N/A"},
{    "Sodium","Na","22.98977","Solid","Alkali Metal","1","IA","3","[Ne] 3s1","2S1/2","5.1391","97.72","883","BCC","(m) 186","186","154","190","227","0.93","0.968","52.8","140","0.000000047","CAS7440-23-5","+1","Davy, Sir Humphry","1807",0xcc5e8e,"Conductor"},
{    "Magnesium","Mg","24.305","Solid","Alkaline Earth Metal","2","IIA","3","[Ne] 3s2","1S0","7.6462","650","1090","HCP","(m) 160","160","130","145","173","1.31","1.738","#N/A","160","0.000000044","CAS7439-95-4","+2","Black, Joseph","1755",0xe4c7c9,"Conductor"},
{    "Aluminum","Al","26.981538","Solid","Poor Metal","13","IIIA","3","[Ne] 3s2 3p1","2P°1/2","5.9858","660.32","2519","FCC","(m) 143","143","118","118","184","1.61","2.7","42.5","235","0.000000026","CAS7429-90-5","+3","Oersted, Hans Christian","1825",0x555555,"Conductor"},
{    "Silicon","Si","28.0855","Solid","Metalloids","14","IVA","3","[Ne] 3s2 3p2","3P0","8.1517","1414","2900","cubic","(v) 111","","111","111","210","1.9","2.33","133.6","150","0.001","CAS7440-21-3","+2,4/-4","Berzelius, Jöns Jacob","1824",0x95cec9,"Semiconductor"},
{    "Phosphorus","P","30.97361","Solid","Non Metal","15","VA","3","[Ne] 3s2 3p3","4S°3/2","10.4867","44.2","280.5","§","(v) 106","","106","98","180","2.19","1.823","72","0.236","0.0000001","CAS7723-14-0","+3,5/-3","Brandt, Hennig","1669",0xa6e680,"Conductor"},
{    "Sulfur","S","32.065","Solid","Non Metal","16","VIA","3","[Ne] 3s2 3p4","3P2","10.36","115.21","444.72","FCO","(v) 102","","102","88","180","2.58","1.96","200","0.205","#N/A","CAS7704-34-9","+4,6/-2","unknown","ancient",0xa6e680,"Insulator"},
{    "Chlorine","Cl","35.453","Gas","Halogen","17","VIIA","3","[Ne] 3s2 3p5","2P°3/2","12.9676","-101.5","-34.04","BCO","(v) 99","","99","79","175","3.16","3.214","349","0.0089","#N/A","CAS7782-50-5","+1,5,7/-1","Scheele, Carl Wilhelm","1774",0xd7a4de,"Insulator"},
{    "Argon","Ar","39.948","Gas","Noble Gas","18","VIIIA","3","[Ne] 3s2 3p6","1S0","15.7596","-189.3","-185.8","FCC","(v) 97","","97","71","188","#N/A","1.784","#N/A","0.01772","#N/A","CAS7440-37-1","0","Ramsay, Sir William & Strutt, John (Lord Rayleigh)","1894",0x8e87dc,"N/A"},
{    "Potassium","K","39.0983","Solid","Alkali Metal","1","IA","4","[Ar] 4s1","2S1/2","4.3407","63.38","759","BCC","(m) 227","227","196","243","275","0.82","0.856","48.4","100","0.00000007","CAS7440-09-7","+1","Davy, Sir Humphry","1807",0xcc5e8e,"Conductor"},
{    "Calcium","Ca","40.078","Solid","Alkaline Earth Metal","2","IIA","4","[Ar] 4s2","1S0","6.1132","842","1484","FCC","(m) 197","197","174","194","231","1","1.55","2.37","200","0.000000034","CAS7440-70-2","+2","Davy, Sir Humphry","1808",0xe4c7c9,"Conductor"},
{    "Scandium","Sc","44.95591","Solid","Transition Metal","3","IIIB","4","[Ar] 3d1 4s2","2D3/2","6.5615","1541","2830","HCP","(m) 162","162","144","184","211","1.36","2.985","18.1","16","0.00000055","CAS7440-20-2","+3","Nilson, Lars Fredrik","1879",0x999999,"Conductor"},
{    "Titanium","Ti","47.867","Solid","Transition Metal","4","IVB","4","[Ar] 3d2 4s2","3F2","6.8281","1668","3287","HCP","(m) 147","147","136","176","#N/A","1.54","4.507","7.6","22","0.0000004","CAS7440-32-6","+2,3,4","Gregor, William","1791",0x999999,"Conductor"},
{    "Vanadium","V","50.9415","Solid","Transition Metal","5","VB","4","[Ar] 3d3 4s2","4F3/2","6.7462","1910","3407","BCC","(m) 134","134","125","171","#N/A","1.63","6.11","50.6","31","0.0000002","CAS7440-62-2","+2,3,4,5","Del Rio, Andrés Manuel (1801) & Sefström, Nils Gabriel (1830)","1801",0x999999,"Conductor"},
{    "Chromium","Cr","51.9961","Solid","Transition Metal","6","VIB","4","[Ar] 3d5 4s1","7S3","6.7665","1907","2671","BCC","(m) 128","128","127","166","#N/A","1.66","7.14","64.3","94","0.00000013","CAS7440-47-3","+2,3,6","Vauquelin","1797",0x999999,"Conductor"},
{    "Manganese","Mn","54.938049","Solid","Transition Metal","7","VIIB","4","[Ar] 3d5 4s2","6S5/2","7.434","1246","2061","§cubic","(m) 127","127","139","161","#N/A","1.55","7.47","#N/A","7.8","0.0000016","CAS7439-96-5","+2,3,4,7","Gahn, Johan Gottlieb","1774",0x999999,"Conductor"},
{    "Iron","Fe","55.845","Solid","Transition Metal","8","VIIIB","4","[Ar] 3d6 4s2","5D4","7.9024","1538","2861","BCC","(m) 126","126","125","156","#N/A","1.83","7.874","15.7","80","0.000000097","CAS7439-89-6","+2,3","unknown","ancient",0x999999,"Conductor"},
{    "Cobalt","Co","58.9332","Solid","Transition Metal","9","VIIIB","4","[Ar] 3d7 4s2","4F9/2","7.881","1495","2927","HCP","(m) 125","125","126","152","#N/A","1.88","8.9","63.7","100","0.00000006","CAS7440-48-4","+2,3","Brandt, Georg","1735",0x999999,"Conductor"},
{    "Nickel","Ni","58.6934","Solid","Transition Metal","10","VIIIB","4","[Ar] 3d8 4s2","3F4","7.6398","1455","2913","FCC","(m) 124","124","121","149","163","1.91","8.908","112","91","0.00000007","CAS7440-02-0","+2,3","Cronstedt, Alex Fredrik","1751",0x999999,"Conductor"},
{    "Copper","Cu","63.546","Solid","Transition Metal","11","IB","4","[Ar] 3d10 4s1","2S1/2","7.7264","1084.62","2927","FCC","(m) 128","128","138","145","140","1.9","8.92","118.4","400","0.000000017","CAS7440-50-8","+1,2","unknown","ancient",0x999999,"Conductor"},
{    "Zinc","Zn","65.409","Solid","Transition Metal","12","IIB","4","[Ar] 3d10 4s2","1S0","9.3942","419.53","907","§hex","(m) 134","134","131","142","139","1.65","7.14","#N/A","120","0.000000059","CAS7440-66-6","+2","unknown","ancient",0x999999,"Conductor"},
{    "Gallium","Ga","69.723","Solid","Poor Metal","13","IIIA","4","[Ar] 3d10 4s2 4p1","2P°1/2","5.9993","29.76","2204","§BCO","(m) 135","135","126","136","187","1.81","5.904","28.9","29","0.00000014","CAS7440-55-3","+3","Lecoq de Boisbaudran, Paul-Émile","1875",0x555555,"Conductor"},
{    "Germanium","Ge","72.64","Solid","Metalloids","14","IVA","4","[Ar] 3d10 4s2 4p2","3P0","7.8994","938.3","2820","§cubic","(v) 122","","122","125","211","2.01","5.323","119","60","0.0005","CAS7440-56-4","+2,4","Winkler, Clemens A.","1886",0x95cec9,"Semiconductor"},
{    "Arsenic","As","74.9216","Solid","Metalloids","15","VA","4","[Ar] 3d10 4s2 4p3","4S°3/2","9.7886","817","614","rhom.","(v) 119","","119","114","185","2.18","5.727","78","50","0.0000003","CAS7440-38-2","+3,5/-3","unknown","ancient",0x95cec9,"Conductor"},
{    "Selenium","Se","78.96","Solid","Non Metal","16","VIA","4","[Ar] 3d10 4s2 4p4","3P2","9.7524","221","685","§hex","(v) 116","","116","103","190","2.55","4.819","195","0.52","#N/A","CAS7782-49-2","+4,6/-2","Berzelius, Jöns Jacob","1817",0xa6e680,"N/A"},
{    "Bromine","Br","79.904","Liquid","Halogen","17","VIIA","4","[Ar] 3d10 4s2 4p5","2P°3/2","11.8138","-7.3","59","BCO","(v) 114","","114","94","185","2.96","3.12","324.6","0.12","#N/A","CAS7726-95-6","+1,5/-1","Balard, Antoine-Jérôme","1826",0xd7a4de,"Insulator"},
{    "Krypton","Kr","83.798","Gas","Noble Gas","18","VIIIA","4","[Ar] 3d10 4s2 4p6","1S0","13.9996","-157.36","-153.22","FCC","(v) 110","","110","88","202","3","3.75","#N/A","0.00943","#N/A","CAS7439-90-9","0","Ramsay, Sir William & Travers, Morris","1898",0x8e87dc,"N/A"},
{    "Rubidium","Rb","85.4678","Solid","Alkali Metal","1","IA","5","[Kr] 5s1","2S1/2","4.1771","39.31","688","BCC","(m) 248","248","211","265","303","0.82","1.532","46.9","58","0.00000012","CAS7440-17-7","+1","Bunsen, Robert Wilhelm & Kirchhoff, Gustav Robert","1861",0xcc5e8e,"Conductor"},
{    "Strontium","Sr","87.62","Solid","Alkaline Earth Metal","2","IIA","5","[Kr] 5s2","1S0","5.6949","777","1382","FCC","(m) 215","215","192","219","249","0.95","2.63","5.03","35","0.00000013","CAS7440-24-6","+2","Crawford, Adair","1790",0xe4c7c9,"Conductor"},
{    "Yttrium","Y","88.90585","Solid","Transition Metal","3","IIIB","5","[Kr] 4d1 5s2","2D3/2","6.2173","1526","3345","HCP","(m) 180","180","162","212","#N/A","1.22","4.472","29.6","17","0.00000056","CAS7440-65-5","+3","Gadolin, Johan","1789",0x999999,"Conductor"},
{    "Zirconium","Zr","91.224","Solid","Transition Metal","4","IVB","5","[Kr] 4d2 5s2","3F2","6.6339","1855","4409","HCP","(m) 160","160","148","206","#N/A","1.33","6.511","41.1","23","0.00000042","CAS7440-67-7","+4","Klaproth, Martin Heinrich","1789",0x999999,"Conductor"},
{    "Niobium","Nb","92.90638","Solid","Transition Metal","5","VB","5","[Kr] 4d4 5s1","6D1/2","6.7589","2477","4744","BCC","(m) 146","146","137","198","#N/A","1.6","8.57","86.1","54","0.00000015","CAS7440-03-1","+3,5","Hatchet, Charles","1801",0x999999,"Conductor"},
{    "Molybdenum","Mo","95.94","Solid","Transition Metal","6","VIB","5","[Kr] 4d5 5s1","7S3","7.0924","2623","4639","BCC","(m) 139","139","145","190","#N/A","2.16","10.28","71.9","139","0.00000005","CAS7439-98-7","+6","Scheele, Carl Welhelm","1778",0x999999,"Conductor"},
{    "Technetium","Tc","98","Synthetic","Transition Metal","7","VIIB","5","[Kr] 4d5 5s2","6S5/2","7.28","2157","4265","HCP","(m) 136","136","156","183","#N/A","1.9","11.5","53","51","0.0000002","CAS7440-26-8","+4,7","Perrier, Carlo & Segrè, Emilio","1937",0x999999,"Conductor"},
{    "Ruthenium","Ru","101.07","Solid","Transition Metal","8","VIIIB","5","[Kr] 4d7 5s1","5F5","7.3605","2334","4150","HCP","(m) 134","134","126","178","#N/A","2.2","12.37","101.3","120","0.000000071","CAS7440-18-8","+3","Klaus, Karl Karlovich","1844",0x999999,"Conductor"},
{    "Rhodium","Rh","102.9055","Solid","Transition Metal","9","VIIIB","5","[Kr] 4d8 5s1","4F9/2","7.4589","1964","3695","FCC","(m) 134","134","135","173","#N/A","2.28","12.45","109.7","150","0.000000043","CAS7440-16-6","+3","Wollaston, William Hyde","1803",0x999999,"Conductor"},
{    "Palladium","Pd","106.42","Solid","Transition Metal","10","VIIIB","5","[Kr] 4d10","1S0","8.3369","1554.9","2963","FCC","(m) 137","137","131","169","163","2.2","12.023","53.7","72","0.0000001","CAS7440-05-3","+2,4","Wollaston, William Hyde","1803",0x999999,"Conductor"},
{    "Silver","Ag","107.8682","Solid","Transition Metal","11","IB","5","[Kr] 4d10 5s1","2S1/2","7.5762","961.78","2162","FCC","(m) 144","144","153","165","172","1.93","10.49","125.6","430","0.000000016","CAS7440-22-4","+1","unknown","ancient",0x999999,"Conductor"},
{    "Cadmium","Cd","112.411","Solid","Transition Metal","12","IIB","5","[Kr] 4d10 5s2","1S0","8.9938","321.07","767","§hex","(m) 151","151","148","161","158","1.69","8.65","#N/A","97","0.00000007","CAS7440-43-9","+2","Stromeyer, Prof. Friedrich","1817",0x999999,"Conductor"},
{    "Indium","In","114.818","Solid","Poor Metal","13","IIIA","5","[Kr] 4d10 5s2 5p1","2P°1/2","5.7864","156.6","2072","§tetra.","(m) 167","167","144","156","193","1.78","7.31","28.9","82","0.00000008","CAS7440-74-6","+3","Reich, Ferdinand & Richter, Hieronymus","1863",0x555555,"Conductor"},
{    "Tin","Sn","118.71","Solid","Poor Metal","14","IVA","5","[Kr] 4d10 5s2 5p2","3P0","7.3439","231.93","2602","§tetra.","(v) 141","","141","145","217","1.96","7.31","107.3","67","0.00000011","CAS7440-31-5","+2,4","unknown","ancient",0x555555,"Conductor"},
{    "Antimony","Sb","121.76","Solid","Metalloids","15","VA","5","[Kr] 4d10 5s2 5p3","4S°3/2","8.6084","630.63","1587","§rhom.","(v) 138","","138","133","206","2.05","6.697","103.2","24","0.0000004","CAS7440-36-0","+3,5/-3","unknown","ancient",0x95cec9,"Conductor"},
{    "Tellurium","Te","127.6","Solid","Metalloids","16","VIA","5","[Kr] 4d10 5s2 5p4","3P2","9.0096","449.51","988","hex","(v) 135","","135","123","206","2.1","6.24","190.2","3","0.0001","CAS13494-80-9","+4,6/-2","Müller von Reichenstein, Franz Joseph","1782",0x95cec9,"Semiconductor"},
{    "Iodine","I","126.90447","Solid","Halogen","17","VIIA","5","[Kr] 4d10 5s2 5p5","2P°3/2","10.4513","113.7","184.3","BCO","(v) 133","","133","115","198","2.66","4.94","295.2","0.449","#N/A","CAS7553-56-2","+1,5,7/-1","Courtois, Bernard","1811",0xd7a4de,"Insulator"},
{    "Xenon","Xe","131.293","Gas","Noble Gas","18","VIIIA","5","[Kr] 4d10 5s2 5p6","1S0","12.1298","-111.8","-108","FCC","(v) 130","","130","108","216","2.6","5.9","#N/A","0.00565","#N/A","CAS7440-63-3","0","Ramsay, William & Travers, Morris William","1898",0x8e87dc,"N/A"},
{    "Cesium","Cs","132.90545","Solid","Alkali Metal","1","IA","6","[Xe] 6s1","2S1/2","3.8939","28.44","671","BCC","(m) 265","265","225","298","343","0.79","1.879","45.5","36","0.0000002","CAS7440-46-2","+1","Kirchhoff, Gustav & Bunsen, Robert","1860",0xcc5e8e,"Conductor"},
{    "Barium","Ba","137.327","Solid","Alkaline Earth Metal","2","IIA","6","[Xe] 6s2","1S0","5.2117","727","1870","BCC","(m) 222","222","198","253","268","0.89","3.51","13.95","18","0.00000035","CAS7440-39-3","+2","Davy, Sir Humphry","1808",0xe4c7c9,"Conductor"},
{    "Lanthanum","La","138.9055","Solid","Rare Earth Metal","3","Lanthanides","6","[Xe] 5d1 6s2","2D3/2","5.5769","920","3464","§hex","(m) 187","187","169","#N/A","#N/A","1.1","6.146","48","13","0.00000061","CAS7439-91-0","+3","Mosander, Carl Gustav","1839",0xffffaa,"Conductor"},
{    "Cerium","Ce","140.116","Solid","Rare Earth Metal","101","Lanthanides","6","[Xe] 4f1 5d1 6s2","1G°4","5.5387","798","3360","FCC","(m) 182","182","#N/A","#N/A","#N/A","1.12","6.689","50","11","0.00000074","CAS7440-45-1","+3,4","Hisinger, Wilhelm & Berzelius, Jöns Jacob/Klaproth, Martin Heinrich","1803",0xffffaa,"Conductor"},
{    "Praseodymium","Pr","140.90765","Solid","Rare Earth Metal","101","Lanthanides","6","[Xe] 4f3 6s2","4I°9/2","5.473","931","3290","§hex","(m) 182","182","#N/A","247","#N/A","1.13","6.64","50","13","0.0000007","CAS7440-10-0","+3","Von Welsbach, Baron Auer","1885",0xffffaa,"Conductor"},
{    "Neodymium","Nd","144.24","Solid","Rare Earth Metal","101","Lanthanides","6","[Xe] 4f4 6s2","5I4","5.525","1021","3100","§hex","(m) 181","181","#N/A","206","#N/A","1.14","7.01","50","17","0.00000064","CAS7440-00-8","+3","Von Welsbach, Baron Auer","1885",0xffffaa,"Conductor"},
{    "Promethium","Pm","145","Synthetic","Rare Earth Metal","101","Lanthanides","6","[Xe] 4f5 6s2","6H°5/2","5.582","1100","3000","HCP","(m) 183","183","#N/A","205","#N/A","#N/A","7.264","50","15","0.00000075","CAS7440-12-2","+3","Marinsky, Jacob A. & Coryell, Charles D. & Glendenin, Lawerence. E.","1944",0xffffaa,"Conductor"},
{    "Samarium","Sm","150.36","Solid","Rare Earth Metal","101","Lanthanides","6","[Xe] 4f6 6s2","7F0","5.6437","1072","1803","§hex","(m) 180","180","#N/A","238","#N/A","1.17","7.353","50","13","0.00000094","CAS7440-19-9","+2,3","Lecoq de Boisbaudran, Paul-Émile","1879",0xffffaa,"Conductor"},
{    "Europium","Eu","151.964","Solid","Rare Earth Metal","101","Lanthanides","6","[Xe] 4f7 6s2","8S°7/2","5.6704","822","1527","BCC","(m) 180","180","#N/A","231","#N/A","#N/A","5.244","50","14","0.0000009","CAS7440-53-1","+2,3","Demarçay, Eugène-Antole","1901",0xffffaa,"Conductor"},
{    "Gadolinium","Gd","157.25","Solid","Rare Earth Metal","101","Lanthanides","6","[Xe] 4f7 5d1 6s2","9D°2","6.1498","1313","3250","HCP","(m) 180","180","#N/A","233","#N/A","1.2","7.901","50","11","0.0000013","CAS7440-54-2","+3","De Marignac, Charles Galissard","1880",0xffffaa,"Conductor"},
{    "Terbium","Tb","158.92534","Solid","Rare Earth Metal","101","Lanthanides","6","[Xe] 4f9 6s2","6H°15/2","5.8638","1356","3230","HCP","(m) 177","177","#N/A","225","#N/A","#N/A","8.219","50","11","0.0000012","CAS7440-27-9","+3","Mosander, Carl Gustav","1843",0xffffaa,"Conductor"},
{    "Dysprosium","Dy","162.5","Solid","Rare Earth Metal","101","Lanthanides","6","[Xe] 4f10 6s2","5I8","5.9389","1412","2567","HCP","(m) 178","178","#N/A","228","#N/A","1.22","8.551","50","11","0.00000091","CAS7429-91-6","+3","Lecoq de Boisbaudran, Paul-Émile","1886",0xffffaa,"Conductor"},
{    "Holmium","Ho","164.93032","Solid","Rare Earth Metal","101","Lanthanides","6","[Xe] 4f11 6s2","4I°15/2","6.0215","1474","2700","HCP","(m) 176","176","#N/A","#N/A","#N/A","1.23","8.795","50","16","0.00000094","CAS7440-60-0","+3","Cleve, Per Theodor","1879",0xffffaa,"Conductor"},
{    "Erbium","Er","167.259","Solid","Rare Earth Metal","101","Lanthanides","6","[Xe] 4f12 6s2","3H6","6.1077","1497","2868","HCP","(m) 176","176","#N/A","226","#N/A","1.24","9.066","50","15","0.00000086","CAS7440-52-0","+3","Mosander, Carl Gustav","1842",0xffffaa,"Conductor"},
{    "Thulium","Tm","168.93421","Solid","Rare Earth Metal","101","Lanthanides","6","[Xe] 4f13 6s2","2F°7/2","6.1843","1545","1950","HCP","(m) 176","176","#N/A","222","#N/A","1.25","9.321","50","17","0.0000007","CAS7440-30-4","+3","Cleve, Per Teodor","1879",0xffffaa,"Conductor"},
{    "Ytterbium","Yb","173.04","Solid","Rare Earth Metal","101","Lanthanides","6","[Xe] 4f14 6s2","1S0","6.2542","819","1196","FCC","(m) 176","176","#N/A","222","#N/A","#N/A","6.57","50","39","0.00000028","CAS7440-64-4","+2,3","De Marignac, Jean Charles Galissard","1878",0xffffaa,"Conductor"},
{    "Lutetium","Lu","174.967","Solid","Rare Earth Metal","101","Lanthanides","6","[Xe] 4f14 5d1 6s2","2D3/2","5.4259","1663","3402","HCP","(m) 174","174","160","217","#N/A","1.27","9.841","50","16","0.00000056","CAS7439-94-3","+3","Urbain, Georges","1907",0xffffaa,"Conductor"},
{    "Hafnium","Hf","178.49","Solid","Transition Metal","4","IVB","6","[Xe] 4f14 5d2 6s2","3F2","6.8251","2233","4603","HCP","(m) 159","159","150","208","#N/A","1.3","13.31","0","23","0.0000003","CAS7440-58-6","+4","Coster, Dirk & De Hevesy, George Charles","1923",0x999999,"Conductor"},
{    "Tantalum","Ta","180.9479","Solid","Transition Metal","5","VB","6","[Xe] 4f14 5d3 6s2","4F3/2","7.5496","3017","5458","BCC","(m) 146","146","138","200","#N/A","1.5","16.65","31","57","0.00000013","CAS7440-25-7","+5","Ekeberg, Anders Gustav","1802",0x999999,"Conductor"},
{    "Tungsten","W","183.84","Solid","Transition Metal","6","VIB","6","[Xe] 4f14 5d4 6s2","5D0","7.864","3422","5555","BCC","(m) 139","139","146","193","#N/A","2.36","19.25","78.6","170","0.00000005","CAS7440-33-7","+6","Elhuyar, Juan José & Elhuyar, Fausto","1783",0x999999,"Conductor"},
{    "Rhenium","Re","186.207","Solid","Transition Metal","7","VIIB","6","[Xe] 4f14 5d5 6s2","6S5/2","7.8335","3186","5596","HCP","(m) 137","137","159","188","#N/A","1.9","21.02","14.5","48","0.00000018","CAS7440-15-5","+4,67","Noddack, Walter & Berg, Otto Carl & Tacke, Ida","1925",0x999999,"Conductor"},
{    "Osmium","Os","190.23","Solid","Transition Metal","8","VIIIB","6","[Xe] 4f14 5d6 6s2","5D4","8.4382","3033","5012","HCP","(m) 135","135","128","185","#N/A","2.2","22.61","106.1","88","0.000000081","CAS7440-04-2","+3,4","Tennant, Smithson","1803",0x999999,"Conductor"},
{    "Iridium","Ir","192.217","Solid","Transition Metal","9","VIIIB","6","[Xe] 4f14 5d7 6s2","4F9/2","8.967","2466","4428","FCC","(m) 136","136","137","180","#N/A","2.2","22.65","151","150","0.000000047","CAS7439-88-5","+3,4","Tennant, Smithson","1803",0x999999,"Conductor"},
{    "Platinum","Pt","195.078","Solid","Transition Metal","10","VIIIB","6","[Xe] 4f14 5d9 6s1","3D3","8.9588","1768.3","3825","FCC","(m) 139","139","128","177","175","2.28","21.09","205.3","72","0.00000011","CAS7440-06-4","+2,4","Ulloa, Antonio de","1735",0x999999,"Conductor"},
{    "Gold","Au","196.96655","Solid","Transition Metal","11","IB","6","[Xe] 4f14 5d10 6s1","2S1/2","9.2255","1064.18","2856","FCC","(m) 144","144","144","174","166","2.54","19.3","222.8","320","0.000000022","CAS7440-57-5","+1,3","unknown","ancient",0x999999,"Conductor"},
{    "Mercury","Hg","200.59","Liquid","Transition Metal","12","IIB","6","[Xe] 4f14 5d10 6s2","1S0","10.4375","-38.83","356.73","§rhom.","(m) 151","151","149","171","155","2","13.534","#N/A","8.3","0.00000096","CAS7439-97-6","+1,2","unknown","ancient",0x999999,"Conductor"},
{    "Thallium","Tl","204.3833","Solid","Poor Metal","13","IIIA","6","[Hg] 6p1","2P01/2","6.1082","304","1473","HCP","(m) 170","170","148","156","196","1.62","11.85","19.2","46","0.00000015","CAS7440-28-0","+1,3","Crookes, William","1861",0x555555,"Conductor"},
{    "Lead","Pb","207.2","Solid","Poor Metal","14","IVA","6","[Hg] 6p2","3P0","7.4167","327.46","1749","FCC","(m) 175","175","147","154","202","2.33","11.34","35.1","35","0.00000021","CAS7439-92-1","+2,4","unknown","ancient",0x555555,"Conductor"},
{    "Bismuth","Bi","208.98038","Solid","Poor Metal","15","VA","6","[Hg] 6p3","4S03/2","7.2855","271.3","1564","§rhom.","(v) 146","","146","143","207","2.02","9.78","91.2","8","0.0000013","CAS7440-69-9","+3,5","Geoffroy, Claude ","ancient",0x555555,"Conductor"},
{    "Polonium","Po","209","Solid","Metalloids ?","16","VIA","6","[Hg] 6p4","3P2","8.414","254","962","§cubic","","","#N/A","135","197","2","9.196","183.3","#N/A","0.00000043","CAS7440-08-6","+2,4","Curie, Marie & Pierre","1898",0x95cec9,"Conductor"},
{    "Astatine","At","210","Solid","Metalloids","17","VIIA","6","[Hg] 6p5","2P03/2","#N/A","302","#N/A","","","","#N/A","#N/A","202","2.2","#N/A","270.1","2","#N/A","CAS7440-68-8","","Corson, Dale R. & Mackenzie, K. R.","1940",0x95cec9,"N/A"},
{    "Radon","Rn","222","Gas","Noble Gas","18","VIIIA","6","[Hg] 6p6","1S0","10.7485","-71","-61.7","","(v) 145","","145","120","220","#N/A","9.73","#N/A","0.00361","#N/A","CAS10043-92-2","0","Dorn, Friedrich Ernst","1900",0x8e87dc,"N/A"},
{    "Francium","Fr","223","Solid","Alkali Metal","1","IA","7","[Rn] 7s1","2S1/2","4.0727","#N/A","#N/A","","","","#N/A","#N/A","348","0.7","#N/A","#N/A","#N/A","#N/A","CAS7440-73-5","+1","Perey, Marguerite","1939",0xcc5e8e,"N/A"},
{    "Radium","Ra","226","Solid","Alkaline Earth Metal","2","IIA","7","[Rn] 7s2","1S0","5.2784","700","1737","BCC","","","#N/A","#N/A","283","0.9","5","#N/A","19","0.000001","CAS7440-14-4","+2","Curie, Marie & Pierre","1898",0xe4c7c9,"Conductor"},
{    "Actinium","Ac","227","Solid","Rare Earth Metal","3","Actinides","7","[Rn] 6d1 7s2","2D3/2","5.17","1050","3200","FCC","","","#N/A","#N/A","#N/A","1.1","10.07","#N/A","12","#N/A","CAS7440-34-8","+3","Debierne, André","1899",0xffffaa,"N/A"},
{    "Thorium","Th","232.0381","Solid","Rare Earth Metal","102","Actinides","7","[Rn] 6d2 7s2","3F2","6.3067","1750","4820","FCC","(m) 179","179","#N/A","#N/A","#N/A","1.3","11.724","#N/A","54","0.00000015","CAS7440-29-1","+4","Berzelius, Jöns Jacob","1829",0xffffaa,"Conductor"},
{    "Protactinium","Pa","231.03588","Solid","Rare Earth Metal","102","Actinides","7","[Rn] 5f2 6d1 7s2","4K11/2","5.89","1572","4000","§tetra","(m) 163","163","#N/A","#N/A","#N/A","1.5","15.37","#N/A","47","0.00000018","CAS7440-13-3","+4,5","Göhring, Otto & Fajans, Kasimir","1913",0xffffaa,"Conductor"},
{    "Uranium","U","238.02891","Solid","Rare Earth Metal","102","Actinides","7","[Rn] 5f3 6d1 7s2","5L°6","6.1941","1135","3927","BCO","(m) 156","156","#N/A","#N/A","186","1.38","19.05","#N/A","27","0.00000028","CAS7440-61-1","+3,4,5,6","Klaproth, Martin Heinrich","1789",0xffffaa,"Conductor"},
{    "Neptunium","Np","237","Synthetic","Rare Earth Metal","102","Actinides","7","[Rn] 5f4 6d1 7s2","6L11/2","6.2657","644","4000","SO","(m) 155","155","#N/A","#N/A","#N/A","1.36","20.45","#N/A","6","0.0000012","CAS7439-99-8","+3,4,5,6","McMillan, Edwin M. & Abelson, Philip H.","1940",0xffffaa,"Conductor"},
{    "Plutonium","Pu","244","Synthetic","Rare Earth Metal","102","Actinides","7","[Rn] 5f6 7s2","7F0","6.0260","640","3230","§mono.","(m) 159","159","#N/A","#N/A","#N/A","1.28","19.816","#N/A","6","0.0000015","CAS7440-07-5","+3,4,5,6","Glenn T. Seaborg, Joseph W. Kennedy, Edward M. McMillan, Arthur C. Wohl","1940",0xffffaa,"Conductor"},
{    "Americium","Am","243","Synthetic","Rare Earth Metal","102","Actinides","7","[Rn] 5f7 7s2","8S°7/2","5.9738","1176","2011","HCP","(m) 173","173","#N/A","#N/A","#N/A","1.3","#N/A","#N/A","10","#N/A","CAS7440-35-9","+3,4,5,6","Glenn T. Seaborg, Ralph A. James, Leon O. Morgan, Albert Ghiorso","1944",0xffffaa,"N/A"},
{    "Curium","Cm","247","Synthetic","Rare Earth Metal","102","Actinides","7","[Rn] 5f7 6d 7s2","9D°2","5.9914","1345","3110","HCP","(m) 174","174","#N/A","#N/A","#N/A","1.3","13.51","#N/A","#N/A","#N/A","CAS7440-51-9","+3","Glenn T. Seaborg, Ralph A. James, Albert Ghiorso","1944",0xffffaa,"N/A"},
{    "Berkelium","Bk","247","Synthetic","Rare Earth Metal","102","Actinides","7","[Rn] 5f9 7s2","6H°15/2","6.1979","1050","#N/A","hex","(m) 170","170","#N/A","#N/A","#N/A","1.3","14.78","#N/A","10","#N/A","CAS7440-40-6","+3,4","Stanley G. Thompson, Glenn T. Seaborg, Kenneth Street, Jr., Albert Ghiorso","1949",0xffffaa,"N/A"},
{    "Californium","Cf","251","Synthetic","Rare Earth Metal","102","Actinides","7","[Rn] 5f10 7s2","5I8","6.2817","900","#N/A","hex","","","#N/A","#N/A","#N/A","1.3","15.1","#N/A","#N/A","#N/A","CAS7440-71-3","+3","Stanley G. Thompson, Glenn T. Seaborg, Kenneth Street, Jr., Albert Ghiorso","1950",0xffffaa,"N/A"},
{    "Einsteinium","Es","252","Synthetic","Rare Earth Metal","102","Actinides","7","[Rn] 5f11 7s2","4I°15/2","6.42","860","#N/A","","","","#N/A","#N/A","#N/A","1.3","#N/A","#N/A","#N/A","#N/A","CAS7429-92-7","+3","Albert Ghiorso et. al.","1952",0xffffaa,"N/A"},
{    "Fermium","Fm","257","Synthetic","Rare Earth Metal","102","Actinides","7","[Rn] 5f12 7s2","3H6","6.5","1527","#N/A","","","","#N/A","#N/A","#N/A","1.3","#N/A","#N/A","#N/A","#N/A","CAS7440-72-4","+3","Albert Ghiorso et. al.","1952",0xffffaa,"N/A"},
{    "Mendelevium","Md","258","Synthetic","Rare Earth Metal","102","Actinides","7","[Rn] 5f13 7s2","2F°7/2","6.58","827","#N/A","","","","#N/A","#N/A","#N/A","1.3","#N/A","#N/A","#N/A","#N/A","CAS7440-11-1","+2,3","Stanley G. Thompson, Glenn T. Seaborg, Bernard G. Harvey, Gregory R. Choppin, Albert Ghiorso","1955",0xffffaa,"N/A"},
{    "Nobelium","No","259","Synthetic","Rare Earth Metal","102","Actinides","7","[Rn] 5f14 7s2","1S0","6.65","827","#N/A","","","","#N/A","#N/A","#N/A","1.3","#N/A","#N/A","#N/A","#N/A","CAS10028-14-5","+2,3","Albert Ghiorso, Glenn T. Seaborg, Torbørn Sikkeland, John R. Walton","1958",0xffffaa,"N/A"},
{    "Lawrencium","Lr","262","Synthetic","Rare Earth Metal","102","Actinides","7","[Rn] 5f14 7s2 7p1","2P°1/2 ?","4.9 ?","1627","#N/A","","","","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","CAS22537-19-5","+3","Albert Ghiorso, Torbjørn Sikkeland, Almon E. Larsh, Robert M. Latimer","1961",0xffffaa,"N/A"},
{    "Rutherfordium","Rf","261","Synthetic","Transition Metal","4","IVB","7","[Rn] 5f14 6d2 7s2","3F2 ?","6.0 ?","#N/A","#N/A","","","","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","CAS53850-36-5","+4","Scientists at Dubna, Russia (1964)/Albert Ghiorso et. al. (1969)","1964",0x999999,"N/A"},
{    "Dubnium","Db","262","Synthetic","Transition Metal","5","VB","7","[Rn] 5f14 6d3 7s2"," ","#N/A","#N/A","#N/A","","","","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","CAS53850-35-4","","Scientists at Dubna, Russia (1967)/Lawrence Berkeley Laboratory (1970)","1967",0x999999,"N/A"},
{    "Seaborgium","Sg","266","Synthetic","Transition Metal","6","VIB","7","[Rn] 5f14 6d4 7s2"," ","#N/A","#N/A","#N/A","","","","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","CAS54038-81-2","","Albert Ghiorso et. al.","1974",0x999999,"N/A"},
{    "Bohrium","Bh","264","Synthetic","Transition Metal","7","VIIB","7","[Rn] 5f14 6d5 7s2"," ","#N/A","#N/A","#N/A","","","","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","CAS54037-14-8","","Scientists at Dubna, Russia","1976",0x999999,"N/A"},
{    "Hassium","Hs","277","Synthetic","Transition Metal","8","VIIIB","7","[Rn] 5f14 6d6 7s2"," ","#N/A","#N/A","#N/A","","","","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","CAS54037-57-9","","Armbruster, Paula & Muenzenberg, Dr. Gottfried","1984",0x999999,"N/A"},
{    "Meitnerium","Mt","268","Synthetic","Transition Metal ?","9","VIIIB","7","[Rn] 5f14 6d7 7s2 ?"," ","#N/A","#N/A","#N/A","","","","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","CAS54038-01-6","","Armbruster, Paula & Muenzenberg, Dr. Gottfried","1982",0x999999,"N/A"},
{    "Darmstadtium","Ds","281","Synthetic","Transition Metal ?","10","VIIIB","7","[Rn] 5f14 6d8 7s2 ?"," ","#N/A","#N/A","#N/A","","","","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","CAS54083-77-1","","Armbruster, Paula & Muenzenberg, Dr. Gottfried","1994",0x999999,"N/A"},
{    "Roentgenium","Rg","272","Synthetic","Transition Metal ?","11","IB","7","[Rn] 5f14 6d9 7s2 ?"," ","#N/A","#N/A","#N/A","","","","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","CAS54386-24-2","","Hofmann, Sigurd et. al.","1994",0x999999,"N/A"},
{    "Copernicium","Cn","285","Synthetic","Transition Metal","12","IIB","7","[Rn] 5f14 6d10 7s2 ?"," ","#N/A","#N/A","#N/A","","","","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","CAS54084-26-3","","Armbruster, Paula & Muenzenberg, Dr. Gottfried","1996",0x999999,"N/A"},
{    "Nihonium","Nh","286","Synthetic","Post-Transition Metal ?","13","IIIA","7","[Rn] 5f14 6d10 7s2 7p1 ?"," ","#N/A","#N/A","#N/A","","","","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","CAS54084-70-7","","Y. T. Oganessian et. al.","2004",0x999999,"N/A"},
{    "Flerovium","Fl","289","Synthetic","Post-Transition Metal ?","14","IVA","7","[Rn] 5f14 6d10 7s2 7p2 ?"," ","#N/A","#N/A","#N/A","","","","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","CAS54085-16-4","","Scientists at Dubna, Russia","1998",0x999999,"N/A"},
{    "Moscovium","Mc","290","Synthetic","Post-Transition Metal ?","15","VA","7","[Rn] 5f14 6d10 7s2 7p3 ?"," ","#N/A","#N/A","#N/A","","","","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","CAS54085-64-2","","Y. T. Oganessian et. al.","2004",0x999999,"N/A"},
{    "Livermorium","Lv","292","Synthetic","Post-Transition Metal ?","16","VIA","7","[Rn] 5f14 6d10 7s2 7p4 ?"," ","#N/A","#N/A","#N/A","","","","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","CAS54100-71-9","","Scientists at Dubna, Russia","2001",0x999999,"N/A"},
{    "Tennessine","Ts","294","Synthetic","Post-Transition Metal ?","17","VIIA","7","[Rn] 5f14 6d10 7s2 7p5 ?"," ","#N/A","#N/A","#N/A","","","","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","CAS87658-56-8","","Yet to be produced","NA",0x999999,"N/A"},
{    "Oganesson","Og","294","Synthetic","Noble Gas ?","18","VIIIA","7","[Rn] 5f14 6d10 7s2 7p6 ?"," ","#N/A","#N/A","#N/A","","","","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","#N/A","CAS54144-19-3","","Y. T. Oganessian et. al.","2006",0x999999,"N/A"},
}


















--##################################################################################################################################
--##################################################################################################################################
--##################################################################################################################################
--##################################################################################################################################
--##################################################################################################################################
--##################################################################################################################################
--##################################################################################################################################
--##################################################################################################################################











--[[    Constants OF Physics
        According To https://physics.nist.gov/cuu/Constants/Table/allascii.txt
     ]]



ResistanceCalc.Material = {
"Silver",
"Copper",
"Annealed copper",
"Gold",
"Aluminium",
"Calcium",
"Tungsten",
"Zinc",
"Nickel",
"Lithium",
"Iron",
"Platinum",
"Tin",
"Gallium",
"Carbon steel (1010)",
"Lead",
"Titanium",
"Grain oriented Elec steel",
"Manganin",
"Constantan",
"Stainless steel[e]",
"Mercury",
"Nichrome",
"Carbon (amorphous)",
"Carbon (graphite)",
"GaAs",
"Germanium",
"Sea water",
"Swimming pool water",
"Drinking water",
"Silicon",
"Wood (damp)",
"Deionized water",
"Glass",
"Carbon (diamond)",
"Hard rubber",
"Air",
"Wood (oven dry)",
"Sulfur",
"Fused quartz",
"PET",
"Teflon",


}
ResistanceCalc.TempcoEfficient= {
0.0038,
0.00404,
0.00393,
0.0034,
0.0039,
0.0041,
0.0045,
0.0037,
0.006,
0.006,
0.005,
0.00392,
0.0045,
0.004,
0,
0.0039,
0.0038,
0,
0.000002,
0.000008,
0.00094,
0.0009,
0.0004,
0.0005*-1,
0,
0,
0.048*-1,
0,
0,
0,
0.075*-1,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
}



ResistanceCalc.Resistivity={
"0.0000000159",
"0.0000000168",
"0.0000000172",
"0.0000000244",
"0.0000000265",
"0.0000000336",
"0.0000000560",
"0.0000000590",
"0.0000000699",
"0.0000000928",
"0.0000000971",
"0.000000106",
"0.000000109",
"0.000000140",
"0.000000143",
"0.000000220",
"0.000000420",
"0.000000460",
"0.000000482",
"0.000000490",
"0.000000690",
"0.000000980",
"0.0000011",
"0.00065",
"0.000004",
"0.003",
"0.001",
"0.46",
"0.2",
"0.373",
"20",
"640",
"1000",
"180000",
"10000000000000",
"1000000000000",
"10000000000000",
"1000000000",
"100000000000000",
"1000000000000000",
"750000000000000000",
"1000000000000000000000",
"100000000000000000000000",

}
ResistanceCalc.Conductivity={
"6.30E7",
"5.96E7",
"5.80E7",
"4.10E7",
"3.77E7",
"2.98E7",
"1.79E7",
"1.69E7",
"1.43E7",
"1.08E7",
"1.00E7",
"9.43E6",
"9.17E6",
"7.10E6",
"6.99E6",
"4.55E6",
"2.38E6",
"2.17E6",
"2.07E6",
"2.04E6",
"1.45E6",
"1.02E6",
"6.7E5",
"1.25E3 to 2E3",
"2E5 to 3E5",
"1.00E−8 to 10^3",
"2.17",
"4.80",
"0.25 to 0.30",
"5.00E−4 to 5.00E−2",
"1.56E−3",
"10^−4 to 10^-3",
"5.50E−6",
"10^-15 to 10^-11",
"~10^-13",
"10^-14",
"~10^-15 to 10^-9",
"10^-16 to 10^-14",
"10^-16",
"1.30E−18",
"10^-21",
"10^-25 to 10^-23",
}




Galphabet.En_Name={
"alpha",
"beta",
"gamma",
"delta",
"epsilon",
"zeta",
"eta",
"theta",
"iota",
"kappa",
"lambda",
"mu",
"nu",
"xi",
"omicron",
"pi",
"rho",
"sigma",
"tau",
"upsilon",
"phi",
"chi",
"psi",
"omega",
 }

Galphabet.UpperCase ={
"Α",
"Β",
"Γ",
"Δ, ∆",
"Ε",
"Ζ",
"Η",
"Θ",
"Ι",
"Κ",
"Λ",
"Μ",
"Ν",
"Ξ",
"Ο",
"Π, ∏",
"Ρ",
"Σ, ∑",
"Τ",
"Υ",
"Φ",
"Χ",
"Ψ",
"Ω, Ω",
 }
Galphabet.LowerCase={
"α",
"β",
"γ",
"δ",
"ε",
"ζ",
"η",
"θ",
"ι",
"κ",
"λ",
"μ",
"ν",
"ξ",
"ο",
"π",
"ρ",
"σ",
"τ",
"υ",
"φ",
"χ",
"ψ",
"ω",
 }
Galphabet.UpperCode ={
"913",
"0914",
"0915",
"0916, 8710",
"0917",
"0918",
"0919",
"0920, 1012",
"0921",
"0922",
"0923",
"0924",
"0925",
"0926",
"0927",
"0928",
"0929",
"0931, 8721",
"0932",
"0933, 0978",
"0934",
"0935",
"0936",
"0937, 8486",
 }
Galphabet.LowerCode ={
"945",
"0946, 0976",
"0947",
"0948",
"0949, 1013",
"0950",
"0951",
"0952, 0977",
"0953",
"0954, 1008",
"0955",
"0956, 0181",
"0957",
"0958",
"0959",
"0960, 0982",
"0961, 1009",
"0963, 0962",
"0964",
"0965",
"0966, 0981",
"0967",
"0968",
"0969",
 }


ResistorSmdCode.code = {
"100",
"102",
"105",
"107",
"110",
"113",
"115",
"118",
"121",
"124",
"127",
"130",
"133",
"137",
"140",
"143",
"147",
"150",
"154",
"158",
"162",
"165",
"169",
"174",
"178",
"182",
"187",
"191",
"196",
"200",
"205",
"210",
"215",
"221",
"226",
"232",
"237",
"243",
"249",
"255",
"261",
"267",
"274",
"280",
"287",
"294",
"301",
"309",
"316",
"324",
"332",
"340",
"348",
"357",
"365",
"374",
"383",
"392",
"402",
"412",
"422",
"432",
"442",
"453",
"464",
"475",
"487",
"499",
"511",
"523",
"536",
"549",
"562",
"576",
"590",
"604",
"619",
"634",
"649",
"665",
"681",
"698",
"715",
"732",
"750",
"768",
"787",
"806",
"825",
"845",
"866",
"887",
"909",
"931",
"953",
"976",
 }
 
ResistorSmdCode.EIAChar = {
"z",
"y",
"r",
"x",
"s",
"a",
"b",
"h",
 'c',
"d",
"e",
"f",
 }
 
ResistorSmdCode.EIAValue={
"0.001",
"0.01",
"0.01",
"0.1",
"0.1",
"1",
"10",
"10",
"100",
"1000",
"10000",
"100000",
 }

SI.Name={
"radiannote",
"steradiannote",
"hertz",
"newton",
"pascal",
"joule",
"watt",
"coulomb",
"volt",
"farad",
"ohm",
"siemens",
"weber",
"tesla",
"henry",
"degree Celsius",
"lumen",
"lux",
"becquerel",
"gray",
"sievert",
"katal",
"",
"",
}
SI.Symbol =
	{
		"rad",
		"sr",
		"Hz",
		"N",
		"Pa",
		"J",
		"W",
		"C",
		"V",
		"F",
		"Ω",
		"S",
		"Wb",
		"T",
		"H",
		"°C",
		"lm",
		"lx",
		"Bq",
		"Gy",
		"Sv",
		"kat",
		"",
		"",
	}
SI.Quantity={
"angle",
"solid angle",
"frequency",
"force, weight",
"pressure, stress",
"energy, work, heat",
"power, radiant flux",
"electric charge|quantity of electricity",
"voltage (electrical potential), emf",
"capacitance",
"resistance, impedance, reactance",
"electrical conductance",
"magnetic flux",
"magnetic flux density",
"inductance",
"temperature relative to 273.15 K",
"luminous flux",
"illuminance",
"radioactivity (decays per unit time)",
"absorbed dose (of ionizing radiation)",
"equivalent dose (of ionizing radiation)",
"catalytic activity",
"",
"",
}
SI.OtherSI={
"",
"",
"",
"",
"N/m2",
"N⋅m = Pa⋅m3",
"J/s",
"",
"W/A",
"C/V",
"V/A",
"Ω−1",
"V⋅s",
"Wb/m2",
"Wb/A",
"",
"cd⋅sr",
"lm/m2",
"",
"J/kg",
"J/kg",
"",
"",
"",}

SI.base={
"(m m)",
"(m^2 m^−2)",
"s",
"kg m s^−2",
"kg m s^−2",
"kg m^2 s^−2",
"kg m^2 s^−3",
"s A",
"kg m^2 s^−3 A",
"kg m^−2 s^4 A^2",
"kg m2 s^−3 A^−2",
"kg m^−2 s^3 A^2",
"kg m^2 s^−2 A",
"kg s^−2 A",
"kg m^2 s^−2 A^−2",
"K",
"cd",
"m^−2 cd",
"s",
"m^2 s^−2",
"m^2 s^−2",
"mol s",
"",
"",
}

















PhysicsConstants.Quantity={
"{220} lattice spacing of silicon",
"alpha particle-electron mass ratio",
"alpha particle mass",
"alpha particle mass energy equivalent",
"alpha particle mass energy equivalent in MeV",
"alpha particle mass in u",
"alpha particle molar mass",
"alpha particle-proton mass ratio",
"Angstrom star",
"atomic mass constant",
"atomic mass constant energy equivalent",
"atomic mass constant energy equivalent in MeV",
"atomic mass unit-electron volt relationship",
"atomic mass unit-hartree relationship",
"atomic mass unit-hertz relationship",
"atomic mass unit-inverse meter relationship",
"atomic mass unit-joule relationship",
"atomic mass unit-kelvin relationship",
"atomic mass unit-kilogram relationship",
"atomic unit of 1st hyperpolarizability",
"atomic unit of 2nd hyperpolarizability",
"atomic unit of action",
"atomic unit of charge",
"atomic unit of charge density",
"atomic unit of current",
"atomic unit of electric dipole mom.",
"atomic unit of electric field",
"atomic unit of electric field gradient",
"atomic unit of electric polarizability",
"atomic unit of electric potential",
"atomic unit of electric quadrupole mom.",
"atomic unit of energy",
"atomic unit of force",
"atomic unit of length",
"atomic unit of mag. dipole mom.",
"atomic unit of mag. flux density",
"atomic unit of magnetizability",
"atomic unit of mass",
"atomic unit of mom.um",
"atomic unit of permittivity",
"atomic unit of time",
"atomic unit of velocity",
"Avogadro constant",
"Bohr magneton",
"Bohr magneton in eV/T",
"Bohr magneton in Hz/T",
"Bohr magneton in inverse meters per tesla",
"Bohr magneton in K/T",
"Bohr radius",
"Boltzmann constant",
"Boltzmann constant in eV/K",
"Boltzmann constant in Hz/K",
"Boltzmann constant in inverse meters per kelvin",
"characteristic impedance of vacuum",
"classical electron radius",
"Compton wavelength",
"Compton wavelength over 2 pi",
"conductance quantum",
"conventional value of Josephson constant",
"conventional value of von Klitzing constant",
"Cu x unit",
"deuteron-electron mag. mom. ratio",
"deuteron-electron mass ratio",
"deuteron g factor",
"deuteron mag. mom.",
"deuteron mag. mom. to Bohr magneton ratio",
"deuteron mag. mom. to nuclear magneton ratio",
"deuteron mass",
"deuteron mass energy equivalent",
"deuteron mass energy equivalent in MeV",
"deuteron mass in u",
"deuteron molar mass",
"deuteron-neutron mag. mom. ratio",
"deuteron-proton mag. mom. ratio",
"deuteron-proton mass ratio",
"deuteron rms charge radius",
"electric constant",
"electron charge to mass quotient",
"electron-deuteron mag. mom. ratio",
"electron-deuteron mass ratio",
"electron g factor",
"electron gyromag. ratio",
"electron gyromag. ratio over 2 pi",
"electron-helion mass ratio",
"electron mag. mom.",
"electron mag. mom. anomaly",
"electron mag. mom. to Bohr magneton ratio",
"electron mag. mom. to nuclear magneton ratio",
"electron mass",
"electron mass energy equivalent",
"electron mass energy equivalent in MeV",
"electron mass in u",
"electron molar mass",
"electron-muon mag. mom. ratio",
"electron-muon mass ratio",
"electron-neutron mag. mom. ratio",
"electron-neutron mass ratio",
"electron-proton mag. mom. ratio",
"electron-proton mass ratio",
"electron-tau mass ratio",
"electron to alpha particle mass ratio",
"electron to shielded helion mag. mom. ratio",
"electron to shielded proton mag. mom. ratio",
"electron-triton mass ratio",
"electron volt (charge) q",
"electron volt-atomic mass unit relationship",
"electron volt-hartree relationship",
"electron volt-hertz relationship",
"electron volt-inverse meter relationship",
"electron volt-joule relationship",
"electron volt-kelvin relationship",
"electron volt-kilogram relationship",
"elementary charge",
"elementary charge over h",
"Faraday constant",
"Faraday constant for conventional electric current",
"Fermi coupling constant",
"fine-structure constant",
"first radiation constant",
"first radiation constant for spectral radiance",
"hartree-atomic mass unit relationship",
"hartree-electron volt relationship",
"Hartree energy",
"Hartree energy in eV",
"hartree-hertz relationship",
"hartree-inverse meter relationship",
"hartree-joule relationship",
"hartree-kelvin relationship",
"hartree-kilogram relationship",
"helion-electron mass ratio",
"helion g factor",
"helion mag. mom.",
"helion mag. mom. to Bohr magneton ratio",
"helion mag. mom. to nuclear magneton ratio",
"helion mass",
"helion mass energy equivalent",
"helion mass energy equivalent in MeV",
"helion mass in u",
"helion molar mass",
"helion-proton mass ratio",
"hertz-atomic mass unit relationship",
"hertz-electron volt relationship",
"hertz-hartree relationship",
"hertz-inverse meter relationship",
"hertz-joule relationship",
"hertz-kelvin relationship",
"hertz-kilogram relationship",
"inverse fine-structure constant",
"inverse meter-atomic mass unit relationship",
"inverse meter-electron volt relationship",
"inverse meter-hartree relationship",
"inverse meter-hertz relationship",
"inverse meter-joule relationship",
"inverse meter-kelvin relationship",
"inverse meter-kilogram relationship",
"inverse of conductance quantum",
"Josephson constant",
"joule-atomic mass unit relationship",
"joule-electron volt relationship",
"joule-hartree relationship",
"joule-hertz relationship",
"joule-inverse meter relationship",
"joule-kelvin relationship",
"joule-kilogram relationship",
"kelvin-atomic mass unit relationship",
"kelvin-electron volt relationship",
"kelvin-hartree relationship",
"kelvin-hertz relationship",
"kelvin-inverse meter relationship",
"kelvin-joule relationship",
"kelvin-kilogram relationship",
"kilogram-atomic mass unit relationship",
"kilogram-electron volt relationship",
"kilogram-hartree relationship",
"kilogram-hertz relationship",
"kilogram-inverse meter relationship",
"kilogram-joule relationship",
"kilogram-kelvin relationship",
"lattice parameter of silicon",
"Loschmidt constant (273.15 K, 100 kPa)",
"Loschmidt constant (273.15 K, 101.325 kPa)",
"mag. constant",
"mag. flux quantum",
"molar gas constant",
"molar mass constant",
"molar mass of carbon-12",
"molar Planck constant",
"molar Planck constant times c",
"molar volume of ideal gas (273.15 K, 100 kPa)",
"molar volume of ideal gas (273.15 K, 101.325 kPa)",
"molar volume of silicon",
"Mo x unit",
"muon Compton wavelength",
"muon Compton wavelength over 2 pi",
"muon-electron mass ratio",
"muon g factor",
"muon mag. mom.",
"muon mag. mom. anomaly",
"muon mag. mom. to Bohr magneton ratio",
"muon mag. mom. to nuclear magneton ratio",
"muon mass",
"muon mass energy equivalent",
"muon mass energy equivalent in MeV",
"muon mass in u",
"muon molar mass",
"muon-neutron mass ratio",
"muon-proton mag. mom. ratio",
"muon-proton mass ratio",
"muon-tau mass ratio",
"natural unit of action",
"natural unit of action in eV s",
"natural unit of energy",
"natural unit of energy in MeV",
"natural unit of length",
"natural unit of mass",
"natural unit of mom.um",
"natural unit of mom.um in MeV/c",
"natural unit of time",
"natural unit of velocity",
"neutron Compton wavelength",
"neutron Compton wavelength over 2 pi",
"neutron-electron mag. mom. ratio",
"neutron-electron mass ratio",
"neutron g factor",
"neutron gyromag. ratio",
"neutron gyromag. ratio over 2 pi",
"neutron mag. mom.",
"neutron mag. mom. to Bohr magneton ratio",
"neutron mag. mom. to nuclear magneton ratio",
"neutron mass",
"neutron mass energy equivalent",
"neutron mass energy equivalent in MeV",
"neutron mass in u",
"neutron molar mass",
"neutron-muon mass ratio",
"neutron-proton mag. mom. ratio",
"neutron-proton mass difference",
"neutron-proton mass difference energy equivalent",
"neutron-proton mass difference energy equivalent in MeV",
"neutron-proton mass difference in u",
"neutron-proton mass ratio",
"neutron-tau mass ratio",
"neutron to shielded proton mag. mom. ratio",
"Newtonian constant of gravitation",
"Newtonian constant of gravitation over h-bar c",
"nuclear magneton",
"nuclear magneton in eV/T",
"nuclear magneton in inverse meters per tesla",
"nuclear magneton in K/T",
"nuclear magneton in MHz/T",
"Permeability of a vacuum μ₀",
"Permittivity of a vacuum ε₀",
"Planck constant",
"Planck constant in eV s",
"Planck constant over 2 pi",
"Planck constant over 2 pi in eV s",
"Planck constant over 2 pi times c in MeV fm",
"Planck length",
"Planck mass",
"Planck mass energy equivalent in GeV",
"Planck temperature",
"Planck time",
"proton charge to mass quotient",
"proton Compton wavelength",
"proton Compton wavelength over 2 pi",
"proton-electron mass ratio",
"proton g factor",
"proton gyromag. ratio",
"proton gyromag. ratio over 2 pi",
"proton mag. mom.",
"proton mag. mom. to Bohr magneton ratio",
"proton mag. mom. to nuclear magneton ratio",
"proton mag. shielding correction",
"proton mass",
"proton mass energy equivalent",
"proton mass energy equivalent in MeV",
"proton mass in u",
"proton molar mass",
"proton-muon mass ratio",
"proton-neutron mag. mom. ratio",
"proton-neutron mass ratio",
"proton rms charge radius",
"proton-tau mass ratio",
"quantum of circulation",
"quantum of circulation times 2",
"Rydberg constant",
"Rydberg constant times c in Hz",
"Rydberg constant times hc in eV",
"Rydberg constant times hc in J",
"Sackur-Tetrode constant (1 K, 100 kPa)",
"Sackur-Tetrode constant (1 K, 101.325 kPa)",
"second radiation constant",
"shielded helion gyromag. ratio",
"shielded helion gyromag. ratio over 2 pi",
"shielded helion mag. mom.",
"shielded helion mag. mom. to Bohr magneton ratio",
"shielded helion mag. mom. to nuclear magneton ratio",
"shielded helion to proton mag. mom. ratio",
"shielded helion to shielded proton mag. mom. ratio",
"shielded proton gyromag. ratio",
"shielded proton gyromag. ratio over 2 pi",
"shielded proton mag. mom.",
"shielded proton mag. mom. to Bohr magneton ratio",
"shielded proton mag. mom. to nuclear magneton ratio",
"speed of light in vacuum",
"standard acceleration of gravity",
"standard atmosphere",
"standard-state pressure",
"Stefan-Boltzmann constant",
"tau Compton wavelength",
"tau Compton wavelength over 2 pi",
"tau-electron mass ratio",
"tau mass",
"tau mass energy equivalent",
"tau mass energy equivalent in MeV",
"tau mass in u",
"tau molar mass",
"tau-muon mass ratio",
"tau-neutron mass ratio",
"tau-proton mass ratio",
"Thomson cross section",
"triton-electron mass ratio",
"triton g factor",
"triton mag. mom.",
"triton mag. mom. to Bohr magneton ratio",
"triton mag. mom. to nuclear magneton ratio",
"triton mass",
"triton mass energy equivalent",
"triton mass energy equivalent in MeV",
"triton mass in u",
"triton molar mass",
"triton-proton mass ratio",
"unified atomic mass unit",
"von Klitzing constant",
"weak mixing angle",
"Wien frequency displacement law constant",
"Wien wavelength displacement law constant",
"Empty",
"Empty",
"Empty",
"Empty",
"From https://physics.nist.gov/cuu/Constants/Table/allascii.txt",
 }
 



PhysicsConstants.Value = {
"192.0155714*10^-12",
"7294.29954136",
"6.644657230*10^-27",
"5.971920097*10^-10",
"3727.379378",
"4.001506179127",
"4.001506179127*10^-3",
"3.97259968907",
"1.00001495*10^-10",
"1.660539040*10^-27",
"1.492418062*10^-10",
"931.4940954",
"931.4940954*10^6",
"3.4231776902*10^7",
"2.2523427206*10^23",
"7.5130066166*10^14",
"1.492418062*10^-10",
"1.08095438*10^13",
"1.660539040*10^-27",
"3.206361329*10^-53",
"6.235380085*10^-65",
"1.054571800*10^-34",
"1.6021766208*10^-19",
"1.0812023770*10^12",
"6.623618183*10^-3",
"8.478353552*10^-30",
"5.142206707*10^11",
"9.717362356*10^21",
"1.6487772731*10^-41",
"27.21138602",
"4.486551484*10^-40",
"4.359744650*10^-18",
"8.23872336*10^-8",
"0.52917721067*10^-10",
"1.854801999*10^-23",
"2.350517550*10^5",
"7.8910365886*10^-29",
"9.10938356*10^-31",
"1.992851882*10^-24",
"1.112650056*10^-10",
"2.418884326509*10^-17",
"2.18769126277*10^6",
"6.022140857*10^23",
"927.4009994*10^-26",
"5.7883818012*10^-5",
"13.996245042*10^9",
"46.68644814",
"0.67171405",
"0.52917721067*10^-10",
"1.38064852*10^-23",
"8.6173303*10^-5",
"2.0836612*10^10",
"69.503457",
"376.730313461*",
"2.8179403227*10^-15",
"2.4263102367*10^-12",
"386.15926764*10^-15",
"7.7480917310*10^-5",
"483597.9*10^9",
"25812.807",
"1.00207697*10^-13",
"-4.664345535*10^-4",
"3670.48296785",
"0.8574382311",
"0.4330735040*10^-26",
"0.4669754554*10^-3",
"0.8574382311",
"3.343583719*10^-27",
"3.005063183*10^-10",
"1875.612928",
"2.013553212745",
"2.013553212745*10^-3",
"-0.44820652",
"0.3070122077",
"1.99900750087",
"2.1413*10^-15",
"8.854187817*10^-12",
"-1.758820024*10^11",
"-2143.923499",
"2.724437107484*10^-4",
"-2.00231930436182",
"1.760859644*10^11",
"28024.95164",
"1.819543074854*10^-4",
"-928.4764620*10^-26",
"1.15965218091*10^-3",
"-1.00115965218091",
"-1838.28197234",
"9.10938356*10^-31",
"8.18710565*10^-14",
"0.5109989461",
"5.48579909070*10^-4",
"5.48579909070*10^-7",
"206.7669880",
"4.83633170*10^-3",
"960.92050",
"5.4386734428*10^-4",
"-658.2106866",
"5.44617021352*10^-4",
"2.87592*10^-4",
"1.370933554798*10^-4",
"864.058257",
"-658.2275971",
"1.819200062203*10^-4",
"1.6021766208*10^-19",
"1.0735441105*10^-9",
"3.674932248*10^-2",
"2.417989262*10^14",
"8.065544005*10^5",
"1.6021766208*10^-19",
"1.16045221*10^4",
"1.782661907*10^-36",
"1.6021766208*10^-19",
"2.417989262*10^14",
"96485.33289",
"96485.3251",
"1.1663787*10^-5",
"7.2973525664*10^-3",
"3.741771790*10^-16",
"1.191042953*10^-16",
"2.9212623197*10^-8",
"27.21138602",
"4.359744650*10^-18",
"27.21138602",
"6.579683920711*10^15",
"2.194746313702*10^7",
"4.359744650*10^-18",
"3.1577513*10^5",
"4.850870129*10^-35",
"5495.88527922",
"-4.255250616",
"-1.074617522*10^-26",
"-1.158740958*10^-3",
"-2.127625308",
"5.006412700*10^-27",
"4.499539341*10^-10",
"2808.391586",
"3.01493224673",
"3.01493224673*10^-3",
"2.99315267046",
"4.4398216616*10^-24",
"4.135667662*10^-15",
"1.5198298460088*10^-16",
"3.335640951*10^-9",
"6.626070040*10^-34",
"4.7992447*10^-11",
"7.372497201*10^-51",
"137.035999139",
"1.33102504900*10^-15",
"1.2398419739*10^-6",
"4.556335252767*10^-8",
"299792458",
"1.986445824*10^-25",
"1.43877736*10^-2",
"2.210219057*10^-42",
"12906.4037278",
"483597.8525*10^9",
"6.700535363*10^9",
"6.241509126*10^18",
"2.293712317*10^17",
"1.509190205*10^33",
"5.034116651*10^24",
"7.2429731*10^22",
"1.112650056*10^-17",
"9.2510842*10^-14",
"8.6173303*10^-5",
"3.1668105*10^-6",
"2.0836612*10^10",
"69.503457",
"1.38064852*10^-23",
"1.53617865*10^-40",
"6.022140857*10^26",
"5.609588650*10^35",
"2.061485823*10^34",
"1.356392512*10^50",
"4.524438411*10^41",
"8.987551787*10^16",
"6.5096595*10^39",
"543.1020504*10^-12",
"2.6516467*10^25",
"2.6867811*10^25",
"12.566370614*10^-7",
"2.067833831*10^-15",
"8.3144598",
"1*10^-3",
"12*10^-3",
"3.9903127110*10^-10",
"0.119626565582",
"22.710947*10^-3",
"22.413962*10^-3",
"12.05883214*10^-6",
"1.00209952*10^-13",
"11.73444111*10^-15",
"1.867594308*10^-15",
"206.7682826",
"-2.0023318418",
"-4.49044826*10^-26",
"1.16592089*10^-3",
"-4.84197048*10^-3",
"-8.89059705",
"1.883531594*10^-28",
"1.692833774*10^-11",
"105.6583745",
"0.1134289257",
"0.1134289257*10^-3",
"0.1124545167",
"-3.183345142",
"0.1126095262",
"5.94649*10^-2",
"1.054571800*10^-34",
"6.582119514*10^-16",
"8.18710565*10^-14",
"0.5109989461",
"386.15926764*10^-15",
"9.10938356*10^-31",
"2.730924488*10^-22",
"0.5109989461",
"1.28808866712*10^-21",
"299792458",
"1.31959090481*10^-15",
"0.21001941536*10^-15",
"1.04066882*10^-3",
"1838.68366158",
"-3.82608545",
"1.83247172*10^8",
"29.1646933",
"-0.96623650*10^-26",
"-1.04187563*10^-3",
"-1.91304273",
"1.674927471*10^-27",
"1.505349739*10^-10",
"939.5654133",
"1.00866491588",
"1.00866491588*10^-3",
"8.89248408",
"-0.68497934",
"2.30557377*10^-30",
"2.07214637*10^-13",
"1.29333205",
"0.00138844900",
"1.00137841898",
"0.528790",
"-0.68499694",
"6.67408*10^-11",
"6.70861*10^-39",
"5.050783699*10^-27",
"3.1524512550*10^-8",
"2.542623432*10^-2",
"3.6582690*10^-4",
"7.622593285",
"1.25663706144*10^-6",
"8.85418781762*10^-12",
"6.626070040*10^-34",
"4.135667662*10^-15",
"1.054571800*10^-34",
"6.582119514*10^-16",
"197.3269788",
"1.616229*10^-35",
"2.176470*10^-8",
"1.220910*10^19",
"1.416808*10^32",
"5.39116*10^-44",
"9.578833226*10^7",
"1.32140985396*10^-15",
"0.210308910109*10^-15",
"1836.15267389",
"5.585694702",
"2.675221900*10^8",
"42.57747892",
"1.4106067873*10^-26",
"1.5210322053*10^-3",
"2.7928473508",
"25.691*10^-6",
"1.672621898*10^-27",
"1.503277593*10^-10",
"938.2720813",
"1.007276466879",
"1.007276466879*10^-3",
"8.88024338",
"-1.45989805",
"0.99862347844",
"0.8751*10^-15",
"0.528063",
"3.6369475486*10^-4",
"7.2738950972*10^-4",
"10973731.568508",
"3.289841960355*10^15",
"13.605693009",
"2.179872325*10^-18",
"-1.1517084",
"-1.1648714",
"1.43877736*10^-2",
"2.037894585*10^8",
"32.43409966",
"-1.074553080*10^-26",
"-1.158671471*10^-3",
"-2.127497720",
"-0.7617665603",
"-0.7617861313",
"2.675153171*10^8",
"42.57638507",
"1.410570547*10^-26",
"1.520993128*10^-3",
"2.792775600",
"299792458",
"9.80665",
"101325",
"100000",
"5.670367*10^-8",
"0.697787*10^-15",
"0.111056*10^-15",
"3477.15",
"3.16747*10^-27",
"2.84678*10^-10",
"1776.82",
"1.90749",
"1.90749*10^-3",
"16.8167",
"1.89111",
"1.89372",
"0.66524587158*10^-28",
"5496.92153588",
"5.957924920",
"1.504609503*10^-26",
"1.6223936616*10^-3",
"2.978962460",
"5.007356665*10^-27",
"4.500387735*10^-10",
"2808.921112",
"3.01550071632",
"3.01550071632*10^-3",
"2.99371703348",
"1.660539040*10^-27",
"25812.8074555",
"0.2223",
"5.8789238*10^10",
"2.8977729*10^-3",
"",
"",
"",
"",
"",
} 
 
 
 
 


PhysicsConstants.Unit = { 
"",
"",
"g",
"",
"eV",
"",
"g mol^-1",
"",
"",
"g",
"",
"eV",
"V",
"_h",
"z",
"^-1",
"",
"",
"g",
"^3 m^3 J^-2",
"^4 m^4 J^-3",
" s",
"",
" m^-3",
"",
" m",
" m^-1",
" m^-2",
"^2 m^2 J^-1",
"",
" m^2",
"",
"",
"",
" T^-1",
"",
" T^-2",
"g",
"g m s^-1",
" m^-1",
"",
" s^-1",
"ol^-1",
" T^-1",
"V T^-1",
"z T^-1",
"^-1 T^-1",
" T^-1",
"",
"J K^-1",
"V K^-1",
"z K^-1",
"^-1 K^-1",
"hm",
"",
"",
"",
"",
"z V^-1",
"hm",
"",
"",
"",
"",
" T^-1",
"",
"",
"g",
"",
"eV",
"",
"g mol^-1",
"",
"",
"",
"",
" m^-1",
" kg^-1",
"",
"",
"",
"^-1 T^-1",
"Hz T^-1",
"",
" T^-1",
"",
"",
"",
"g",
"",
"eV",
"",
"g mol^-1",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"_h",
"z",
"^-1",
"",
"",
"g",
"",
" J^-1",
" mol^-1",
"_90 mol^-1",
"eV^-2",
"",
" m^2",
" m^2 sr^-1",
"",
"V",
"",
"V",
"z",
"^-1",
"",
"",
"g",
"",
"",
" T^-1",
"",
"",
"g",
"",
"eV",
"",
"g mol^-1",
"",
"",
"V",
"_h",
"^-1",
"",
"",
"g",
"",
"",
"V",
"_h",
"z",
"",
"",
"g",
"hm",
"z V^-1",
"",
"V",
"_h",
"z",
"^-1",
"",
"g",
"",
"V",
"_h",
"z",
"^-1",
"",
"g",
"",
"V",
"_h",
"z",
"^-1",
"",
"",
"",
"^-3",
"^-3",
" A^-2",
"b",
" mol^-1 K^-1",
"g mol^-1",
"g mol^-1",
" s mol^-1",
" m mol^-1",
"^3 mol^-1",
"^3 mol^-1",
"^3 mol^-1",
"",
"",
"",
"",
"",
" T^-1",
"",
"",
"",
"g",
"",
"eV",
"",
"g mol^-1",
"",
"",
"",
"",
" s",
"V s",
"",
"eV",
"",
"g",
"g m s^-1",
"eV/c",
"",
" s^-1",
"",
"",
"",
"",
"",
"^-1 T^-1",
"Hz T^-1",
" T^-1",
"",
"",
"g",
"",
"eV",
"",
"g mol^-1",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"^3 kg^-1 s^-2",
"GeV/c^2)^-2",
" T^-1",
"V T^-1",
"^-1 T^-1",
" T^-1",
"Hz T^-1",
	"N/A^2",
	"F/m",
" s",
"V s",
" s",
"V s",
"eV fm",
"",
"g",
"eV",
"",
"",
" kg^-1",
"",
"",
"",
"",
"^-1 T^-1",
"Hz T^-1",
" T^-1",
"",
"",
"",
"g",
"",
"eV",
"",
"g mol^-1",
"",
"",
"",
"",
"",
"^2 s^-1",
"^2 s^-1",
"^-1",
"z",
"V",
"",
"",
"",
" K",
"^-1 T^-1",
"Hz T^-1",
" T^-1",
"",
"",
"",
"",
"^-1 T^-1",
"Hz T^-1",
" T^-1",
"",
"",
" s^-1",
" s^-2",
"a",
"a",
" m^-2 K^-4",
"",
"",
"",
"g",
"",
"eV",
"",
"g mol^-1",
"",
"",
"",
"^2",
"",
"",
" T^-1",
"",
"",
"g",
"",
"eV",
"",
"g mol^-1",
"",
"g",
"hm",
"",
"z K^-1",
" K",
"",
"",
"",
"",
"",
}













quantity.Symbol= {
"A",
"-",
"a→",
"α",
"L",
"ω",
"A",
"ρA",
"C",
"-",
"-",
"μ",
"c→",
"J →",
"H",
"η",
"Q",
"ρQ",
"D",
"E→",
"G",
"σ",
"V",
"R",
"ρ",
"E",
"ρE",
"S",
"F→",
"f",
"-",
"t1/2",
"Q",
"Cp",
"ϕQ",
"Ev",
"Z",
"J",
"L",
"E",
"I",
"j→",
"s→",
"\"v\"→",
"ρl",
"F",
"M",
"H",
"Φ",
"B",
"M",
"x",
"ρ",
"τ",
"C",
"-",
"-",
"c",
"I",
"p→",
"μ",
"ε",
"θ",
"P",
"p",
"p→",
"A",
"D",
"L",
"I",
"r",
"n",
"Ω",
"v",
"-",
"c",
"v",
"S",
"ε",
"σ",
"γ",
"k",
"τ",
"v→",
"V",
"λ",
"k",
"k→",
"w",
"W",
"E",
"",
"",
"",
"",
"",
}

-------------------------------------------------------------------------------------------------------------------------------
quantity.Description ={
"Measure of sustained displacement: the first integral of displacement",
"Absorbed dose received per unit of time",
"Change of the speed or velocity per unit time",
"Change in angular speed or velocity per unit time",
"Measure of the extent and direction an object rotates about a reference point",
"The angle incremented in a plane by a segment connecting an object and a reference point per unit time",
"Extent of a surface",
"Mass per unit area",
"Stored charge per unit electric potential",
"Change in reaction rate due to presence of a catalyst",
"Change in reaction rate due to presence of a catalyst per unit volume of the system",
"Energy per unit change in amount of substance",
"Change of jounce per unit time: the fifth time derivative of position",
"Electric current per unit cross-section area",
"Received radiation adjusted for the effect on biological tissue",
"Measure for the resistance of an incompressible fluid to stress",
"The force per unit electric field strength",
"Electric charge per unit volume",
"Strength of the electric displacement",
"Strength of the electric field",
"Measure for how easily current flows through a material",
"Measure of a material's ability to conduct an electric current",
"Energy required to move a unit charge through an electric field from a reference point",
"Electric potential per unit electric current",
"Bulk property equivalent of electrical resistance",
"Capacity of a body or system to do work",
"Energy per unit volume",
"Logarithmic measure of the number of available states of a system",
"Transfer of momentum per unit time",
"Number of (periodic) occurrences per unit time",
"Distance traveled per unit volume of fuel",
"Time for a quantity to decay to half its initial value",
"Thermal energy",
"Energy per unit temperature change",
"Heat flow per unit time per unit surface area",
"Luminous flux per unit surface area",
"Resistance to an alternating current of a given frequency, including effect on phase",
"Transferred momentum",
"Magnetic flux generated per unit current through a circuit",
"Electromagnetic radiation power per unit surface area",
"Power per unit cross sectional area",
"Change of acceleration per unit time: the third time derivative of position",
"Change of jerk per unit time: the fourth time derivative of position",
"Dynamic viscosity/density",
"Mass per unit length",
"Perceived power of a light source",
"Ratio of flow velocity to the local speed of sound",
"Strength of a magnetic field",
"Measure of magnetism, taking account of the strength and the extent of a magnetic field",
"Measure for the strength of the magnetic field",
"Amount of magnetic moment per unit volume",
"Mass of a substance as a fraction of the total mass",
"Mass per unit volume",
"Average time for a particle of a substance to decay",
"Amount of substance per unit volume",
"Amount of energy present in a system per unit amount of substance",
"Entropy per unit amount of substance",
"Heat capacity of a material per unit amount of substance",
"Inertia of an object with respect to angular acceleration",
"Product of an object's mass and velocity",
"Measure for how the magnetization of material is affected by the application of an external magnetic field",
"Measure for how the polarization of a material is affected by the application of an external electric field",
"Ratio of circular arc length to radius",
"Rate of transfer of energy per unit time",
"Force per unit area",
"Rate of change of crackle per unit time: the sixth time derivative of position",
"Number of particles decaying per unit time",
"Ionizing radiation energy absorbed by biological tissue per unit mass",
"Power of emitted electromagnetic radiation per unit solid angle per emitting source area",
"Power of emitted electromagnetic radiation per unit solid angle",
"Rate of a chemical reaction for unit time",
"Factor by which the phase velocity of light is reduced in a medium",
"Ratio of area on a sphere to its radius squared",
"Moved distance per unit time: the first time derivative of position",
"Energy density per unit mass",
"Heat capacity per unit mass",
"Volume per unit mass (reciprocal of density)",
"Quantum-mechanically defined angular momentum of a particle",
"Extension per unit length",
"Force per unit oriented surface area",
"Energy change per unit change in surface area",
"Measure for the ease with which a material conducts heat",
"Product of a force and the perpendicular distance of the force from the point about which it is exerted",
"Speed and direction of an object",
"Three dimensional extent of an object",
"Perpendicular distance between repeating units of a wave",
"Repetency or spacial frequency: the number of cycles per unit distance",
"Repetency or spacial frequency vector: the number of cycles per unit distance",
"Gravitational force on an object",
"Transferred energy",
"Ratio of stress to strain",
"",
"",
"",
"",
"",
}
--------------------------------------------------------------------------------------------------------------------
quantity.Derived={
"Absement",
"Absorbed dose rate",
"Acceleration",
"Angular acceleration",
"Angular momentum",
"Angular speed (or angular velocity)",
"Area",
"Area density",
"Capacitance",
"Catalytic activity",
"Catalytic activity concentration",
"Chemical potential",
"Crackle",
"Current density",
"Dose equivalent",
"Dynamic viscosity",
"Electric charge",
"Electric charge density",
"Electric displacement",
"Electric field strength",
"Electrical conductance",
"Electrical conductivity",
"Electric potential",
"Electrical resistance",
"Electrical resistivity",
"Energy",
"Energy density",
"Entropy",
"Force",
"Frequency",
"Fuel efficiency",
"Half-life",
"Heat",
"Heat capacity",
"Heat flux density",
"Illuminance",
"Impedance",
"Impulse",
"Inductance",
"Irradiance",
"Intensity",
"Jerk",
"Jounce (or snap)",
"Kinematic viscosity",
"Linear density",
"Luminous flux (or luminous power)",
"Mach number (or mach)",
"Magnetic field strength",
"Magnetic flux",
"Magnetic flux density",
"Magnetization",
"Mass fraction",
"(Mass) Density (or volume density)",
"Mean lifetime",
"Molar concentration",
"Molar energy",
"Molar entropy",
"Molar heat capacity",
"Moment of inertia",
"Momentum",
"Permeability",
"Permittivity",
"Plane angle",
"Power",
"Pressure",
"Pop",
"(Radioactive) Activity",
"(Radioactive) Dose",
"Radiance",
"Radiant intensity",
"Reaction rate",
"Refractive index",
"Solid angle",
"Speed",
"Specific energy",
"Specific heat capacity",
"Specific volume",
"Spin",
"Strain",
"Stress",
"Surface tension",
"Thermal conductivity",
"Torque",
"Velocity",
"Volume",
"Wavelength",
"Wavenumber",
"Wavevector",
"Weight",
"Work",
"Young's modulus",
"Empty",
"Empty",
"Empty",
"Empty",
"Empty",
}



--------------------------------------------------------------------------------




quantity.unit= {
"m s",
"Gy s−1",
"m s−2",
"rad s−2",
"kg m2 s−1",
"rad s−1",
"m2",
"kg m−2",
"farad (F = A2 s4 kg−1 m−2)",
"katal (kat = mol s−1)",
"kat m−3",
"J mol−1",
"m s−5",
"A m−2",
"sievert (Sv = m2 s−2)",
"Pa s",
"coulomb (C = A s)",
"C m−3",
"C m−2",
"V m−1",
"siemens (S = A2 s3 kg−1 m−2)",
"S m−1",
"volt (V = kg m2 A−1 s−3)",
"ohm (Ω = kg m2 A−2 s−3)",
"ohm metre (Ω⋅m = kg m3 A−2 s−3)",
"joule (J = kg m2 s−2)",
"J m−3",
"J K−1",
"newton (N = kg m s−2)",
"hertz (Hz = s−1)",
"-",
"s",
"joule (J)",
"J K−1",
"W m−2",
"lux (lx = cd sr m−2)",
"ohm (Ω = kg m2 A−2 s−3)",
"newton second (N⋅s = kg m s−1)",
"henry (H = kg m2 A−2 s−2)",
"W m−2",
"W m−2",
"m s−3",
"m s−4",
"m2 sec−1",
"-",
"lumen (lm = cd sr)",
"unitless",
"A m−1",
"weber (Wb = kg m2 A−1 s−2)",
"tesla (T = kg A−1 s−2)",
"A m−1",
"kg/kg",
"kg m−3",
"s",
"mol m−3",
"J mol−1",
"J K−1 mol−1",
"J K−1 mol−1",
"kg m2",
"N s",
"H m−1",
"F m−1",
"radian (rad)",
"watt (W)",
"pascal (Pa = kg m−1 s−2)",
"m s−6",
"becquerel (Bq = s−1)",
"gray (Gy = m2 s−2)",
"W m−2 sr−1",
"W sr−1",
"mol m−3 s−1",
"unitless",
"steradian (sr)",
"m s−1",
"J kg−1",
"J kg−1 K−1",
"m3 kg−1",
"kg m2 s−1",
"unitless",
"Pa",
"N m−1 or J m−2",
"W m−1 K−1",
"newton metre (N m)",
"m s−1",
"m3",
"m",
"m−1",
"m−1 with direction",
"newton (N = kg m s−2)",
"joule (J = kg m2 s−2)",
"pascal (Pa = kg m−1 s−2)",
"",
"",
"",
"",
"",
}


----------------------------------------------------------------------------------


quantity.Comments = {
"vector",
"-",
"vector",
"-",
"conserved quantity, pseudovector",
"scalar or pseudovector",
"scalar",
"-",
"scalar",
"-",
"-",
"intensive",
"vector",
"vector",
"-",
"-",
"extensive, conserved quantity",
"intensive",
"vector field",
"vector field",
"scalar",
"scalar",
"extensive, scalar",
"extensive, scalar, assumes linearity",
"intensive, scalar",
"extensive, scalar, conserved quantity",
"intensive",
"extensive, scalar",
"extensive, vector",
"scalar",
"scalar",
"-",
"-",
"extensive",
"-",
"-",
"complex scalar",
"vector",
"scalar",
"-",
"-",
"vector",
"vector",
"'T'^−1",
"-",
"-",
"-",
"vector field",
"scalar",
"pseudovector field",
"vector field",
"intensive",
"intensive",
"intensive",
"intensive",
"intensive",
"intensive",
"intensive",
"tensor, scalar",
"vector, extensive",
"intensive",
"intensive",
"-",
"extensive, scalar",
"intensive, scalar",
"vector",
"extensive, scalar",
"-",
"-",
"scalar",
"intensive, scalar",
"intensive, scalar",
"-",
"scalar",
"intensive",
"intensive",
"intensive",
"-",
"-",
"order 2 tensor",
"-",
"intensive",
"bivector (or pseudovector in 3D)",
"vector",
"extensive, scalar",
"-",
"scalar",
"vector",
"vector",
"scalar",
"scalar; assumes isotropic linear material",
"",
"",
"",
"",
"",
}









function TunedInput(gc)

	gc:setColorRGB(0x00a7ff)
	gc:setFont("serif","b",10);gc:drawString("Tuned Input Oscillator",120,1);
	gc:setColorRGB(0x555555);
	gc:drawRect(60,1,250,18)
	gc:setFont("sansserif","r",6)

	gc:setFont("serif","b",6)
	gc:setColorRGB(0xFF0000);
	--gc:setPen("thin","smooth")



	--===================================================
	--- - - - - - - - -  Source Code  - - - - - - - - - -
	--===================================================
	Elec.Mosfet(249,95,gc)
	Elec.gnd(245,120,gc)
	gc:drawLine(230,101,148,101);
	gc:drawLine(148,101,148,58);
	gc:drawLine(148,58,222,58);
	gc:drawLine(158,88,158,80);
	gc:drawLine(249,88,249,86);
	gc:drawLine(249,70,249,43);
	gc:drawLine(243,43,255,43);
	gc:drawLine(158,58,158,65);
	gc:drawLine(222,58,222,65);
	gc:drawLine(222,81,222,88);
	gc:drawLine(158,88,222,88);
	Elec.gnd(186,93,gc)
	Elec.L(220,65,gc,90) 
	Elec.L(247,70,gc,90) 
	Elec.C(155,64,gc,90);
	Elec.R(180,55,gc,0);
	Elec.R(245,50,gc,90);
	gc:drawString("•",251,83);
	gc:drawString("•",224,58);
			 ---------------------------------------------------
	if(VectorSize == beta)   then gc:setColorRGB(Highlight); gc:drawString("Value : "..VectorValues[beta],5,20); else gc:setColorRGB(TableColorFor) end    
			 gc:drawString("C   : "..Size(VectorValues[beta]/1).."F",5,67);
			 gc:drawString("C",166,67);
	if(VectorSize == vcc)   then gc:setColorRGB(Highlight);gc:drawString("Value : "..VectorValues[vcc],5,20); else gc:setColorRGB(TableColorFor) end          
			 gc:drawString("L1  : "..Size(VectorValues[vcc]/1).."H",5,77);
			 gc:drawString("L1",208,66);
	if(VectorSize == ic)   then gc:setColorRGB(Highlight); gc:drawString("Value : "..VectorValues[ic],5,20);else gc:setColorRGB(TableColorFor) end 
			 gc:drawString("L2  : "..Size(VectorValues[ic]/1).."H",5,87);   
			 gc:drawString("L2",255,75);  
	if(VectorSize == rl)   then gc:setColorRGB(Highlight); gc:drawString("Value : "..VectorValues[rl],5,20);else gc:setColorRGB(TableColorFor) end 
			 gc:drawString("R2",255,52); 
			 gc:drawString("R2  : "..Size(VectorValues[rl]/1).."Ω",5,97); 
	if(VectorSize == rs)   then gc:setColorRGB(Highlight); gc:drawString("Value : "..VectorValues[rs],5,20);else gc:setColorRGB(TableColorFor) end 
			  gc:drawString("M",232,70);  
			  gc:drawString("M   : "..Size(VectorValues[rs]/1).."H",5,107);
	if(VectorSize == av)   then gc:setColorRGB(Highlight); gc:drawString("Value : "..VectorValues[av],5,20);else gc:setColorRGB(TableColorFor) end 
			 gc:drawString("R1",185,43);
			 gc:drawString("R1   : "..Size(VectorValues[av]/1).."Ω",5,117);

	if(VectorSize == c1)   then gc:setColorRGB(Highlight); gc:drawString("Value : "..VectorValues[c1],5,20);else gc:setColorRGB(TableColorFor) end 
			 gc:drawString("rd   : "..Size(VectorValues[c1]/1).."Ω",5,127);
			 
			 
			 
			 
	gc:setFont("serif","b",10)         
	gc:setColorRGB(0x55FF)         
	omega = 1/math.sqrt(VectorValues[beta]*(VectorValues[vcc]+VectorValues[ic]*VectorValues[av]/(VectorValues[c1]+VectorValues[rl])));    
	gm = ((1+(VectorValues[rl]/VectorValues[c1]))*VectorValues[av] + (omega*omega)*(VectorValues[rs]*VectorValues[rs])/VectorValues[c1])*VectorValues[beta]/VectorValues[rs];
	gc:drawString("ω₀ : "..Size(omega/2*3.14).."Hz",110,135);
	gc:setColorRGB(0xFF55) 
	gc:drawString("g  ≥  "..Size(gm/1),120,150);
	gc:setFont("serif","b",6)
	gc:drawString("m",127,157);
end 








function Inductance(gc)
	gc:setColorRGB(0xFF55);
	gc:setFont("serif","b",6);
	gc:drawArc(128,53,35,102,0,360);
	gc:drawLine(145,53,257,53);
	gc:drawLine(146,155,256,155);
	gc:drawArc(239,53,35,102,90,-180);

	if(VectorSize == beta)  then gc:setColorRGB(Highlight); gc:drawString("Value : "..VectorValues[beta],5,20); else gc:setColorRGB(TableColorFor) end   
	if(tonumber(VectorValues[beta]))then gc:drawString("Diameter : " .. Size(VectorValues[beta]/1).."m",5,60);end
	if(VectorSize == vcc)   then gc:setColorRGB(Highlight); gc:drawString("Value : "..VectorValues[vcc],5,20); else gc:setColorRGB(TableColorFor) end   
	if(tonumber(VectorValues[vcc]))then gc:drawString("Number of Turns : "..Size(VectorValues[vcc]/1),5,70);end
	if(VectorSize == rl)    then gc:setColorRGB(Highlight); gc:drawString("Value : "..VectorValues[rl],5,20); else gc:setColorRGB(TableColorFor) end   
	if(tonumber(VectorValues[rl]))then gc:drawString("Length:"..Size(VectorValues[rl]/1).."m",5,90);end
	if(VectorSize == ic)    then gc:setColorRGB(Highlight); gc:drawString("Value : "..VectorValues[ic],5,20); else gc:setColorRGB(TableColorFor) end   
	if(tonumber(VectorValues[ic]))then gc:drawString("Current:"..Size(VectorValues[ic]/1).."A",5,80); end
	if(VectorSize == rs)    then gc:setColorRGB(Highlight); gc:drawString("Value : "..VectorValues[rs],5,20); else gc:setColorRGB(TableColorFor) end   
	if(tonumber(VectorValues[rs]))then gc:drawString("Permeability:"..Size(VectorValues[rs]/1),5,100);end
	if(VectorSize == av)    then gc:setColorRGB(Highlight); gc:drawString("Value : "..VectorValues[av],5,20); else gc:setColorRGB(TableColorFor) end   
	gc:drawString("Current I(x):"..VectorValues[av],5,110);
	if(VectorSize == c1)    then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor) end   
	if(CurrentDirectionflg) then gc:drawString("CurrentDirection: CW",5,133); for i=0,6 do gc:drawArc(151+i*8,53,35,102,90,-180); gc:drawString("▼",181+i*8,96); end else for i=0,6 do gc:drawArc(151+i*8,53,35,102,90,-180); gc:drawString("▲",181+i*8,96); end gc:drawString("CurrentDirection: CCW",5,133); end
	--if(VectorSize == c2)   then gc:setColorRGB(Highlight); else gc:setColorRGB(TableColorFor) end   
	--if(SurfaceDirectionflg) then gc:drawString("SurfaceDirection: CW",5,143);else gc:drawString("SurfaceDirection: CCW",5,143); end




	gc:setColorRGB(0xFF0000) 
	gc:setPen("thin","dotted")
	gc:drawLine(146,103,146,59);
	gc:drawString("▲",142,55);
	gc:drawString("R",150,80);
	gc:drawLine(145,162,256,162);
	gc:drawString("▶",252,157);
	gc:drawString("◀",143,157);
	gc:drawString("l",198,165);
	gc:drawString("N",240,95);


	math.setEvalSettings({{3,2},{1,2},{5, 1},{'Angle Mode','Radian'}});

	if(tonumber(VectorValues[beta]) and tonumber(VectorValues[rl]))then 
			theta = math.atan(VectorValues[rl]/VectorValues[beta]);
			b = "(1/("..VectorValues[beta]*VectorValues[beta].."*(sec(t))^(2))"
		end



	if(tonumber(VectorValues[ic]) == 0)then
		Bfield ,err = math.evalStr("("..VectorValues[rs].."*"..VectorValues[vcc].."*"..VectorValues[av].."/2)*(sin("..theta ..")-sin("..theta*-1 .."))");
		
	else 
		   if(math.evalStr(VectorValues[av]:gsub("x",VectorValues[ic]))~= nil and  tonumber(math.evalStr(VectorValues[av]:gsub("x",VectorValues[ic])))~= nil)then 
				Current = math.evalStr(VectorValues[av]:gsub("x",VectorValues[ic]))
				Bfield ,err = math.evalStr("("..VectorValues[rs].."*"..VectorValues[vcc].."*"..Current.."/2)*(sin("..theta ..")-sin("..theta*-1 .."))");
				
		   else Bfield ,err = math.evalStr("("..VectorValues[rs].."*"..VectorValues[vcc].."*"..VectorValues[ic].."/2)*(sin("..theta ..")-sin("..theta*-1 .."))");
		   end
		   
	end

	if(Bfield) then tempval = math.evalStr("approx("..Bfield:gsub("e","")..")"); end
	math.setEvalSettings({{3,1},{1,2},{5, 1},{'Angle Mode','Radian'}});
	if(not tempval) then math.setEvalSettings({{4,2}});  end
	if(Bfield) then Bfield = math.evalStr(Bfield:gsub("e","").."*1"); end

	gc:drawString("θmax (+/-) : "..string.format("%0.5f",theta*180/math.pi),5,153);
	gc:setColorRGB(0x55FF) 
	if(Bfield) then gc:drawString("B : "..Bfield.."T or Wb/m²",5,170);end
	if(Bfield) then 
		if(tonumber(Bfield)) then 
			 flux = Bfield * math.pi * VectorValues[beta]*VectorValues[beta];
			 if(tostring(flux):gsub("e","")) then 
				flux = math.evalStr("approx("..tostring(flux):gsub("e","").."*1)"); 
			 end
			 gc:drawString("Φ : "..flux.."Wb",5,180);
			 gc:drawString("Λ : "..Bfield * math.pi * VectorValues[beta]*VectorValues[beta] * VectorValues[vcc].."Wb" ,5,190);
			 gc:drawString("L : "..Bfield * math.pi * VectorValues[beta]*VectorValues[beta] * VectorValues[vcc] /VectorValues[ic],5,200);					
		else 
			 flux = math.evalStr("approx("..Bfield .. "*"..math.pi.. "*"..VectorValues[beta].."*"..VectorValues[beta]..")");
			 if(flux) then 
				gc:drawString("Φ : ".. flux.."Wb",5,180);
				gama = math.evalStr("approx("..flux .. "*".. VectorValues[vcc]..")");
				gc:drawString("Λ : "..gama.."Wb" ,5,190);
			 end
			 if(tonumber(VectorValues[ic]) and tonumber(math.evalStr("approx("..gama.."/"..VectorValues[ic].."*1000000000)"))) then
				gc:drawString("L : "..Size(tonumber(math.evalStr(gama.."/"..VectorValues[ic].."*1000000000"))/1000000000).."H",5,200);
			 elseif(tonumber(VectorValues[ic]) and tonumber(math.evalStr("approx("..gama.."/"..VectorValues[ic].."/1000000000)"))) then
				gc:drawString("L : "..Size(tonumber(math.evalStr(gama.."/"..VectorValues[ic].."/1000000000"))*1000000000).."H",5,200);
			 elseif(tonumber(VectorValues[ic]) )then
				gc:drawString("L : "..math.evalStr(gama.."/"..VectorValues[ic]).."H",5,200);
			 end
		end
    end

	gc:setColorRGB(0x8800FF) 
	gc:setPen("medium");


	if(CurrentDirectionflg) then 
		gc:drawLine(146,102,162,102);
		gc:drawLine(280,102,275,102);
		gc:drawString("▶",280,97);
		gc:setColorRGB(0xFFFF00);
		gc:drawString("B",138,95);
	else 
		gc:drawLine(146,102,123,102);
		gc:drawString("◀",120,97);
		gc:setColorRGB(0xFFFF00);
		gc:drawString("B",150,95); 
	end

end








function BSimulator(gc)
    cursor.hide();
    gc:setFont("serif","b",6)
    
    gc:setColorRGB(0x999999) 
    gc:fillRect(0,0,320,215);
    gc:setColorRGB(0) 
    gc:fillRect(21,35,271,107);
    gc:drawString("This is a Simulation for Effect of Time-Varying B Field on A loop",20,145);
    gc:drawString("* Surface Assumed to be Out of Screen *",65,155);
    gc:setColorRGB(0x999999) 
    
    gc:drawLine(33,95,117,95);
    gc:drawString("+",25,84);
    gc:drawString("-",24,95);    
    gc:drawArc(191,59,71,73,0,360);
    gc:drawArc(191,59,71,73,0,360);
    gc:drawLine(191,91,178,91);
    gc:drawLine(191,99,178,99);
    gc:drawLine(178,99,178,127);
    gc:drawLine(178,127,130,127);
    gc:drawLine(178,91,178,61);
    gc:drawLine(178,61,130,61);
    gc:drawLine(130,61,130,91);
    gc:drawLine(130,99,130,127);

    gc:drawRect(33,51,84,88);
    
    
    gc:fillRect(178,92,20,7);
    gc:setColorRGB(0xff0000)
    gc:drawRect(21,35,271,107);
    timer.start(Speed);
    gc:setFont("serif","b",6)

     gc:setColorRGB(0x0f0f0f+((math.abs(Bvariable)/(4*Freq)))*0x101010)
     tmp = math.abs(math.sin(Bvariable*0.03925)*40)/5;
     gc:fillArc(212-tmp*1.5,92-tmp*1.5,10+tmp*3,10+tmp*3,0,360);
     
     gc:setColorRGB(0x55ff)
     gc:drawString("B",50,36);
     
     if(45+TimeVariation/4 > 33 and 45+TimeVariation/4 < 129)then 
        gc:drawLine(33+TimeVariation/4,95,33+TimeVariation/4,96-math.sin(Bvariable*0.03925)*40)
        gc:fillArc(32+TimeVariation/4,94-math.sin(Bvariable*0.03925)*40,3,3,0,360); 

      end

     if(BDirection_flg) then 
          gc:setColorRGB(0xffffff);          
          if(not IDirection_flg) then 
				gc:setColorRGB(0x555555); 
				gc:drawString("DEC↓",25,36);
          else 
				gc:setColorRGB(0xffffff);
				gc:drawString("INC↑",25,36);
          end
     else 
          gc:setColorRGB(0x00ff00)
          if(IDirection_flg) then 
				gc:setColorRGB(0x555555) ; 
				gc:drawString("DEC↓",25,36);
          else 
				gc:setColorRGB(0xffffff);
				gc:drawString("INC↑",25,36);
          end 
     
     end

     
     if(Bvariable > 0)then 
            gc:setColorRGB(0x55FF);
            gc:drawString("+",56,36);
      else
            gc:setColorRGB(0xff0000);
            gc:drawString("-",56,36);
      end


     gc:setColorRGB(0xff000);
     if(not IDirection_flg) then 
             
             gc:drawString("x",214,89)
             gc:setColorRGB(0x00ff00);
             if(not BDirection_flg) then 
					gc:setColorRGB(0x555555); 
					gc:drawString("DEC↓",85,36);
             else 
					gc:setColorRGB(0xffffff) ;
					gc:drawString("INC↑",85,36);
             end
     else    
             
             gc:fillArc(215,95,2,2,0,360);
             
             if(BDirection_flg) then 
					gc:setColorRGB(0x555555) ; 
					gc:drawString("DEC↓",85,36);
             else 	
					gc:setColorRGB(0xffffff) ;
					gc:drawString("INC↑",85,36);
             end
             
         end    
         
          
         gc:setColorRGB(0xFFFFFF) 
         
         gc:drawString("Current",138,100);
         gc:setColorRGB(0xFF0000) 
         gc:drawString("i",74,36);
         if(20+TimeVariation/4 > 33 and 20+TimeVariation/4 < 117)then 
            
            gc:drawLine(20+TimeVariation/4,95,20+TimeVariation/4,96-math.sin(Ivariable*0.03925)*40) 
            gc:fillArc(19+TimeVariation/4,94-math.sin(Ivariable*0.03925)*40,3,3,0,360);
            --gc:fillArc(19+TimeVariation/4,94-math.sin(Ivariable*0.03925 )*40,3,3,0,360);                    
         end
         
         
gc:setColorRGB(0xFF0000) 
if(Ivariable > 0) then
    gc:drawString("-",120,84);
    gc:drawString("+",120,95);      
    gc:setColorRGB(0x55FF)

    gc:drawString("+",77,36);
else
    gc:drawString("+",120,84);
    gc:drawString("-",120,95);  
    gc:setColorRGB(0xFF1111)

    gc:drawString("-",77,36);
    
end     


gc:setColorRGB(0xFFFFff)
gc:drawString("◀ [ + ] Speed [ - ] ▶",110,180);
gc:drawLine(62,199,252,199);
gc:drawLine(62,194,62,204);
gc:drawLine(252,194,252,204);
gc:fillArc(65+17*Speed*10*2,194,10,10,0,360);
gc:setColorRGB(0x0)
gc:fillArc(66+17*Speed*10*2,195,8,8,0,360);

if(not BDirection_flg) then 
    gc:setColorRGB(0xff)
    gc:setPen("thin","dotted");
    gc:drawArc(191,59,71,73,0,360);
    gc:drawArc(191,59,71,73,0,360);
    gc:drawLine(191,91,178,91);
    gc:drawLine(191,99,178,99);
    gc:drawLine(178,99,178,127);
    gc:drawLine(178,127,130,127);
    gc:drawLine(178,91,178,61);
    gc:drawLine(178,61,130,61);
    gc:drawLine(130,61,130,91);
    gc:drawLine(130,99,130,127);
    gc:drawString("◀",152+math.sin(Bvariable*0.03925)*20,56); 
    gc:drawString("▶",152-math.sin(Bvariable*0.03925)*20,122);     
else
    gc:setColorRGB(0xff0000)
    gc:setPen("thin","dotted");
    gc:drawArc(191,59,71,73,0,360);
    gc:drawArc(191,59,71,73,0,360);
    gc:drawLine(191,91,178,91);
    gc:drawLine(191,99,178,99);
    gc:drawLine(178,99,178,127);
    gc:drawLine(178,127,130,127);
    gc:drawLine(178,91,178,61);
    gc:drawLine(178,61,130,61);
    gc:drawLine(130,61,130,91);
    gc:drawLine(130,99,130,127);
    gc:drawString("▶",152+math.sin(Bvariable*0.03925)*20,56); 
    gc:drawString("◀",152-math.sin(Bvariable*0.03925)*20,122); 
end

gc:setPen("thin","dotted");
gc:setColorRGB(0x88aa00) 
gc:drawString("Ind B",235,80)

    if(BDirection_flg) then 
         if(IDirection_flg) then 
               gc:drawString("x",240,89)
         else  gc:drawString("x",240,89)
         end
    else 
         if(IDirection_flg) then 
                gc:fillArc(240,95,2,2,0,360);
         else   gc:fillArc(240,95,2,2,0,360);         
         end 
         
    end

gc:setColorRGB(0x0)
gc:fillRect(178,92,20,7);
Elec.R(174,66,gc,1);

end








function WaveMotion(gc)
    gc:setColorRGB(0xffffff)
    gc:fillRect(0,65,320,70);
    gc:setColorRGB(0)
    
    for i=0 , 320 do
        gc:drawLine(i,100+30*math.sin(i*Speed*.57453292519943-TimeVariation*.1)* math.exp(-Bvariable*i*0.00069811111111111111111111111111111) ,i,101+30*math.sin(i*Speed*.57453292519943-TimeVariation*.1)* math.exp(-Bvariable*i*0.00069811111111111111111111111111111));
    end
    gc:setColorRGB(0xFFFFff)
    gc:drawString("Traveling wave with attenuation constant α ", 12,40)
    gc:setFont("serif","b",6)
    gc:drawString("α : "..Bvariable/100, 140,150)
    gc:drawString("▼", 138,159)
    gc:drawString("▲", 138,142)
    gc:drawString("◀ [ - ] Frequency [ + ] ▶",100,180);
    gc:drawLine(62,199,252,199);
    gc:drawLine(62,194,62,204);
    gc:drawLine(252,194,252,204);
    gc:fillArc(65+17*Speed*10*2,194,10,10,0,360);
    gc:setColorRGB(0x0)
    gc:fillArc(66+17*Speed*10*2,195,8,8,0,360);

    timer.start(.01);
end




function LaggingLeading(gc)
gc:setFont("serif","b",6)

gc:setColorRGB(0x666666)
gc:drawString("+ Imaginary",209,60)
gc:drawString("- Imaginary",209,115)
gc:drawLine(98,93,270,93);
gc:drawRect(98,37,172,112);
gc:setColorRGB(0xFF0000)
--===================================================
--- - - - - - - - -  Source Code  - - - - - - - - - -
--===================================================
gc:drawLine(14,42,36,42);
gc:drawLine(14,42,14,54);
gc:drawArc(4,54,20,21,0,360);
gc:drawLine(14,75,14,86);
gc:drawLine(14,86,65,86);
Elec.R(36,39,gc,0);
Elec.L(63,55,gc,1)
gc:drawLine(55,42,65,42);
gc:drawLine(65,42,65,55);
gc:drawLine(65,86,65,71);


gc:drawLine(14,100,36,100);
gc:drawLine(14,100,14,112);
gc:drawArc(4,112,20,21,0,360);
gc:drawLine(14,133,14,144);
gc:drawLine(14,144,65,144);
Elec.R(36,97,gc,0);
Elec.C(61,113,gc,1)
gc:drawLine(55,100,65,100);
gc:drawLine(65,100,65,113);
gc:drawLine(65,144,65,129);

---------------------------------------------------




gc:setFont("serif","b",6)
S = 0.2;
gc:setColorRGB(0xFF)
gc:drawString("Current Lagging",202,60 - math.sin(S*10.57453292519943-TimeVariation*0.07)*20)
for i=100 , 200 do
    gc:drawLine(i,66+20*math.cos(i*S*.57453292519943-TimeVariation*0.07) ,i,65+20*math.cos(i*S*.57453292519943-TimeVariation*0.07));
end

   gc:setColorRGB(0xFF0000)
   gc:drawString("Volt leading",202,60 + math.cos(S*10.57453292519943-TimeVariation*0.07)*20)
for i=100 , 200 do
    gc:drawLine(i,66+25*math.sin(i*S*.57453292519943-TimeVariation*0.07) ,i,65+25*math.sin(i*S*.57453292519943-TimeVariation*0.07));
end



S = 0.2;
   gc:setColorRGB(0xFF0000)
gc:drawString("Volt Lagging",202,115 - math.cos(S*10.57453292519943-TimeVariation*0.07)*20)   
for i=100 , 200 do
    gc:drawLine(i,120+25*math.cos(i*S*.57453292519943-TimeVariation*0.07) ,i,121+25*math.cos(i*S*.57453292519943-TimeVariation*0.07));
end
gc:setColorRGB(0xFF)
gc:drawString("current leading",202,113 - math.sin(S*10.57453292519943-TimeVariation*0.07)*20)
for i=100 , 200 do
    gc:drawLine(i,120+20*math.sin(i*S*.57453292519943-TimeVariation*0.07) ,i,121+20*math.sin(i*S*.57453292519943-TimeVariation*0.07));
end

gc:setColorRGB(0xFFFFFF)

gc:drawString("Vs",9,116)
gc:drawString("Vs",9,58)
     
timer.start(.01);
end






function on.timer()
    timer.stop();
	if(MainMenu == 8) then
		if(SubMenu == 1) then
		  if(TimeVariation > 400) then TimeVariation = 0;
		  else TimeVariation = TimeVariation + 1 ;
		  end
		  
		   if(BDirection_flg) then  Bvariable = Bvariable + Freq;
		   else Bvariable = Bvariable - Freq end
		   if(IDirection_flg) then Ivariable = Ivariable +Freq ;
		   else Ivariable = Ivariable - Freq ;end
		   
           if(Bvariable > 40 or Bvariable < -40) then BDirection_flg = not BDirection_flg; end
           if(Ivariable > 40 or Ivariable < -40 ) then IDirection_flg = not IDirection_flg; end
        platform.window:invalidate(21,35,260,107) ;
		elseif(SubMenu == 2) then
            if(TimeVariation > 180) then TimeVariation = 0;
            else TimeVariation = TimeVariation + 2 ;
            end
        platform.window:invalidate(0,70,320,130)     
		elseif(SubMenu == 3) then
           if(TimeVariation > 360) then TimeVariation = 0;
                  else TimeVariation = TimeVariation - 2 ;
           end
        platform.window:invalidate(100,40,170,110) ;
		end
		
	end 
   
end





function Angle_0() Angle.Radian = (Angle.Degree * math.pi)/180; 
                   Angle.Width  = math.abs(math.tan((math.pi-Angle.Radian/2)))*Angle.Height; 
                   end
function Angle_1() Angle.Width  = math.abs(math.tan((math.pi-Angle.Radian/2)))*Angle.Height; 
                   end
function Angle_2() Angle.Height = (Angle.Width) / math.abs(math.tan((math.pi-Angle.Radian/2)));
                   end
                   
function AngleCalc(gc)
    gc:setFont("serif","b",6)
    if(Angle.Type == 0) then Angle_0();
    elseif(Angle.Type == 1) then Angle_1();
    elseif(Angle.Type == 2) then Angle_2();
    end;
       
    gc:setColorRGB(0xFF00);

    gc:drawString("Side        : "..math.sqrt(math.pow(Angle.Height,2)+math.pow(Angle.Width,2)),150,2)
    gc:setColorRGB(0xFFFFff);
    gc:drawString("B° & C°   : "..((180-Angle.Degree)/2).."°",150,22)
    gc:setColorRGB(0xFF0000)
    gc:drawString("A Radian : "..Angle.Radian,150,12)
        
    gc:setColorRGB(0xFF0000)
    gc:drawString("A°",2,2)
    gc:setColorRGB(0xFFff00)
    gc:drawString("Height",2,12)
    gc:setColorRGB(0x88ff)
    gc:drawString("Bottom",2,22)
    if Angle.Type == 0 then gc:setColorRGB(0x00FFff); else  gc:setColorRGB(0xFFFFff); end
    gc:drawString(Angle.Degree.."°",40,2)
    if Angle.Type == 1 then gc:setColorRGB(0x00FFff); else  gc:setColorRGB(0xFFFFff); end
    gc:drawString(Angle.Height,40,12)
    if Angle.Type == 2 then gc:setColorRGB(0x00FFff); else  gc:setColorRGB(0xFFFFff); end
    gc:drawString(Angle.Width*2,40,22)
    
    
    gc:setColorRGB(0xFFFFFF);
    gc:drawLine(0,34,320,34);
    
    
    Wnormalized = Angle.Width/(Angle.Height+Angle.Width)*150;
    Hnormalized = Angle.Height/(Angle.Height+Angle.Width)*84;
    gc:setColorRGB(0xFF00);
    gc:drawLine(160,120-Hnormalized,165+Wnormalized,120+Hnormalized);
    gc:drawLine(160,120-Hnormalized,155-Wnormalized,120+Hnormalized);
    gc:setColorRGB(0x88ff);
    gc:drawString(Angle.Width*2,165-(tostring(Angle.Width*2):len()/2)*5,120+Hnormalized)
    gc:drawLine(155-Wnormalized,120+Hnormalized,165+Wnormalized,120+Hnormalized);
    
    gc:setColorRGB(0xFFFF00);
    gc:setPen("thin","dotted");
    gc:drawLine(160,120-Hnormalized,160,120+Hnormalized);
    
    
    gc:setColorRGB(0xFFFFff);
    
    gc:drawString("B",150-Wnormalized,108+Hnormalized);
    gc:drawString("C",164+Wnormalized,108+Hnormalized);
    gc:setColorRGB(0xFF0000);
    gc:drawString("A",167,110-Hnormalized);
    
end


Capacitors.Counter=4;
Capacitors.Minimum = 2;
Capacitors.Maximum = 4;
Capacitors[0] = 100;
Capacitors[1] = "00";
Capacitors[2] = 00;
Capacitors[3] = "1000";



function CapacitorBasic(gc)
    gc:setColorRGB(0xFF0000);
    gc:drawRect(100,30,180,150);
    gc:setFont("serif","b",6)
    for i=1 , Capacitors.Counter do
    if(X_Dimenstion == i)then
        gc:setColorRGB(0xFFFFff);
    end
    gc:drawString(Capacitors[i-1],89+i*36,65);
    Elec.C(90 + i * 36,83,gc,0);
    end
    Parallel = 0; 
    Series   = 0;
    for i=1 , Capacitors.Counter do
        if(tonumber(Capacitors[i-1]) ~= nil) then Parallel = Parallel + Capacitors[i-1]; end
        if( tonumber(Capacitors[i-1]) ~= nil and tonumber(Capacitors[i-1]) ~= 0) then gc:setColorRGB(0xffff00);Series = (Series)+(1/tonumber(Capacitors[i-1])); end
        end
    Series = 1/Series;   
    gc:drawString("Parallel",105,110);
    gc:drawString("Series",105,138);
    gc:drawString(" -   |   + ",170,30);
    gc:setColorRGB(0xFFFFff);
    gc:drawString(Size(Parallel).."F" ,105,123);
    gc:drawString(Size(Series).."F",105,151);
end



function mininumber(txt) 
    txt = txt:gsub('0','₀');
    txt = txt:gsub('3','₃');
    txt = txt:gsub('1','₁');
    txt = txt:gsub('2','₂');
    txt = txt:gsub('4','₄');
    txt = txt:gsub('5','₀');
    txt = txt:gsub('6','₀');
    txt = txt:gsub('7','₀');
    txt = txt:gsub('8','₀');
    txt = txt:gsub('9','₀');
    return txt;    
end
