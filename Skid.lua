
--[[
AztupBrew(Fork of IronBrew2): obfuscation; Version 2.7.2
]]
return(function(i,m,a)local k=string.char;local e=string.sub;local r=table.concat;local l=math.ldexp;local q=getfenv or function()return _ENV end;local n=select;local h=unpack or table.unpack;local j=tonumber;local function o(h)local b,c,f="","",{}local g=256;local d={}for a=0,g-1 do d[a]=k(a)end;local a=1;local function i()local b=j(e(h,a,a),36)a=a+1;local c=j(e(h,a,a+b-1),36)a=a+b;return c end;b=k(i())f[1]=b;while a<#h do local a=i()if d[a]then c=d[a]else c=b..e(b,1,1)end;d[g]=b..e(c,1,1)f[#f+1],b,g=c,c,g+1 end;return table.concat(f)end;local j=o('161N2751N1J27623423A23E2361N1G27621Z23F23A23223622T22S1N1S27622J23C23823A23F27H27J27L1N1I27621323C22O23A23J1N1V27621X22Q23I22R27U23I2331N1T27622R23623128323D22S23223C22Q1N1U27622H23627A22R23I23C28O28727621V22D22E22H22B22G22522527E27623123623D22R23J23227N27P2751W29O29O22I22G21X21V22E22J29327521Z22T23C22P23A28K23F1N1R27623623322R22P22S29I23622O22T23F23727Z27622V23A23I27M27728V27B27D28I27523F23C23A2372AD22T23I23D23429D27522N22R22R22V22823622R1N22F27623J2B822V22S21921K21K22T23A22O21L23428C23J22Q23922Q22S27L23829128K29H21L2C023E21K23G23223122O22R23521K21X2BP2AO23I21K23E2AN23D21K22A23322V2AW28C21L23F22Q23A2761N21I2761521J2761M2762D22CX1N1L1N2D62CX1K2CX2D428U275152752D92782DH2752DD2802DM2AQ1H2D027528027F2DQ2DS2882DQ27F2DG1N151C2932AU2E32E528U29M2E828H2A62CX2802D428I2D4152A72D91Q2CX2DS2DD2D42D72D92DK277274275191N2D421J2D92DW1N1P1N1H1729D112EZ2F62EV2762FA2D41J2EW1N2EY2EJ2A727F1O2D01A2932ER2DA2752882882F82DI2ED2FI27627P2FS2762882EB2762F32D92G72FB2D41H122D82E32FB2DK2FI2DI2ER2DZ2FB2752CZ2752FS2GR2762G91N2DD2752DL2AK2752DS2752F32GM2E22E72F52752H71N2FO2752HB2HA2762HD2F82752HH2D72HJ2FI2HM2762HN2752HP1N2FI2HD2FY1N142CX');local a=(bit or bit32);local d=a and a.bxor or function(a,b)local c,d,e=1,0,10 while a>0 and b>0 do local e,f=a%2,b%2 if e~=f then d=d+c end a,b,c=(a-e)/2,(b-f)/2,c*2 end if a<b then a=b end while a>0 do local b=a%2 if b>0 then d=d+c end a,c=(a-b)/2,c*2 end return d end local function c(b,a,c)if c then local a=(b/2^(a-1))%2^((c-1)-(a-1)+1);return a-a%1;else local a=2^(a-1);return(b%(a+a)>=a)and 1 or 0;end;end;local a=1;local function b()local b,f,c,e=i(j,a,a+3);b=d(b,23)f=d(f,23)c=d(c,23)e=d(e,23)a=a+4;return(e*16777216)+(c*65536)+(f*256)+b;end;local function g()local b=d(i(j,a,a),23);a=a+1;return b;end;local function f()local b,c=i(j,a,a+2);b=d(b,23)c=d(c,23)a=a+2;return(c*256)+b;end;local function p()local a=b();local b=b();local e=1;local d=(c(b,1,20)*(2^32))+a;local a=c(b,21,31);local b=((-1)^c(b,32));if(a==0)then if(d==0)then return b*0;else a=1;e=0;end;elseif(a==2047)then return(d==0)and(b*(1/0))or(b*(0/0));end;return l(b,a-1023)*(e+(d/(2^52)));end;local o=b;local function l(b)local c;if(not b)then b=o();if(b==0)then return'';end;end;c=e(j,a,a+b-1);a=a+b;local b={}for a=1,#c do b[a]=k(d(i(e(c,a,a)),23))end return r(b);end;local a=b;local function o(...)return{...},n('#',...)end local function j()local i={};local e={};local k={};local h={[#{"1 + 1 = 111";{360;651;789;795};}]=e,[#{"1 + 1 = 111";{99;113;870;736};{505;161;845;341};}]=nil,[#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{609;120;599;51};}]=k,[#{"1 + 1 = 111";}]=i,};local a=b()local d={}for c=1,a do local b=g();local a;if(b==3)then a=(g()~=0);elseif(b==1)then a=p();elseif(b==0)then a=l();end;d[c]=a;end;for a=1,b()do e[a-1]=j();end;for h=1,b()do local a=g();if(c(a,1,1)==0)then local e=c(a,2,3);local g=c(a,4,6);local a={f(),f(),nil,nil};if(e==0)then a[#("UJl")]=f();a[#("4WGm")]=f();elseif(e==1)then a[#("pdE")]=b();elseif(e==2)then a[#("S3Q")]=b()-(2^16)elseif(e==3)then a[#("UcY")]=b()-(2^16)a[#("Byr3")]=f();end;if(c(g,1,1)==1)then a[#("yd")]=d[a[#("WV")]]end if(c(g,2,2)==1)then a[#("qSR")]=d[a[#("dEq")]]end if(c(g,3,3)==1)then a[#("uOyZ")]=d[a[#("mxV8")]]end i[h]=a;end end;for a=1,b()do k[a]=b();end;h[3]=g();return h;end;local r=pcall local function p(g,a,i)g=(g==true and j())or g;return(function(...)local c=1;local f=-1;local l={...};local k=n('#',...)-1;local e=g[#{{228;473;512;213};}];local d=g[#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}];local a=g[#{{283;820;565;962};{189;746;979;197};}];local function n()local j=o local g={};local a={};local b={};for a=0,k do if(a>=d)then g[a-d]=l[a+1];else b[a]=l[a+1];end;end;local a=k-d+1 local a;local d;while true do a=e[c];d=a[#("k")];if d<=#("AfuSbB9oCyEmQQZU")then if d<=#{{561;145;834;940};{131;530;349;807};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}then if d<=#("gia")then if d<=#("H")then if d>#("")then local d=a[#("9S")];local c=b[a[#("5KQ")]];b[d+1]=c;b[d]=c[a[#{"1 + 1 = 111";{505;181;877;707};{96;603;109;373};{413;514;886;566};}]];else local c=a[#("hr")]local e={b[c](b[c+1])};local d=0;for a=c,a[#{"1 + 1 = 111";{144;645;275;211};"1 + 1 = 111";"1 + 1 = 111";}]do d=d+1;b[a]=e[d];end end;elseif d>#("py")then local a=a[#("v0")]b[a]=b[a](h(b,a+1,f))else b[a[#("7g")]]=b[a[#("XGe")]][a[#("F7iG")]];end;elseif d<=#("qUekf")then if d==#("mpVc")then b[a[#("RG")]]=a[#("dHH")];else local c=a[#("I5")];local d=b[c];for a=c+1,a[#("CTS")]do m(d,b[a])end;end;elseif d==#("hg1u8L")then b[a[#("T7")]]=b[a[#("55M")]];else local c=a[#("aS")]local d,a=j(b[c](h(b,c+1,a[#("fQF")])))f=a+c-1 local a=0;for c=c,f do a=a+1;b[c]=d[a];end;end;elseif d<=#("CM06fh4s845")then if d<=#("L6s3I991K")then if d>#("Atxn29bi")then b[a[#{"1 + 1 = 111";"1 + 1 = 111";}]]={};else do return end;end;elseif d==#("IkaYV6uP6q")then b[a[#("Wv")]]=b[a[#("hoq")]][a[#("Qr3Y")]];else b[a[#("41")]]();end;elseif d<=#("SsukCWZnsv8Us")then if d==#("lGJ2p4r04xAK")then b[a[#("LI")]]=i[a[#("ApT")]];else if(b[a[#("9N")]]~=b[a[#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{481;59;982;364};}]])then c=c+1;else c=a[#("rmt")];end;end;elseif d<=#("H6ntdLX3h8mVgj")then b[a[#("aj")]]=i[a[#("xeQ")]];elseif d>#("0OKBR7JAVXQvF2y")then if(b[a[#("St")]]~=b[a[#("YdUB")]])then c=c+1;else c=a[#("ZlL")];end;else local c=a[#("s4")]local d,a=j(b[c](h(b,c+1,a[#("GyG")])))f=a+c-1 local a=0;for c=c,f do a=a+1;b[c]=d[a];end;end;elseif d<=#("U1Nrqeb4iG7eIvgjVE9qX92l")then if d<=#("GDGypraTaD3D2GWMPsl9")then if d<=#("2zRGKa2hkV9CtVMFH3")then if d==#("7uH3mR28nOiQRlDNd")then c=a[#("aju")];else local a=a[#("0Z")]b[a]=b[a](h(b,a+1,f))end;elseif d>#("1PrhL0S4aIVjghz7cjv")then b[a[#("Cc")]]();else do return end;end;elseif d<=#("EZScPEberp0hIQQn5ZUQkr")then if d>#("umdHbrTjtqIuc7pDhZNMU")then b[a[#("Z8")]]=b[a[#("1V2")]];else local d=a[#{{280;117;514;957};"1 + 1 = 111";}];local f=a[#{{104;402;770;753};{317;150;258;331};{34;535;240;958};"1 + 1 = 111";}];local e=d+2 local d={b[d](b[d+1],b[e])};for a=1,f do b[e+a]=d[a];end;local d=d[1]if d then b[e]=d c=a[#("fas")];else c=c+1;end;end;elseif d>#("NMBBlbmAQulixZL79XJfH09")then b[a[#("nJ")]]={};else local d=a[#("cc")];local f=a[#("c2Lf")];local e=d+2 local d={b[d](b[d+1],b[e])};for a=1,f do b[e+a]=d[a];end;local d=d[1]if d then b[e]=d c=a[#("oke")];else c=c+1;end;end;elseif d<=#("OqQxN0HQ5NJBfLgR64Lni4KB1jZ0")then if d<=#{"1 + 1 = 111";"1 + 1 = 111";{232;180;317;394};"1 + 1 = 111";{421;281;382;42};{672;104;415;918};{632;338;18;577};"1 + 1 = 111";{293;292;949;366};{509;913;118;518};{537;37;385;164};{693;798;433;532};"1 + 1 = 111";"1 + 1 = 111";{313;37;360;230};"1 + 1 = 111";"1 + 1 = 111";{897;112;753;718};"1 + 1 = 111";{135;232;468;922};{717;210;714;687};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{920;998;934;420};"1 + 1 = 111";}then if d==#("QpFDbRNqDWYaXlughWBNR0kRs")then b[a[#("1f")]]=(a[#("Xrh")]~=0);else c=a[#("zcj")];end;elseif d==#("jkGII13cofutXg35qEv1MFHcFDu")then b[a[#("fJ")]]=a[#("pAR")];else b[a[#("cS")]]=(a[#("frj")]~=0);end;elseif d<=#("cZeYkMHCV5n7gV7oVY8tTWKRuCYPOD")then if d==#{{692;784;413;233};"1 + 1 = 111";"1 + 1 = 111";{139;594;977;599};"1 + 1 = 111";{994;411;93;655};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{223;944;989;169};{356;18;745;263};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{749;382;814;422};"1 + 1 = 111";{154;880;298;705};{398;223;20;648};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{217;963;616;184};}then local g;local m,l;local k;local d;b[a[#("Ws")]]=i[a[#("TT3")]];c=c+1;a=e[c];d=a[#("lp")];k=b[a[#("5Ly")]];b[d+1]=k;b[d]=k[a[#("FbUD")]];c=c+1;a=e[c];b[a[#("o6")]]=a[#("ueK")];c=c+1;a=e[c];b[a[#("eD")]]=(a[#("Vi6")]~=0);c=c+1;a=e[c];d=a[#("DV")]m,l=j(b[d](h(b,d+1,a[#("gWz")])))f=l+d-1 g=0;for a=d,f do g=g+1;b[a]=m[g];end;c=c+1;a=e[c];d=a[#("so")]b[d]=b[d](h(b,d+1,f))c=c+1;a=e[c];b[a[#{"1 + 1 = 111";{659;496;736;887};}]]();else local c=a[#("oQ")]local e={b[c](b[c+1])};local d=0;for a=c,a[#("yG1A")]do d=d+1;b[a]=e[d];end end;elseif d<=#("2Ys2jCWUJnnPWVrNoC6R7gvkxJFFUiN")then local c=a[#("QC")];local d=b[c];for a=c+1,a[#("pri")]do m(d,b[a])end;elseif d>#{"1 + 1 = 111";"1 + 1 = 111";{122;9;744;116};"1 + 1 = 111";{863;823;892;484};"1 + 1 = 111";{278;47;40;505};{142;386;218;946};{994;987;373;158};{139;615;239;863};{192;495;350;898};{380;881;590;253};{150;301;13;106};{522;896;308;441};{209;969;993;12};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{994;938;925;734};{282;187;386;641};"1 + 1 = 111";{712;781;817;319};{320;482;46;245};{95;792;184;633};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{14;18;15;707};"1 + 1 = 111";{991;253;152;162};"1 + 1 = 111";}then local c=a[#("QV")];local d=b[a[#("aD3")]];b[c+1]=d;b[c]=d[a[#("5D75")]];else b[a[#("Zz")]]=i[a[#("e7k")]];c=c+1;a=e[c];b[a[#("9d")]]=b[a[#("0JY")]][a[#("NDmt")]];c=c+1;a=e[c];b[a[#("MJ")]]=b[a[#("qY3")]][a[#("tl5F")]];c=c+1;a=e[c];b[a[#("q8")]]={};c=c+1;a=e[c];b[a[#("87")]]=a[#("3L3")];c=c+1;a=e[c];b[a[#("Ay")]]=a[#("DXf")];c=c+1;a=e[c];b[a[#("zW")]]=a[#("DcY")];c=c+1;a=e[c];b[a[#("oS")]]=a[#("35D")];c=c+1;a=e[c];b[a[#("mH")]]=a[#("K5p")];c=c+1;a=e[c];b[a[#("hG")]]=a[#("S6D")];end;c=c+1;end;end;A,B=o(r(n))if not A[1]then local a=g[4][c]or'?';error('ERROR IN IRONBREW SCRIPT [LINE '..a..']:'..A[2]);wait(9e9);else return h(A,2,B);end;end);end;return p(true,{},q())();end)(string.byte,table.insert,setmetatable);
