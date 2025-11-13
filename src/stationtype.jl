const typestr_GE = "GE"
const typestr_GM = "GM"
const set_GE = Set([
    "KUOL",
    "HUAL",
    "TOCH",
    "ENAN",
    "SIHU",
    "HERM",
    "CHCH",
    "DAHU",
    "KAOH",
    "PULI",
    "SHRL",
    "SHCH",
    "FENL",
    "YULI",
    "RUEY",
    "LIOQ",
    "LISH",
    "DABA",
    "WANL",
    "FENG",
    "HUZS",
])

const set_GM = Set([
    "MS",
    "TW",
    "TT",
    "YL",
    "HC",
    "HL",
    "PT",
    "YH",
    "SL",
    "LY",
    "NC",
    "KM",
    "CS",
    "MT",
    "LN",
    "ZB",
    "XC",
    "SM",
    "CN",
])


const dict_code2type = Dict(
    (code => typestr_GM for code in set_GM)...,
    (code => typestr_GE for code in set_GE)...
)

code2type(x) = dict_code2type[x]
