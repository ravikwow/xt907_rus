.class public Lcom/motorola/blur/util/os/CharsetUtil;
.super Ljava/lang/Object;
.source "CharsetUtil.java"


# static fields
.field public static final DEFAULT_DECODE_CHARSET:Ljava/lang/String;

.field public static final DEFAULT_ENCODE_CHARSET:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/motorola/blur/util/os/CharsetUtil;->getDefaultEncodeCharset()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/util/os/CharsetUtil;->DEFAULT_ENCODE_CHARSET:Ljava/lang/String;

    .line 36
    invoke-static {}, Lcom/motorola/blur/util/os/CharsetUtil;->getDefaultDecodeCharset()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/util/os/CharsetUtil;->DEFAULT_DECODE_CHARSET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeWithFallback([B)Ljava/lang/String;
    .locals 5
    .param p0, "buf"    # [B

    .prologue
    .line 45
    sget-object v3, Lcom/motorola/blur/util/os/CharsetUtil;->DEFAULT_DECODE_CHARSET:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 46
    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 47
    .local v2, "utf8":Ljava/nio/charset/Charset;
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    .line 49
    .local v1, "decoder":Ljava/nio/charset/CharsetDecoder;
    :try_start_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 50
    .local v0, "cb":Ljava/nio/CharBuffer;
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 61
    .end local v0    # "cb":Ljava/nio/CharBuffer;
    .end local v1    # "decoder":Ljava/nio/charset/CharsetDecoder;
    .end local v2    # "utf8":Ljava/nio/charset/Charset;
    :goto_0
    return-object v3

    .line 51
    .restart local v1    # "decoder":Ljava/nio/charset/CharsetDecoder;
    .restart local v2    # "utf8":Ljava/nio/charset/Charset;
    :catch_0
    move-exception v3

    .line 57
    .end local v1    # "decoder":Ljava/nio/charset/CharsetDecoder;
    .end local v2    # "utf8":Ljava/nio/charset/Charset;
    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/motorola/blur/util/os/CharsetUtil;->DEFAULT_DECODE_CHARSET:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 58
    :catch_1
    move-exception v3

    .line 61
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static getDefaultDecodeCharset()Ljava/lang/String;
    .locals 3

    .prologue
    .line 70
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "charset":Ljava/lang/String;
    :try_start_0
    const-string v2, "motorola.decode.charset"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v0, "US-ASCII"

    goto :goto_0
.end method

.method private static getDefaultEncodeCharset()Ljava/lang/String;
    .locals 4

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 88
    .local v0, "charset":Ljava/lang/String;
    :try_start_0
    const-string v2, "motorola.encode.charset"

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v0, "UTF-8"

    goto :goto_0
.end method
