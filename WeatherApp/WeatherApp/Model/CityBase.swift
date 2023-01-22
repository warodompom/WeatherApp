import Foundation
import ObjectMapper

struct GeoCityBase : Mappable {
    var name : String?
    var local_names : Local_names?
    var lat : Double?
    var lon : Double?
    var country : String?
    var state : String?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        name <- map["name"]
        local_names <- map["local_names"]
        lat <- map["lat"]
        lon <- map["lon"]
        country <- map["country"]
        state <- map["state"]
    }
    
    struct Local_names : Mappable {
        var te : String?
        var fr : String?
        var _is : String?
        var ky : String?
        var fo : String?
        var ce : String?
        var ur : String?
        var na : String?
        var yo : String?
        var gu : String?
        var et : String?
        var ms : String?
        var sk : String?
        var tl : String?
        var ro : String?
        var gl : String?
        var km : String?
        var uk : String?
        var ay : String?
        var th : String?
        var da : String?
        var nv : String?
        var oc : String?
        var hr : String?
        var br : String?
        var wa : String?
        var ln : String?
        var tw : String?
        var bs : String?
        var sr : String?
        var so : String?
        var tk : String?
        var ny : String?
        var ml : String?
        var eo : String?
        var uz : String?
        var om : String?
        var cu : String?
        var ca : String?
        var hi : String?
        var sl : String?
        var pt : String?
        var pa : String?
        var mn : String?
        var lt : String?
        var an : String?
        var ia : String?
        var ie : String?
        var it : String?
        var si : String?
        var os : String?
        var ug : String?
        var ka : String?
        var ig : String?
        var ar : String?
        var tt : String?
        var bm : String?
        var cs : String?
        var no : String?
        var nn : String?
        var fa : String?
        var zu : String?
        var rm : String?
        var zh : String?
        var en : String?
        var cy : String?
        var io : String?
        var wo : String?
        var fi : String?
        var ta : String?
        var bi : String?
        var ps : String?
        var bn : String?
        var pl : String?
        var bg : String?
        var ku : String?
        var kk : String?
        var sw : String?
        var mi : String?
        var ff : String?
        var gd : String?
        var ba : String?
        var sh : String?
        var feature_name : String?
        var kw : String?
        var yi : String?
        var lb : String?
        var lv : String?
        var ha : String?
        var fy : String?
        var de : String?
        var ru : String?
        var af : String?
        var sq : String?
        var ga : String?
        var kv : String?
        var co : String?
        var mr : String?
        var ee : String?
        var bh : String?
        var sc : String?
        var be : String?
        var el : String?
        var to : String?
        var li : String?
        var ja : String?
        var az : String?
        var qu : String?
        var sa : String?
        var se : String?
        var sn : String?
        var eu : String?
        var gv : String?
        var vo : String?
        var st : String?
        var my : String?
        var am : String?
        var su : String?
        var mt : String?
        var ht : String?
        var sv : String?
        var ko : String?
        var cv : String?
        var tr : String?
        var fj : String?
        var sm : String?
        var ab : String?
        var lo : String?
        var vi : String?
        var es : String?
        var hy : String?
        var or : String?
        var sd : String?
        var nl : String?
        var kn : String?
        var hu : String?
        var kl : String?
        var bo : String?
        var jv : String?
        var he : String?
        var id : String?
        var ne : String?
        var mg : String?
        var av : String?
        var ascii : String?
        var gn : String?
        var mk : String?
        var tg : String?

        init?(map: Map) {

        }

        mutating func mapping(map: Map) {

            te <- map["te"]
            fr <- map["fr"]
            _is <- map["is"]
            ky <- map["ky"]
            fo <- map["fo"]
            ce <- map["ce"]
            ur <- map["ur"]
            na <- map["na"]
            yo <- map["yo"]
            gu <- map["gu"]
            et <- map["et"]
            ms <- map["ms"]
            sk <- map["sk"]
            tl <- map["tl"]
            ro <- map["ro"]
            gl <- map["gl"]
            km <- map["km"]
            uk <- map["uk"]
            ay <- map["ay"]
            th <- map["th"]
            da <- map["da"]
            nv <- map["nv"]
            oc <- map["oc"]
            hr <- map["hr"]
            br <- map["br"]
            wa <- map["wa"]
            ln <- map["ln"]
            tw <- map["tw"]
            bs <- map["bs"]
            sr <- map["sr"]
            so <- map["so"]
            tk <- map["tk"]
            ny <- map["ny"]
            ml <- map["ml"]
            eo <- map["eo"]
            uz <- map["uz"]
            om <- map["om"]
            cu <- map["cu"]
            ca <- map["ca"]
            hi <- map["hi"]
            sl <- map["sl"]
            pt <- map["pt"]
            pa <- map["pa"]
            mn <- map["mn"]
            lt <- map["lt"]
            an <- map["an"]
            ia <- map["ia"]
            ie <- map["ie"]
            it <- map["it"]
            si <- map["si"]
            os <- map["os"]
            ug <- map["ug"]
            ka <- map["ka"]
            ig <- map["ig"]
            ar <- map["ar"]
            tt <- map["tt"]
            bm <- map["bm"]
            cs <- map["cs"]
            no <- map["no"]
            nn <- map["nn"]
            fa <- map["fa"]
            zu <- map["zu"]
            rm <- map["rm"]
            zh <- map["zh"]
            en <- map["en"]
            cy <- map["cy"]
            io <- map["io"]
            wo <- map["wo"]
            fi <- map["fi"]
            ta <- map["ta"]
            bi <- map["bi"]
            ps <- map["ps"]
            bn <- map["bn"]
            pl <- map["pl"]
            bg <- map["bg"]
            ku <- map["ku"]
            kk <- map["kk"]
            sw <- map["sw"]
            mi <- map["mi"]
            ff <- map["ff"]
            gd <- map["gd"]
            ba <- map["ba"]
            sh <- map["sh"]
            feature_name <- map["feature_name"]
            kw <- map["kw"]
            yi <- map["yi"]
            lb <- map["lb"]
            lv <- map["lv"]
            ha <- map["ha"]
            fy <- map["fy"]
            de <- map["de"]
            ru <- map["ru"]
            af <- map["af"]
            sq <- map["sq"]
            ga <- map["ga"]
            kv <- map["kv"]
            co <- map["co"]
            mr <- map["mr"]
            ee <- map["ee"]
            bh <- map["bh"]
            sc <- map["sc"]
            be <- map["be"]
            el <- map["el"]
            to <- map["to"]
            li <- map["li"]
            ja <- map["ja"]
            az <- map["az"]
            qu <- map["qu"]
            sa <- map["sa"]
            se <- map["se"]
            sn <- map["sn"]
            eu <- map["eu"]
            gv <- map["gv"]
            vo <- map["vo"]
            st <- map["st"]
            my <- map["my"]
            am <- map["am"]
            su <- map["su"]
            mt <- map["mt"]
            ht <- map["ht"]
            sv <- map["sv"]
            ko <- map["ko"]
            cv <- map["cv"]
            tr <- map["tr"]
            fj <- map["fj"]
            sm <- map["sm"]
            ab <- map["ab"]
            lo <- map["lo"]
            vi <- map["vi"]
            es <- map["es"]
            hy <- map["hy"]
            or <- map["or"]
            sd <- map["sd"]
            nl <- map["nl"]
            kn <- map["kn"]
            hu <- map["hu"]
            kl <- map["kl"]
            bo <- map["bo"]
            jv <- map["jv"]
            he <- map["he"]
            id <- map["id"]
            ne <- map["ne"]
            mg <- map["mg"]
            av <- map["av"]
            ascii <- map["ascii"]
            gn <- map["gn"]
            mk <- map["mk"]
            tg <- map["tg"]
        }

    }

}
