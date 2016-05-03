# taskhash v1.0

This tool is developed to assist forensic investigators and auditors to remotely collect the md5sum of running processes on the target windows machine.

# Usage

1) To collect the md5sum of the processes remotely

    Command: C:\taskhash>taskhash.exe -t <Target IP> -u <username> -p <password>

2) To collect the md5sum of the processes locally

    Command: C:\taskhash>taskhashlocal.exe


Output:

    C:\taskhash>type _processes_DXB-HR-PC

    C:\WINDOWS\System32\smss.exe --- 0x5F816C1F539266D2D4C78694239DA0B5
    C:\WINDOWS\system32\csrss.exe --- 0x44F275C64738EA2056E3D9580C23B60F  
    C:\WINDOWS\system32\winlogon.exe --- 0xED0EF0A136DEC83DF69F04118870003E 
    C:\WINDOWS\system32\services.exe --- 0x0E776ED5F7CC9F94299E70461B7B8185
    C:\WINDOWS\system32\lsass.exe --- 0xBF2466B3E18E970D8A976FB95FC1CA85
    C:\WINDOWS\system32\VBoxService.exe --- 0x191EAE48B07444C93C60DDC4599C9DCA
    C:\WINDOWS\system32\svchost.exe --- 0x27C6D03BCDB8CFEB96B716F3D8BE3E18
    C:\WINDOWS\system32\svchost.exe --- 0x27C6D03BCDB8CFEB96B716F3D8BE3E18
    C:\WINDOWS\System32\svchost.exe --- 0x27C6D03BCDB8CFEB96B716F3D8BE3E18
    C:\WINDOWS\system32\svchost.exe --- 0x27C6D03BCDB8CFEB96B716F3D8BE3E18
    C:\WINDOWS\system32\svchost.exe --- 0x27C6D03BCDB8CFEB96B716F3D8BE3E18
    C:\WINDOWS\system32\spoolsv.exe --- 0xD8E14A61ACC1D4A6CD0D38AEBAC7FA3B
    C:\Program Files\Hotspot Shield\bin\hsswd.exe --- 0x5CB01FD5AA4885BC4811433B54393AF2
    C:\Program Files\Java\jre7\bin\jqs.exe --- 0x7657C36428671E6405BC3AFF0FF2D83F
    C:\Program Files\TeamViewer\TeamViewer_Service.exe --- 0xCFC9B7B465283378D374D5E380D5D244
    C:\Program Files\Bitvise SSH Server\BvSshServer.exe --- 0x1C31F583424BB622F5A3A773B2D7E84F
    C:\WINDOWS\System32\alg.exe --- 0x8C515081584A38AA007909CD02020B3D
    C:\WINDOWS\system32\VBoxTray.exe --- 0x515E3B457C20418A139701C1A85E31A7
    C:\Program Files\Common Files\Java\Java Update\jusched.exe --- 0xA55FB42F0642DBF4817543A58E97721F
    C:\WINDOWS\system32\wuauclt.exe --- 0xED7262E52C31CF1625B65039102BC16C
    C:\WINDOWS\explorer.exe --- 0x12896823FB95BFB3DC9B46BCAEDC9923
    C:\WINDOWS\System32\svchost.exe --- 0x27C6D03BCDB8CFEB96B716F3D8BE3E18
    C:\WINDOWS\system32\cmd.exe --- 0x6D778E0F95447E6546553EEEA709D03C
    C:\WINDOWS\System32\logon.scr --- 0x9FAD7DFF67555FF1E06BC4A3893024A7
    C:\WINDOWS\PSEXESVC.EXE --- 0xA283E768FA12EF33087F07B01F82D6DD
    C:\WINDOWS\system32\taskhashlocal.exe --- 0xA1C088D5E65953CCC6B68D9EE23A36C4
