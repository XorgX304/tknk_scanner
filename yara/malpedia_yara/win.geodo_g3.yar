rule win_geodo_g3 {
    meta:
        author = "psrok1"
        module = "emotet"
        malpedia_version = "20170519"
        malpedia_license = "CC BY-NC-SA 4.0"
        malpedia_sharing = "TLP:GREEN"
    strings:
        $emotet4_x65599 = { 0f b6 ?? 8d ?? ?? 69 ?? 3f 00 01 00 4? 0? ?? 3? ?? 72 }

        $emotet4_rsa_public = { 8d ?? ?? 5? 8d ?? ?? 5? 6a 00 68 00 80 00 00 ff 35 [4] ff 35 [4] 6a 13 68 01 00 01 00 ff 15 [4] 85 }
		$emotet4_cnc_list   = {  39 ?? ?5 [4] 0f 44 ?? (FF | A3)}

    condition:
        all of them
}
