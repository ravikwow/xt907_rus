.class public Lcom/motorola/blur/util/mime/ContentType;
.super Lcom/motorola/blur/util/mime/ParameterizedValue;
.source "ContentType.java"


# static fields
.field private static final PATTERN_CONTENT_TYPE:Ljava/util/regex/Pattern;

.field private static sMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPrimaryType:Ljava/lang/String;

.field private mSubType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const-string v0, "([^/]+)/([^;]+);?(.*)"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/util/mime/ContentType;->PATTERN_CONTENT_TYPE:Ljava/util/regex/Pattern;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    .line 59
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "323"

    const-string v2, "text/h323"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "3dml"

    const-string v2, "text/vnd.in3d.3dml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "3g2"

    const-string v2, "video/3gpp2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "3gp"

    const-string v2, "video/3gpp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "ai"

    const-string v2, "application/postscript"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "aif"

    const-string v2, "audio/x-aiff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "aifc"

    const-string v2, "audio/x-aiff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "aiff"

    const-string v2, "audio/x-aiff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "amr"

    const-string v2, "audio/amr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "asc"

    const-string v2, "text/plain"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "asf"

    const-string v2, "video/x-ms-asf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "asm"

    const-string v2, "text/x-asm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "asx"

    const-string v2, "video/x-ms-asf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "atom"

    const-string v2, "application/atom+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "atomcat"

    const-string v2, "application/atomcat+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "atomsvc"

    const-string v2, "application/atomsvc+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "au"

    const-string v2, "audio/basic"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "avi"

    const-string v2, "video/x-msvideo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "bdm"

    const-string v2, "application/vnd.syncml.dm+wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "bib"

    const-string v2, "text/x-bibtex"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "bin"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "bmp"

    const-string v2, "image/bmp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "boo"

    const-string v2, "text/x-boo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "boz"

    const-string v2, "application/x-bzip2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "btif"

    const-string v2, "image/prs.btif"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "bz"

    const-string v2, "application/x-bzip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "bz2"

    const-string v2, "application/x-bzip2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "c"

    const-string v2, "text/x-csrc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "c++"

    const-string v2, "text/x-c++src"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "cc"

    const-string v2, "text/x-c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "cer"

    const-string v2, "application/pkix-cert"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "cgm"

    const-string v2, "image/cgm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "class"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "clp"

    const-string v2, "application/x-msclip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "cls"

    const-string v2, "text/x-tex"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "cmx"

    const-string v2, "image/x-cmx"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "conf"

    const-string v2, "text/plain"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "cpp"

    const-string v2, "text/x-c++src"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "crl"

    const-string v2, "application/pkix-crl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "crt"

    const-string v2, "application/x-x509-ca-cert"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "csh"

    const-string v2, "text/x-csh"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "css"

    const-string v2, "text/css"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "csv"

    const-string v2, "text/comma-separated-values"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "cxx"

    const-string v2, "text/x-c++src"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "d"

    const-string v2, "text/x-dsrc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "def"

    const-string v2, "text/plain"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "der"

    const-string v2, "application/x-x509-ca-cert"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "dif"

    const-string v2, "video/x-dv"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "diff"

    const-string v2, "text/plain"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "djv"

    const-string v2, "image/vnd.djvu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "djvu"

    const-string v2, "image/vnd.djvu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "dmg"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "dms"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "doc"

    const-string v2, "application/msword"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "dot"

    const-string v2, "application/msword"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "dsc"

    const-string v2, "text/prs.lines.tag"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "dtd"

    const-string v2, "application/xml-dtd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "dts"

    const-string v2, "audio/vnd.dts"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "dtshd"

    const-string v2, "audio/vnd.dts.hd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "dv"

    const-string v2, "video/x-dv"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "dvi"

    const-string v2, "application/x-dvi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "dwg"

    const-string v2, "image/vnd.dwg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "dxf"

    const-string v2, "image/vnd.dxf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "ecelp4800"

    const-string v2, "audio/vnd.nuera.ecelp4800"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "ecelp7470"

    const-string v2, "audio/vnd.nuera.ecelp7470"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "ecelp9600"

    const-string v2, "audio/vnd.nuera.ecelp9600"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "ecma"

    const-string v2, "application/ecmascript"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "eml"

    const-string v2, "message/rfc822"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "eps"

    const-string v2, "application/postscript"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "etx"

    const-string v2, "text/x-setext"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "f"

    const-string v2, "text/x-fortran"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "f77"

    const-string v2, "text/x-fortran"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "f90"

    const-string v2, "text/x-fortran"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "fli"

    const-string v2, "video/x-fli"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "flx"

    const-string v2, "text/vnd.fmi.flexstor"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "fly"

    const-string v2, "text/vnd.fly"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "for"

    const-string v2, "text/x-fortran"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "fpx"

    const-string v2, "image/vnd.fpx"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "fst"

    const-string v2, "image/vnd.fst"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "fvt"

    const-string v2, "video/vnd.fvt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "g3"

    const-string v2, "image/g3fax"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "gcd"

    const-string v2, "text/x-pcs-gcd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "gif"

    const-string v2, "image/gif"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "gtar"

    const-string v2, "application/x-gtar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "gz"

    const-string v2, "application/x-gzip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "h"

    const-string v2, "text/x-chdr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "h++"

    const-string v2, "text/x-c++hdr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "h261"

    const-string v2, "video/h261"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "h263"

    const-string v2, "video/h263"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "h264"

    const-string v2, "video/h264"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "hh"

    const-string v2, "text/x-c++hdr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "hpp"

    const-string v2, "text/x-c++hdr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "hs"

    const-string v2, "text/x-haskell"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "htc"

    const-string v2, "text/x-component"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "htm"

    const-string v2, "text/html"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "html"

    const-string v2, "text/html"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "hxx"

    const-string v2, "text/x-c++hdr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "icc"

    const-string v2, "application/vnd.iccprofile"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "icm"

    const-string v2, "application/vnd.iccprofile"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "ico"

    const-string v2, "image/x-icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "ics"

    const-string v2, "text/calendar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "icz"

    const-string v2, "text/calendar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "ief"

    const-string v2, "image/ief"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "ifb"

    const-string v2, "text/calendar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "jad"

    const-string v2, "text/vnd.sun.j2me.app-descriptor"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "java"

    const-string v2, "text/x-java"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "jng"

    const-string v2, "image/x-jng"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "jp2"

    const-string v2, "image/jp2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "jpe"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "jpeg"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "jpg"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "jpgm"

    const-string v2, "video/jpm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "jpgv"

    const-string v2, "video/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "jpm"

    const-string v2, "video/jpm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "js"

    const-string v2, "text/javascript"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "json"

    const-string v2, "text/json"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "kar"

    const-string v2, "audio/midi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "kml"

    const-string v2, "application/vnd.google-earth.kml+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "kmz"

    const-string v2, "application/vnd.google-earth.kmz"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "lha"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "lhs"

    const-string v2, "text/x-literate-haskell"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "log"

    const-string v2, "text/plain"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "ltx"

    const-string v2, "text/x-tex"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "lvp"

    const-string v2, "audio/vnd.lucent.voice"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "lzh"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "m1v"

    const-string v2, "video/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "m3u"

    const-string v2, "audio/x-mpegurl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "m4u"

    const-string v2, "video/vnd.mpegurl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "mac"

    const-string v2, "image/x-macpaint"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "man"

    const-string v2, "text/troff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "mdb"

    const-string v2, "application/x-msaccess"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "mid"

    const-string v2, "audio/midi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "midi"

    const-string v2, "audio/midi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "mime"

    const-string v2, "message/rfc822"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "mj2"

    const-string v2, "video/mj2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "mjp2"

    const-string v2, "video/mj2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "mml"

    const-string v2, "text/mathml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "mmr"

    const-string v2, "image/vnd.fujixerox.edmics-mmr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "mng"

    const-string v2, "video/x-mng"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "mny"

    const-string v2, "application/x-msmoney"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "moc"

    const-string v2, "text/x-moc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "mov"

    const-string v2, "video/quicktime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "movie"

    const-string v2, "video/x-sgi-movie"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "mp2"

    const-string v2, "audio/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "mp2a"

    const-string v2, "audio/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "mp3"

    const-string v2, "audio/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "mp4"

    const-string v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "mp4a"

    const-string v2, "audio/mp4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "mp4v"

    const-string v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "mpe"

    const-string v2, "video/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "mpeg"

    const-string v2, "video/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "mpg"

    const-string v2, "video/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "mpg4"

    const-string v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "mpga"

    const-string v2, "audio/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "mpp"

    const-string v2, "application/vnd.ms-project"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "mpt"

    const-string v2, "application/vnd.ms-project"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "mvb"

    const-string v2, "application/x-msmediaview"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "mxu"

    const-string v2, "video/vnd.mpegurl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "npx"

    const-string v2, "image/vnd.net-fpx"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "oda"

    const-string v2, "application/oda"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "odc"

    const-string v2, "application/vnd.oasis.opendocument.chart"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "odf"

    const-string v2, "application/vnd.oasis.opendocument.formula"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "odg"

    const-string v2, "application/vnd.oasis.opendocument.graphics"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "odi"

    const-string v2, "application/vnd.oasis.opendocument.image"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "odp"

    const-string v2, "application/vnd.oasis.opendocument.presentation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "ods"

    const-string v2, "application/vnd.oasis.opendocument.spreadsheet"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "odt"

    const-string v2, "application/vnd.oasis.opendocument.text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "oga"

    const-string v2, "audio/ogg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "ogg"

    const-string v2, "audio/ogg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "ogv"

    const-string v2, "video/ogg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "ogx"

    const-string v2, "application/ogg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "otc"

    const-string v2, "application/vnd.oasis.opendocument.chart-template"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "otf"

    const-string v2, "application/vnd.oasis.opendocument.formula-template"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "otg"

    const-string v2, "application/vnd.oasis.opendocument.graphics-template"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "oth"

    const-string v2, "application/vnd.oasis.opendocument.text-web"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "oti"

    const-string v2, "application/vnd.oasis.opendocument.image-template"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "otm"

    const-string v2, "application/vnd.oasis.opendocument.text-master"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "otp"

    const-string v2, "application/vnd.oasis.opendocument.presentation-template"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "ots"

    const-string v2, "application/vnd.oasis.opendocument.spreadsheet-template"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "ott"

    const-string v2, "application/vnd.oasis.opendocument.text-template"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "oxt"

    const-string v2, "application/vnd.openofficeorg.extension"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "p"

    const-string v2, "text/x-pascal"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "pas"

    const-string v2, "text/x-pascal"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "pbm"

    const-string v2, "image/x-portable-bitmap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "pct"

    const-string v2, "image/x-pict"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "pcx"

    const-string v2, "image/x-pcx"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "pdf"

    const-string v2, "application/pdf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "pgm"

    const-string v2, "image/x-portable-graymap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "pgp"

    const-string v2, "application/pgp-encrypted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "phps"

    const-string v2, "text/text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "pic"

    const-string v2, "image/x-pict"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "pict"

    const-string v2, "image/pict"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "pl"

    const-string v2, "application/x-perl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "png"

    const-string v2, "image/png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "pnm"

    const-string v2, "image/x-portable-anymap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "pnt"

    const-string v2, "image/x-macpaint"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "pntg"

    const-string v2, "image/x-macpaint"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "pot"

    const-string v2, "text/plain"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "ppm"

    const-string v2, "image/x-portable-pixmap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "pps"

    const-string v2, "application/vnd.ms-powerpoint"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "ppt"

    const-string v2, "application/vnd.ms-powerpoint"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "ps"

    const-string v2, "application/postscript"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "psd"

    const-string v2, "image/vnd.adobe.photoshop"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "pya"

    const-string v2, "audio/vnd.ms-playready.media.pya"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "pyv"

    const-string v2, "video/vnd.ms-playready.media.pyv"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "qt"

    const-string v2, "video/quicktime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "qti"

    const-string v2, "image/x-quicktime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "qtif"

    const-string v2, "image/x-quicktime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "ra"

    const-string v2, "audio/x-pn-realaudio"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "ram"

    const-string v2, "audio/x-pn-realaudio"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "rar"

    const-string v2, "application/x-rar-compressed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "ras"

    const-string v2, "image/x-cmu-raster"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "rdf"

    const-string v2, "application/rdf+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "rgb"

    const-string v2, "image/x-rgb"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "rlc"

    const-string v2, "image/vnd.fujixerox.edmics-rlc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "rmi"

    const-string v2, "audio/midi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "rmp"

    const-string v2, "audio/x-pn-realaudio-plugin"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "roff"

    const-string v2, "text/troff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "rpm"

    const-string v2, "audio/x-pn-realaudio-plugin"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "rsd"

    const-string v2, "application/rsd+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "rss"

    const-string v2, "application/rss+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "rtf"

    const-string v2, "text/rtf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "rtx"

    const-string v2, "text/richtext"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "s"

    const-string v2, "text/x-asm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "sbml"

    const-string v2, "application/sbml+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "sgm"

    const-string v2, "text/sgml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "sgml"

    const-string v2, "text/sgml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "sh"

    const-string v2, "application/x-sh"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "shar"

    const-string v2, "application/x-shar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "shf"

    const-string v2, "application/shf+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "sig"

    const-string v2, "application/pgp-signature"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "sit"

    const-string v2, "application/x-stuffit"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "sitx"

    const-string v2, "application/x-stuffitx"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "smi"

    const-string v2, "application/smil+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "smil"

    const-string v2, "application/smil+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "snd"

    const-string v2, "audio/basic"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "spot"

    const-string v2, "text/vnd.in3d.spot"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "spx"

    const-string v2, "audio/ogg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "ssml"

    const-string v2, "application/ssml+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "sty"

    const-string v2, "text/x-tex"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "svg"

    const-string v2, "image/svg+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "svgz"

    const-string v2, "image/svg+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "swf"

    const-string v2, "application/x-shockwave-flash"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "t"

    const-string v2, "text/troff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "tar"

    const-string v2, "application/x-tar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "tcl"

    const-string v2, "text/x-tcl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "tex"

    const-string v2, "text/x-tex"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "text"

    const-string v2, "text/plain"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "tga"

    const-string v2, "image/targa"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "tgz"

    const-string v2, "application/x-gzip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "tif"

    const-string v2, "image/tiff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "tiff"

    const-string v2, "image/tiff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "tmo"

    const-string v2, "application/vnd.tmobile-livetv"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "torrent"

    const-string v2, "application/x-bittorrent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "tr"

    const-string v2, "text/troff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "ts"

    const-string v2, "text/texmacs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "tsv"

    const-string v2, "text/tab-separated-values"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "txt"

    const-string v2, "text/plain"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "uls"

    const-string v2, "text/iuls"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "uri"

    const-string v2, "text/uri-list"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "uris"

    const-string v2, "text/uri-list"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "urls"

    const-string v2, "text/uri-list"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "uu"

    const-string v2, "text/x-uuencode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "vcf"

    const-string v2, "text/x-vCard"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "vcs"

    const-string v2, "text/x-vcalendar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "viv"

    const-string v2, "video/vnd.vivo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "vxml"

    const-string v2, "application/voicexml+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "wav"

    const-string v2, "audio/x-wav"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "wax"

    const-string v2, "audio/x-ms-wax"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "wbmp"

    const-string v2, "image/vnd.wap.wbmp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "wm"

    const-string v2, "video/x-ms-wm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "wma"

    const-string v2, "audio/x-ms-wma"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "wmd"

    const-string v2, "application/x-ms-wmd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "wmf"

    const-string v2, "application/x-msmetafile"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "wml"

    const-string v2, "text/vnd.wap.wml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "wmlc"

    const-string v2, "application/vnd.wap.wmlc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "wmls"

    const-string v2, "text/vnd.wap.wmlscript"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "wmlsc"

    const-string v2, "application/vnd.wap.wmlscriptc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "wmv"

    const-string v2, "video/x-ms-wmv"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "wmx"

    const-string v2, "video/x-ms-wmx"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "wmz"

    const-string v2, "application/x-ms-wmz"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "wpd"

    const-string v2, "application/vnd.wordperfect"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "wpl"

    const-string v2, "application/vnd.ms-wpl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "wps"

    const-string v2, "application/vnd.ms-works"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "wri"

    const-string v2, "application/x-mswrite"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "wsdl"

    const-string v2, "application/wsdl+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "wspolicy"

    const-string v2, "application/wspolicy+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "wvx"

    const-string v2, "video/x-ms-wvx"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "xbm"

    const-string v2, "image/x-xbitmap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "xht"

    const-string v2, "application/xhtml+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "xhtml"

    const-string v2, "application/xhtml+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "xif"

    const-string v2, "image/vnd.xiff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "xla"

    const-string v2, "application/vnd.ms-excel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "xlc"

    const-string v2, "application/vnd.ms-excel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "xlm"

    const-string v2, "application/vnd.ms-excel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "xls"

    const-string v2, "application/vnd.ms-excel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "xml"

    const-string v2, "application/xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "xop"

    const-string v2, "application/xop+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "xpm"

    const-string v2, "image/x-xpixmap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "xsl"

    const-string v2, "application/xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "xslt"

    const-string v2, "application/xslt+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "xsm"

    const-string v2, "application/vnd.syncml+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "xspf"

    const-string v2, "application/xspf+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "xul"

    const-string v2, "application/vnd.mozilla.xul+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "xvm"

    const-string v2, "application/xv+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "xvml"

    const-string v2, "application/xv+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "xwd"

    const-string v2, "image/x-xwindowdump"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "zip"

    const-string v2, "application/zip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "zmm"

    const-string v2, "application/vnd.handheld-entertainment+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "qcp"

    const-string v2, "audio/qcelp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v0, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "rtttl"

    const-string v2, "audio/midi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 377
    invoke-direct {p0, v3}, Lcom/motorola/blur/util/mime/ParameterizedValue;-><init>(Z)V

    .line 378
    invoke-virtual {p0, p1}, Lcom/motorola/blur/util/mime/ParameterizedValue;->setValue(Ljava/lang/String;)V

    .line 379
    sget-object v2, Lcom/motorola/blur/util/mime/ContentType;->PATTERN_CONTENT_TYPE:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 380
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/util/mime/ContentType;->mPrimaryType:Ljava/lang/String;

    .line 382
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/util/mime/ContentType;->mSubType:Ljava/lang/String;

    .line 383
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, "parameterList":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 385
    invoke-virtual {p0, v1}, Lcom/motorola/blur/util/mime/ParameterizedValue;->setParameters(Ljava/lang/String;)V

    .line 388
    .end local v1    # "parameterList":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "primaryType"    # Ljava/lang/String;
    .param p2, "subType"    # Ljava/lang/String;

    .prologue
    .line 396
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/motorola/blur/util/mime/ParameterizedValue;-><init>(Z)V

    .line 397
    iput-object p1, p0, Lcom/motorola/blur/util/mime/ContentType;->mPrimaryType:Ljava/lang/String;

    .line 398
    if-nez p2, :cond_0

    const-string p2, "*"

    .end local p2    # "subType":Ljava/lang/String;
    :cond_0
    iput-object p2, p0, Lcom/motorola/blur/util/mime/ContentType;->mSubType:Ljava/lang/String;

    .line 399
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "primaryType"    # Ljava/lang/String;
    .param p2, "subType"    # Ljava/lang/String;
    .param p3, "namesAndValues"    # [Ljava/lang/String;

    .prologue
    .line 409
    invoke-direct {p0, p1, p2}, Lcom/motorola/blur/util/mime/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0, p3}, Lcom/motorola/blur/util/mime/ParameterizedValue;->addParameters([Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method public static getContentTypeByName(Ljava/lang/String;)Lcom/motorola/blur/util/mime/ContentType;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 561
    new-instance v0, Lcom/motorola/blur/util/mime/ContentType;

    invoke-static {p0}, Lcom/motorola/blur/util/mime/ContentType;->getContentTypeStringByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/blur/util/mime/ContentType;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getContentTypeStringByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 543
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 544
    .local v0, "dot":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    const-string v2, ""

    .line 546
    .local v2, "suffix":Ljava/lang/String;
    :goto_0
    sget-object v3, Lcom/motorola/blur/util/mime/ContentType;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 548
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 549
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 551
    :cond_0
    if-nez v1, :cond_1

    const-string v1, "application/octet-stream"

    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    return-object v1

    .line 544
    .end local v2    # "suffix":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public delSP()Z
    .locals 2

    .prologue
    .line 507
    const-string v0, "Yes"

    const-string v1, "DelSp"

    invoke-virtual {p0, v1}, Lcom/motorola/blur/util/mime/ParameterizedValue;->getParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected getBaseValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/motorola/blur/util/mime/ContentType;->getContentTypeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoundary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    const-string v0, "boundary"

    invoke-virtual {p0, v0}, Lcom/motorola/blur/util/mime/ParameterizedValue;->getParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 2

    .prologue
    .line 418
    const-string v1, "charset"

    invoke-virtual {p0, v1}, Lcom/motorola/blur/util/mime/ParameterizedValue;->getParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, "charset":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 420
    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->toJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 422
    :cond_0
    return-object v0
.end method

.method public getContentTypeName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/motorola/blur/util/mime/ContentType;->mPrimaryType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/util/mime/ContentType;->mSubType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/motorola/blur/util/mime/ContentType;->mPrimaryType:Ljava/lang/String;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/motorola/blur/util/mime/ContentType;->mSubType:Ljava/lang/String;

    return-object v0
.end method

.method public isAlternative()Z
    .locals 2

    .prologue
    .line 499
    const-string v0, "alternative"

    iget-object v1, p0, Lcom/motorola/blur/util/mime/ContentType;->mSubType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isApplication()Z
    .locals 2

    .prologue
    .line 482
    const-string v0, "application"

    iget-object v1, p0, Lcom/motorola/blur/util/mime/ContentType;->mPrimaryType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAudio()Z
    .locals 2

    .prologue
    .line 474
    const-string v0, "audio"

    iget-object v1, p0, Lcom/motorola/blur/util/mime/ContentType;->mPrimaryType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isFlowed()Z
    .locals 2

    .prologue
    .line 503
    const-string v0, "Flowed"

    const-string v1, "Format"

    invoke-virtual {p0, v1}, Lcom/motorola/blur/util/mime/ParameterizedValue;->getParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isHtml()Z
    .locals 2

    .prologue
    .line 461
    const-string v0, "text"

    iget-object v1, p0, Lcom/motorola/blur/util/mime/ContentType;->mPrimaryType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "html"

    iget-object v1, p0, Lcom/motorola/blur/util/mime/ContentType;->mSubType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIcal()Z
    .locals 2

    .prologue
    .line 491
    const-string v0, "application"

    iget-object v1, p0, Lcom/motorola/blur/util/mime/ContentType;->mPrimaryType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ics"

    iget-object v1, p0, Lcom/motorola/blur/util/mime/ContentType;->mSubType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "text"

    iget-object v1, p0, Lcom/motorola/blur/util/mime/ContentType;->mPrimaryType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "calendar"

    iget-object v1, p0, Lcom/motorola/blur/util/mime/ContentType;->mSubType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isImage()Z
    .locals 2

    .prologue
    .line 470
    const-string v0, "image"

    iget-object v1, p0, Lcom/motorola/blur/util/mime/ContentType;->mPrimaryType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMessage()Z
    .locals 2

    .prologue
    .line 466
    const-string v0, "message"

    iget-object v1, p0, Lcom/motorola/blur/util/mime/ContentType;->mPrimaryType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMultipart()Z
    .locals 2

    .prologue
    .line 448
    const-string v0, "multipart"

    iget-object v1, p0, Lcom/motorola/blur/util/mime/ContentType;->mPrimaryType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPlainText()Z
    .locals 2

    .prologue
    .line 456
    const-string v0, "text"

    iget-object v1, p0, Lcom/motorola/blur/util/mime/ContentType;->mPrimaryType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "plain"

    iget-object v1, p0, Lcom/motorola/blur/util/mime/ContentType;->mSubType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRfc822Message()Z
    .locals 2

    .prologue
    .line 486
    const-string v0, "message"

    iget-object v1, p0, Lcom/motorola/blur/util/mime/ContentType;->mPrimaryType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "rfc822"

    iget-object v1, p0, Lcom/motorola/blur/util/mime/ContentType;->mSubType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isText()Z
    .locals 2

    .prologue
    .line 452
    const-string v0, "text"

    iget-object v1, p0, Lcom/motorola/blur/util/mime/ContentType;->mPrimaryType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVcal()Z
    .locals 2

    .prologue
    .line 495
    const-string v0, "application"

    iget-object v1, p0, Lcom/motorola/blur/util/mime/ContentType;->mPrimaryType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "vcs"

    iget-object v1, p0, Lcom/motorola/blur/util/mime/ContentType;->mSubType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "text"

    iget-object v1, p0, Lcom/motorola/blur/util/mime/ContentType;->mPrimaryType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "x-vcalendar"

    iget-object v1, p0, Lcom/motorola/blur/util/mime/ContentType;->mSubType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideo()Z
    .locals 2

    .prologue
    .line 478
    const-string v0, "video"

    iget-object v1, p0, Lcom/motorola/blur/util/mime/ContentType;->mPrimaryType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public match(Lcom/motorola/blur/util/mime/ContentType;)Z
    .locals 3
    .param p1, "type"    # Lcom/motorola/blur/util/mime/ContentType;

    .prologue
    .line 512
    if-nez p1, :cond_2

    .line 513
    const-string v1, "text"

    iget-object v2, p0, Lcom/motorola/blur/util/mime/ContentType;->mPrimaryType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "*"

    iget-object v2, p0, Lcom/motorola/blur/util/mime/ContentType;->mSubType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "plain"

    iget-object v2, p0, Lcom/motorola/blur/util/mime/ContentType;->mSubType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 527
    .local v0, "match":Z
    :goto_0
    return v0

    .line 513
    .end local v0    # "match":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 516
    :cond_2
    iget-object v1, p0, Lcom/motorola/blur/util/mime/ContentType;->mPrimaryType:Ljava/lang/String;

    iget-object v2, p1, Lcom/motorola/blur/util/mime/ContentType;->mPrimaryType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 517
    const-string v1, "*"

    iget-object v2, p0, Lcom/motorola/blur/util/mime/ContentType;->mSubType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "*"

    iget-object v2, p1, Lcom/motorola/blur/util/mime/ContentType;->mSubType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 519
    :cond_3
    const/4 v0, 0x1

    .restart local v0    # "match":Z
    goto :goto_0

    .line 521
    .end local v0    # "match":Z
    :cond_4
    iget-object v1, p0, Lcom/motorola/blur/util/mime/ContentType;->mSubType:Ljava/lang/String;

    iget-object v2, p1, Lcom/motorola/blur/util/mime/ContentType;->mSubType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .restart local v0    # "match":Z
    goto :goto_0

    .line 524
    .end local v0    # "match":Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "match":Z
    goto :goto_0
.end method

.method public setPrimaryType(Ljava/lang/String;)V
    .locals 0
    .param p1, "primaryType"    # Ljava/lang/String;

    .prologue
    .line 430
    iput-object p1, p0, Lcom/motorola/blur/util/mime/ContentType;->mPrimaryType:Ljava/lang/String;

    .line 431
    invoke-virtual {p0}, Lcom/motorola/blur/util/mime/ParameterizedValue;->setDirty()V

    .line 432
    return-void
.end method

.method public setSubType(Ljava/lang/String;)V
    .locals 0
    .param p1, "subType"    # Ljava/lang/String;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/motorola/blur/util/mime/ContentType;->mSubType:Ljava/lang/String;

    .line 440
    invoke-virtual {p0}, Lcom/motorola/blur/util/mime/ParameterizedValue;->setDirty()V

    .line 441
    return-void
.end method
