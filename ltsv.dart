class LTSV {

    static Map parse(String str) {
        var pairs = str.trim().split("\t");
        var ret = {};
        for (var pair in pairs) {
            var chunks = pair.split(":");
            var name = chunks.removeAt(0);
            ret[name] = chunks.join(":");
        }
        return ret;
    }

    static String dump(Map map) {
        var chunks = map.keys.map((k)=>"${k}:${map[k]}");
        return "${chunks.join("\t")}\n";
    }

}
