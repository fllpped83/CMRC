clc;
clear all;
%读取表格 table类型
ZF = readtable('正反码表.csv','PreserveVariableNames',true);
% disp(ZF);
% c=A(6753,1);
% disp(c);

%获取table的行数和列数
ZF_Rows = height(ZF);
ZF_Cols = width(ZF);

%字符串内容
%chr = 'q2gn2wqusi2shmqnnnn3fg2rh2wtu2b26q2jb2giceynynr2j2wb2r2uxea6vfrhtugd6pymtgqx2b26wqusr2udojbn2uqbpb26ghjgpgutr2jjbb6q2ww2uxyigc2twytrsthkhudwqusdfiklkpe6gc2twytmqb2udh2wqus6rhmqifnuqtadr2aisg6ccc2shfhpymt6gisstgkwtgkwf2iyghhvih6wqusyu26ggvh36gintcwfp6vbdhgfxk6lkpeyofnmbvg6wqusgip2b2fnpw6ccc2waqglw2b2funn36yphxjjbbpekhiqjytvebncio6ggufldylfunn36ggufldylwqusmgus6funn3pfxx6wquss2gc2fmyiyawh6q2bnsvlkd2uxyiwynn36trwuwgj2mgtf6gc2fmyijf26e2eedcxq2fcu2iyqt6qcqyb2ggjj6txfgjjjjhhtfwgj2ed2iyitgc2igjn6ghtfhhlguxah6wqusldylgk2nynn6sgkcyudeguwxq26kn2ytqnjfd2ggwhybykr2awsdbuk2q2mgfc6wb2gmdgknkwawsd6addmwbxl6wjg2wb2xtgfynmw6nr2awsdi2evmh6hcd2ynoyb2bvgw6adpuq2vfrhnnnn3fgak6uxyinnnn3gotyfp2ewgg6j2wiwtjsjrb26wb2ynoyb2bvgw6xtgfunpggijgthnnudp2q2fcu26q2gmdgcl2wb2gintfcu26wb2kw2yu26gsjcwbwufcu26givbtrwufp2b26ia2fj2b26lguhq26nusfwb2nynnudh2jvrh6tfsbtfsbdyqq6b2tj2tm2effwtf2hxf2ihxjft2sk26fpfcwb2wgj2ccc2nynnudh2t2wbwu6ywqgq2vfbtfhjgbuje6fpwvukipwb2yuytgidd6isypdjd2thnnrvll6giskwjg2wb2xtgfyftcb26wwqgyi2udp2q26hhlgwb2xw2q2ranwpg2b2tfkdlguyr2ggxt6sbrlq2uqf2wb2xw2q2wdt2r2hxx2tfn2ddyeqgue6ywwuwb2knt2q2khhh6ihnyywjfs2aqmq6hxf2gisv6epuyccc2knrtawsdvbvbjvyi6q2q2nyjfjuttwb2r26gfp2wbwukw2ywtj6qg2rta2wbwukwjgrrr26rta2dmegq2ypsudd2rhxnr26w2cwutgip2giceougjthnn6tc26kct2q2gmdh6shshvfbtfhjgdbje6b2q26yuut6wqwqwq2fhu26kc2wb2tyg2lgblrbrh6yu2q2nudumtwhscbb6fcu2wq2yidh6hxfbgisv6fhfcq2rhf2vflpeeckr2smsuqhdemtwhfnudaisgr2tfhx6dbptfhvfvflp6eecked2pwfp6qruted2khi2ghfcccc2rhyc6hhfcwqusj2ggwh6eubbfhu2fpfcthqds2xjgk6hxf2q2sggosvfc6r2wb26gihekwvbyh2wb26fcu2q2rhmqwb2falwudh2lfo2dmh2ih26mhj2pwudlfo2dmh2dd26cnpuipw2gef2dmh26srsrhnjaf2fhvfqrut6lp2njnjrptm6ghfcimkfi26ddcwskjgwb2pwfp6qruts2rhych2vflp6eeckyi2gpjq6b2wb2et2gmrtsqqm6hhdmgmwwefcbgmf2tmpd6xpw2wb2eceur2tmbbtmdatmg26wxd2jobmvcltr26subbpuypq2rhmqwb2r26uxeaq2r2ihg2tvnnf2iyc2ghgo6b2q2fhjcraa2fgghb26ihg2nr2wb26rhmqbn2nr2klww6rhmqq2gmf2tmqhrhf26jf2wb2nnnn3rqn2b2rixar2ygaotylkfhu26b2fp2qrutjf2wb2tfq2uqf2ygaoaet2ytdh6fbhhthnnnjnjrhyc6gh2gmf2rrfiygaofhvfyplp6jf2q2fhjcfcu2rqku6wb2wb2t2q2fhvf6lghhuqf2ygaogeeqytdhq2r2hdye6h2gfjgrhy2rhy2ye2h2r26inffnyjftve2lcsw6wnrqfp2gwqt6yu2q26fhbngc2vflp6gowyq2yrfywb2fhu26bmfcwb2fhbn6mthilkd2fpudrhmqq26yu2fjfc6kc2jflp6imwwtffuwb2r2uxeaijtygouar2w26jfd2gmf2rguu6b2q2wgj2fjgo6wwghq2r2hvihccc26gobn6rmrgwqust2q2ftjg6adsfpekhiqjyj2ggjjgivk6ggjjwb2itrhbmqh6yatgqtuu6fcrfwdbnytqq6ddgkkvtdftfufcb2vkhx6tmyvwb26qhwnthqdnge26gctnnge2deb2gf26k2thqds2v2ppgf6qh2peytqgpwwgj2tytyqejywb2pp26vcn2wb2tffyq2ililgimg6tyjjwjg2jbrpgmxu6gimqwb2xtgfynwmtrrq6givbkwjgnyynudh26q2nyynudh2q2r26qtbbq2ux2go26rg2wb2pgn2b2g2wy2xw26q2wy2k26yuutq2tmws6gupvnwy2sqfeutuc6ddpdiwf2tft26rjttyfqq6giwgddxqdd2fcu2pp2adwei2fqp26ct2q2yfn2gc2hxth6d2jjapr2ihiqk26ccc2rhmqvfb2eceur26gef2dmh2srsrlfo2dmh2cnpur2uxea6kct26q2cgtuwsjfgmf2ce2gn2wb2shmq6';
chr = 'q2gn2wqusi2';
DNA_chr = '';
% chr(1);
%长度
length_string = length(chr);
%正反码表标志位
flag = true;
%动态检测比对
buff1 = '';
buff2 = '';
%区间平衡
num = 0;
% ZF{2,3}
% ZF{5,4}

% 字母-碱基映射
for i = 1:length_string
    for j = 1:30
        %碱基比较  变换选取规则
        if num == 2
            if flag == true  &&  strcmp(chr(i),ZF{j,2})
                str = cell2mat(ZF{j,3});
                str_DNA_chr = mat2str(DNA_chr);
%                 str_DNA_chr(end-1)
%                 str(1)
                if strcmp(str_DNA_chr(end-1),str(1))
                    flag = ~flag;
                end
                num = 0;
            end
            if flag == false  &&  strcmp(chr(i),ZF{j,2})
                str = cell2mat(ZF{j,4});
                str_DNA_chr = mat2str(DNA_chr);
                if strcmp(str_DNA_chr(end-1),str(1))
                    flag = ~flag;
                end
                num = 0;
            end
        end
        %正码表
        if strcmp(chr(i),ZF{j,2})  &&  flag == true
            buff1 = cell2mat(ZF{j,3});
            DNA_chr = strcat(DNA_chr,cell2mat(ZF{j,3}));
%             DNA_chr = strcat(DNA_chr,{' '})
            flag = false;
            num = num +1;
            break;
        %反码表
        elseif strcmp(chr(i),ZF{j,2})  &&  flag == false
            buff2 = cell2mat(ZF{j,4});
            DNA_chr = strcat(DNA_chr,cell2mat(ZF{j,4}));
%             DNA_chr = strcat(DNA_chr,{' '})
            flag = true;
            num = num+1;
            break;
        end
        
    end
    
end


%解码
%序列长度
length_DNA_chr = length(DNA_chr);
%三元
buff_de_DNA_chr = '';
de_DNA_chr = '';
%解码
for ii = 1:3:length_DNA_chr
    buff_de_DNA_chr = '';
    buff_de_DNA_chr = strcat(strcat(strcat(buff_de_DNA_chr, DNA_chr(ii)), DNA_chr(ii+1)), DNA_chr(ii+2));
    if strcmp(buff_de_DNA_chr, 'AAT')
       de_DNA_chr = strcat(de_DNA_chr,'q');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'CCG')
       de_DNA_chr = strcat(de_DNA_chr,'q');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'AAG')
       de_DNA_chr = strcat(de_DNA_chr,'w');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'CCT')
       de_DNA_chr = strcat(de_DNA_chr,'w');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'AAC')
       de_DNA_chr = strcat(de_DNA_chr,'e');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'CCA')
       de_DNA_chr = strcat(de_DNA_chr,'e');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'ATA')
       de_DNA_chr = strcat(de_DNA_chr,'r');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'CGC')
       de_DNA_chr = strcat(de_DNA_chr,'r');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'ATT')
       de_DNA_chr = strcat(de_DNA_chr,'t');
       continue;
    elseif  strcmp(buff_de_DNA_chr, 'CGG')
       de_DNA_chr = strcat(de_DNA_chr,'t');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'ATG') 
       de_DNA_chr = strcat(de_DNA_chr,'y');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'CGT')
       de_DNA_chr = strcat(de_DNA_chr,'y');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'ATC') 
       de_DNA_chr = strcat(de_DNA_chr,'u');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'CGA')
       de_DNA_chr = strcat(de_DNA_chr,'u');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'AGA') 
       de_DNA_chr = strcat(de_DNA_chr,'i');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'CTC')
       de_DNA_chr = strcat(de_DNA_chr,'i');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'AGT') 
       de_DNA_chr = strcat(de_DNA_chr,'o');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'CTG')
       de_DNA_chr = strcat(de_DNA_chr,'o');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'AGG') 
       de_DNA_chr = strcat(de_DNA_chr,'p');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'CTT')
       de_DNA_chr = strcat(de_DNA_chr,'p');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'AGC') 
       de_DNA_chr = strcat(de_DNA_chr,'a');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'CTA')
       de_DNA_chr = strcat(de_DNA_chr,'a');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'ACA') 
       de_DNA_chr = strcat(de_DNA_chr,'s');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'CAC')
       de_DNA_chr = strcat(de_DNA_chr,'s');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'ACT') 
       de_DNA_chr = strcat(de_DNA_chr,'d');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'CAG')
       de_DNA_chr = strcat(de_DNA_chr,'d');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'ACG') 
       de_DNA_chr = strcat(de_DNA_chr,'f');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'CAT')
       de_DNA_chr = strcat(de_DNA_chr,'f');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'ACC') 
       de_DNA_chr = strcat(de_DNA_chr,'g');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'CAA')
       de_DNA_chr = strcat(de_DNA_chr,'g');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'TAA') 
       de_DNA_chr = strcat(de_DNA_chr,'h');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'GCC')
       de_DNA_chr = strcat(de_DNA_chr,'h');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'TAT') 
       de_DNA_chr = strcat(de_DNA_chr,'j');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'GCG')
       de_DNA_chr = strcat(de_DNA_chr,'j');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'TAG') 
       de_DNA_chr = strcat(de_DNA_chr,'k');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'GCT')
       de_DNA_chr = strcat(de_DNA_chr,'k');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'TAC') 
       de_DNA_chr = strcat(de_DNA_chr,'l');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'GCA')
       de_DNA_chr = strcat(de_DNA_chr,'l');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'TTA') 
       de_DNA_chr = strcat(de_DNA_chr,'x');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'GGC')
       de_DNA_chr = strcat(de_DNA_chr,'x');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'TTG') 
       de_DNA_chr = strcat(de_DNA_chr,'c');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'GGT')
       de_DNA_chr = strcat(de_DNA_chr,'c');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'TTC') 
       de_DNA_chr = strcat(de_DNA_chr,'v');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'GGA')
       de_DNA_chr = strcat(de_DNA_chr,'v');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'TGA') 
       de_DNA_chr = strcat(de_DNA_chr,'b');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'GTC')
       de_DNA_chr = strcat(de_DNA_chr,'b');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'TGT') 
       de_DNA_chr = strcat(de_DNA_chr,'n');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'GTG')
       de_DNA_chr = strcat(de_DNA_chr,'n');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'TGG') 
       de_DNA_chr = strcat(de_DNA_chr,'m');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'GTT')
       de_DNA_chr = strcat(de_DNA_chr,'m');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'TGC') 
       de_DNA_chr = strcat(de_DNA_chr,'2');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'GTA')
       de_DNA_chr = strcat(de_DNA_chr,'2');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'TCA') 
       de_DNA_chr = strcat(de_DNA_chr,'3');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'GAG')
       de_DNA_chr = strcat(de_DNA_chr,'3');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'TCT') 
       de_DNA_chr = strcat(de_DNA_chr,'4');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'GAC')
       de_DNA_chr = strcat(de_DNA_chr,'4');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'TCG') 
       de_DNA_chr = strcat(de_DNA_chr,'5');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'GAT')
       de_DNA_chr = strcat(de_DNA_chr,'5');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'TCC') 
       de_DNA_chr = strcat(de_DNA_chr,'6');
       continue;
    elseif strcmp(buff_de_DNA_chr, 'GAA')
       de_DNA_chr = strcat(de_DNA_chr,'6');
       continue;
   end

end

% DNA_chr
% chr
% de_DNA_chr
% strcmp(chr, de_DNA_chr)


