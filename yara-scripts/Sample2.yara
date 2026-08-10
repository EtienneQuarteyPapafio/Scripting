rule Sample_Rule{

    meta:
        author = "Etienne Quartey-Papafio"
        description = "Sample Rule"
        date = "2026-08-07"
        reference = "https://github.com/EtienneQuarteyPapafio"

    strings:
        $str1 = "Pattern snippet"
        $hex = {4c 65 74 79 44 65 66 55 6e 64 2e 69 6f 20 }
        $regex = / https:\/\/www.\.[A-Za-z]+\.com /

    condition:
        any of ($str, $hex, $regex) and filesize < 1MB -> Detection Criteria

}
