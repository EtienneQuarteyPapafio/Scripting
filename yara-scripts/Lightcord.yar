import "pe"
import "hash"

rule MAL_Lightcord_Win_Packed_July2026{

    meta:
        author = "Etienne Quartey-Papafio"
        description = "A detection rule for the Lightcord_Setup_Win.exe malware"
        date = "2026-08-07"
        reference = "https://github.com/EtienneQuarteyPapafio/Malware_Analysis/tree/main/Lightcord-Setup-Win"

    strings:
        $str1 = "premium crack by aeryx"
        $str2 = "Lightcord-Setup-Win.exe"
        $str3 = "Lightcord GMBH"
        $str4 = "C:\Users\AppData\Local\Temp\43CB7CCD\"
        $str5 = "C:\Users\AppData\Local\Temp\70AC3ECD\"

    condition:
        any of ($str) or hash.sha256(0, filesize) == "e0e37969dfd722c3036557fe6c3af6dfd70b5a55f496c9771c3e9dd97e648823"

}

rule MAL_Lightcord_Win_July2026{

    meta:
        author = "Etienne Quartey-Papafio"
        description = "A detection rule for the lightcord.exe malware"
        date = "2026-08-07"
        reference = "https://github.com/EtienneQuarteyPapafio/Malware_Analysis/tree/main/Lightcord-Setup-Win"

    strings:
        $str1 = "Lightcord.exe"
        $str2 = "Lightcord GMBH"
        $str3 = "C:\Users\AppData\Local\Temp\43CB7CCD\"
        $str4 = "C:\Users\AppData\Local\Temp\70AC3ECD\"


    condition:
        any of ($str) or hash.sha256(0, filesize) == "2364d13adbf1c2cbee2a3a435faefd905ae4401e88d654f73a12293965318f9e"

}
