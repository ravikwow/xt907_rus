.class public Lcom/motorola/messaging/mime/EncoderUtil;
.super Ljava/lang/Object;
.source "EncoderUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/mime/EncoderUtil$Usage;,
        Lcom/motorola/messaging/mime/EncoderUtil$Encoding;
    }
.end annotation


# static fields
.field static final BASE64_TABLE:[B

.field private static final Q_REGULAR_CHARS:Ljava/util/BitSet;

.field private static final Q_RESTRICTED_CHARS:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/messaging/mime/EncoderUtil;->BASE64_TABLE:[B

    .line 48
    const-string v0, "=_?"

    invoke-static {v0}, Lcom/motorola/messaging/mime/EncoderUtil;->initChars(Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/mime/EncoderUtil;->Q_REGULAR_CHARS:Ljava/util/BitSet;

    .line 50
    const-string v0, "=_?\"#$%&\'(),.:;<>@[\\]^`{|}~"

    invoke-static {v0}, Lcom/motorola/messaging/mime/EncoderUtil;->initChars(Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/mime/EncoderUtil;->Q_RESTRICTED_CHARS:Ljava/util/BitSet;

    return-void

    .line 38
    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method private static bEncodedLength([B)I
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 345
    array-length v0, p0

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private static determineCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 402
    const/4 v0, 0x1

    .line 403
    .local v0, "ascii":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 404
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 405
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 406
    .local v1, "ch":C
    const/16 v4, 0xff

    if-le v1, v4, :cond_0

    .line 407
    sget-object v4, Lcom/motorola/messaging/mime/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    .line 413
    .end local v1    # "ch":C
    :goto_1
    return-object v4

    .line 409
    .restart local v1    # "ch":C
    :cond_0
    const/16 v4, 0x7f

    if-le v1, v4, :cond_1

    .line 410
    const/4 v0, 0x0

    .line 404
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 413
    .end local v1    # "ch":C
    :cond_2
    if-eqz v0, :cond_3

    sget-object v4, Lcom/motorola/messaging/mime/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/motorola/messaging/mime/CharsetUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    goto :goto_1
.end method

.method private static determineEncoding([BLcom/motorola/messaging/mime/EncoderUtil$Usage;)Lcom/motorola/messaging/mime/EncoderUtil$Encoding;
    .locals 7
    .param p0, "bytes"    # [B
    .param p1, "usage"    # Lcom/motorola/messaging/mime/EncoderUtil$Usage;

    .prologue
    .line 417
    array-length v5, p0

    if-nez v5, :cond_0

    .line 418
    sget-object v5, Lcom/motorola/messaging/mime/EncoderUtil$Encoding;->Q:Lcom/motorola/messaging/mime/EncoderUtil$Encoding;

    .line 432
    :goto_0
    return-object v5

    .line 420
    :cond_0
    sget-object v5, Lcom/motorola/messaging/mime/EncoderUtil$Usage;->TEXT_TOKEN:Lcom/motorola/messaging/mime/EncoderUtil$Usage;

    if-ne p1, v5, :cond_2

    sget-object v2, Lcom/motorola/messaging/mime/EncoderUtil;->Q_REGULAR_CHARS:Ljava/util/BitSet;

    .line 423
    .local v2, "qChars":Ljava/util/BitSet;
    :goto_1
    const/4 v3, 0x0

    .line 424
    .local v3, "qEncoded":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v5, p0

    if-ge v0, v5, :cond_3

    .line 425
    aget-byte v5, p0, v0

    and-int/lit16 v4, v5, 0xff

    .line 426
    .local v4, "v":I
    const/16 v5, 0x20

    if-eq v4, v5, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 427
    add-int/lit8 v3, v3, 0x1

    .line 424
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 420
    .end local v0    # "i":I
    .end local v2    # "qChars":Ljava/util/BitSet;
    .end local v3    # "qEncoded":I
    .end local v4    # "v":I
    :cond_2
    sget-object v2, Lcom/motorola/messaging/mime/EncoderUtil;->Q_RESTRICTED_CHARS:Ljava/util/BitSet;

    goto :goto_1

    .line 431
    .restart local v0    # "i":I
    .restart local v2    # "qChars":Ljava/util/BitSet;
    .restart local v3    # "qEncoded":I
    :cond_3
    mul-int/lit8 v5, v3, 0x64

    array-length v6, p0

    div-int v1, v5, v6

    .line 432
    .local v1, "percentage":I
    const/16 v5, 0x1e

    if-le v1, v5, :cond_4

    sget-object v5, Lcom/motorola/messaging/mime/EncoderUtil$Encoding;->B:Lcom/motorola/messaging/mime/EncoderUtil$Encoding;

    goto :goto_0

    :cond_4
    sget-object v5, Lcom/motorola/messaging/mime/EncoderUtil$Encoding;->Q:Lcom/motorola/messaging/mime/EncoderUtil$Encoding;

    goto :goto_0
.end method

.method private static encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 393
    invoke-virtual {p1, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 394
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v2

    new-array v1, v2, [B

    .line 395
    .local v1, "bytes":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 396
    return-object v1
.end method

.method private static encodeB(Ljava/lang/String;Ljava/lang/String;ILjava/nio/charset/Charset;[B)Ljava/lang/String;
    .locals 11
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "usedCharacters"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .param p4, "bytes"    # [B

    .prologue
    .line 322
    invoke-static {p4}, Lcom/motorola/messaging/mime/EncoderUtil;->bEncodedLength([B)I

    move-result v2

    .line 324
    .local v2, "encodedLength":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v2

    const-string v10, "?="

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int v6, v9, v10

    .line 326
    .local v6, "totalLength":I
    rsub-int/lit8 v9, p2, 0x4b

    if-gt v6, v9, :cond_0

    .line 327
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p4}, Lcom/motorola/messaging/mime/EncoderUtil;->encodeB([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "?="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 340
    :goto_0
    return-object v9

    .line 329
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    const/4 v10, -0x1

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v5

    .line 331
    .local v5, "splitOffset":I
    const/4 v9, 0x0

    invoke-virtual {p1, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 332
    .local v3, "part1":Ljava/lang/String;
    invoke-static {v3, p3}, Lcom/motorola/messaging/mime/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 333
    .local v0, "bytes1":[B
    invoke-static {p0, v3, p2, p3, v0}, Lcom/motorola/messaging/mime/EncoderUtil;->encodeB(Ljava/lang/String;Ljava/lang/String;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v7

    .line 336
    .local v7, "word1":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 337
    .local v4, "part2":Ljava/lang/String;
    invoke-static {v4, p3}, Lcom/motorola/messaging/mime/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 338
    .local v1, "bytes2":[B
    const/4 v9, 0x0

    invoke-static {p0, v4, v9, p3, v1}, Lcom/motorola/messaging/mime/EncoderUtil;->encodeB(Ljava/lang/String;Ljava/lang/String;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v8

    .line 340
    .local v8, "word2":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0
.end method

.method public static encodeB([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .prologue
    const/16 v6, 0x3d

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 258
    .local v2, "idx":I
    array-length v1, p0

    .line 259
    .local v1, "end":I
    :goto_0
    add-int/lit8 v4, v1, -0x2

    if-ge v2, v4, :cond_0

    .line 260
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int v0, v4, v5

    .line 262
    .local v0, "data":I
    sget-object v4, Lcom/motorola/messaging/mime/EncoderUtil;->BASE64_TABLE:[B

    shr-int/lit8 v5, v0, 0x12

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 263
    sget-object v4, Lcom/motorola/messaging/mime/EncoderUtil;->BASE64_TABLE:[B

    shr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 264
    sget-object v4, Lcom/motorola/messaging/mime/EncoderUtil;->BASE64_TABLE:[B

    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 265
    sget-object v4, Lcom/motorola/messaging/mime/EncoderUtil;->BASE64_TABLE:[B

    and-int/lit8 v5, v0, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 259
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    .line 268
    .end local v0    # "data":I
    :cond_0
    add-int/lit8 v4, v1, -0x2

    if-ne v2, v4, :cond_2

    .line 269
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int v0, v4, v5

    .line 270
    .restart local v0    # "data":I
    sget-object v4, Lcom/motorola/messaging/mime/EncoderUtil;->BASE64_TABLE:[B

    shr-int/lit8 v5, v0, 0x12

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 271
    sget-object v4, Lcom/motorola/messaging/mime/EncoderUtil;->BASE64_TABLE:[B

    shr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 272
    sget-object v4, Lcom/motorola/messaging/mime/EncoderUtil;->BASE64_TABLE:[B

    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 283
    .end local v0    # "data":I
    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 275
    :cond_2
    add-int/lit8 v4, v1, -0x1

    if-ne v2, v4, :cond_1

    .line 276
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v0, v4, 0x10

    .line 277
    .restart local v0    # "data":I
    sget-object v4, Lcom/motorola/messaging/mime/EncoderUtil;->BASE64_TABLE:[B

    shr-int/lit8 v5, v0, 0x12

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 278
    sget-object v4, Lcom/motorola/messaging/mime/EncoderUtil;->BASE64_TABLE:[B

    shr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static encodeEncodedWord(Ljava/lang/String;Lcom/motorola/messaging/mime/EncoderUtil$Usage;I)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "usage"    # Lcom/motorola/messaging/mime/EncoderUtil$Usage;
    .param p2, "usedCharacters"    # I

    .prologue
    const/4 v0, 0x0

    .line 189
    invoke-static {p0, p1, p2, v0, v0}, Lcom/motorola/messaging/mime/EncoderUtil;->encodeEncodedWord(Ljava/lang/String;Lcom/motorola/messaging/mime/EncoderUtil$Usage;ILjava/nio/charset/Charset;Lcom/motorola/messaging/mime/EncoderUtil$Encoding;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeEncodedWord(Ljava/lang/String;Lcom/motorola/messaging/mime/EncoderUtil$Usage;ILjava/nio/charset/Charset;Lcom/motorola/messaging/mime/EncoderUtil$Encoding;)Ljava/lang/String;
    .locals 7
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "usage"    # Lcom/motorola/messaging/mime/EncoderUtil$Usage;
    .param p2, "usedCharacters"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .param p4, "encoding"    # Lcom/motorola/messaging/mime/EncoderUtil$Encoding;

    .prologue
    .line 218
    if-nez p0, :cond_0

    .line 219
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 220
    :cond_0
    if-ltz p2, :cond_1

    const/16 v1, 0x32

    if-le p2, v1, :cond_2

    .line 221
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 223
    :cond_2
    if-nez p3, :cond_3

    .line 224
    invoke-static {p0}, Lcom/motorola/messaging/mime/EncoderUtil;->determineCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p3

    .line 226
    :cond_3
    invoke-virtual {p3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/messaging/mime/CharsetUtil;->toMimeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 227
    .local v6, "mimeCharset":Ljava/lang/String;
    if-nez v6, :cond_4

    .line 229
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported charset"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 232
    :cond_4
    invoke-static {p0, p3}, Lcom/motorola/messaging/mime/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 234
    .local v5, "bytes":[B
    if-nez p4, :cond_5

    .line 235
    invoke-static {v5, p1}, Lcom/motorola/messaging/mime/EncoderUtil;->determineEncoding([BLcom/motorola/messaging/mime/EncoderUtil$Usage;)Lcom/motorola/messaging/mime/EncoderUtil$Encoding;

    move-result-object p4

    .line 237
    :cond_5
    sget-object v1, Lcom/motorola/messaging/mime/EncoderUtil$Encoding;->B:Lcom/motorola/messaging/mime/EncoderUtil$Encoding;

    if-ne p4, v1, :cond_6

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?B?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "prefix":Ljava/lang/String;
    invoke-static {v0, p0, p2, p3, v5}, Lcom/motorola/messaging/mime/EncoderUtil;->encodeB(Ljava/lang/String;Ljava/lang/String;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v1

    .line 242
    :goto_0
    return-object v1

    .line 241
    .end local v0    # "prefix":Ljava/lang/String;
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?Q?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "prefix":Ljava/lang/String;
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    .line 242
    invoke-static/range {v0 .. v5}, Lcom/motorola/messaging/mime/EncoderUtil;->encodeQ(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/messaging/mime/EncoderUtil$Usage;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static encodeIfNecessary(Ljava/lang/String;Lcom/motorola/messaging/mime/EncoderUtil$Usage;I)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "usage"    # Lcom/motorola/messaging/mime/EncoderUtil$Usage;
    .param p2, "usedCharacters"    # I

    .prologue
    .line 115
    invoke-static {p0, p2}, Lcom/motorola/messaging/mime/EncoderUtil;->hasToBeEncoded(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-static {p0, p1, p2}, Lcom/motorola/messaging/mime/EncoderUtil;->encodeEncodedWord(Ljava/lang/String;Lcom/motorola/messaging/mime/EncoderUtil$Usage;I)Ljava/lang/String;

    move-result-object p0

    .line 118
    .end local p0    # "text":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private static encodeQ(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/messaging/mime/EncoderUtil$Usage;ILjava/nio/charset/Charset;[B)Ljava/lang/String;
    .locals 19
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "usage"    # Lcom/motorola/messaging/mime/EncoderUtil$Usage;
    .param p3, "usedCharacters"    # I
    .param p4, "charset"    # Ljava/nio/charset/Charset;
    .param p5, "bytes"    # [B

    .prologue
    .line 350
    move-object/from16 v0, p5

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/motorola/messaging/mime/EncoderUtil;->qEncodedLength([BLcom/motorola/messaging/mime/EncoderUtil$Usage;)I

    move-result v14

    .line 352
    .local v14, "encodedLength":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v14

    const-string v4, "?="

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v16, v2, v4

    .line 354
    .local v16, "totalLength":I
    rsub-int/lit8 v2, p3, 0x4b

    move/from16 v0, v16

    if-gt v0, v2, :cond_0

    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/motorola/messaging/mime/EncoderUtil;->encodeQ([BLcom/motorola/messaging/mime/EncoderUtil$Usage;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "?="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 368
    :goto_0
    return-object v2

    .line 357
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/4 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v15

    .line 359
    .local v15, "splitOffset":I
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 360
    .local v3, "part1":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-static {v3, v0}, Lcom/motorola/messaging/mime/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v7

    .local v7, "bytes1":[B
    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    .line 361
    invoke-static/range {v2 .. v7}, Lcom/motorola/messaging/mime/EncoderUtil;->encodeQ(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/messaging/mime/EncoderUtil$Usage;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v17

    .line 364
    .local v17, "word1":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 365
    .local v9, "part2":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-static {v9, v0}, Lcom/motorola/messaging/mime/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v13

    .line 366
    .local v13, "bytes2":[B
    const/4 v11, 0x0

    move-object/from16 v8, p0

    move-object/from16 v10, p2

    move-object/from16 v12, p4

    invoke-static/range {v8 .. v13}, Lcom/motorola/messaging/mime/EncoderUtil;->encodeQ(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/messaging/mime/EncoderUtil$Usage;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v18

    .line 368
    .local v18, "word2":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static encodeQ([BLcom/motorola/messaging/mime/EncoderUtil$Usage;)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "usage"    # Lcom/motorola/messaging/mime/EncoderUtil$Usage;

    .prologue
    .line 298
    sget-object v5, Lcom/motorola/messaging/mime/EncoderUtil$Usage;->TEXT_TOKEN:Lcom/motorola/messaging/mime/EncoderUtil$Usage;

    if-ne p1, v5, :cond_0

    sget-object v2, Lcom/motorola/messaging/mime/EncoderUtil;->Q_REGULAR_CHARS:Ljava/util/BitSet;

    .line 301
    .local v2, "qChars":Ljava/util/BitSet;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    .local v3, "sb":Ljava/lang/StringBuilder;
    array-length v0, p0

    .line 304
    .local v0, "end":I
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 305
    aget-byte v5, p0, v1

    and-int/lit16 v4, v5, 0xff

    .line 306
    .local v4, "v":I
    const/16 v5, 0x20

    if-ne v4, v5, :cond_1

    .line 307
    const/16 v5, 0x5f

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 298
    .end local v0    # "end":I
    .end local v1    # "idx":I
    .end local v2    # "qChars":Ljava/util/BitSet;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "v":I
    :cond_0
    sget-object v2, Lcom/motorola/messaging/mime/EncoderUtil;->Q_RESTRICTED_CHARS:Ljava/util/BitSet;

    goto :goto_0

    .line 308
    .restart local v0    # "end":I
    .restart local v1    # "idx":I
    .restart local v2    # "qChars":Ljava/util/BitSet;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v4    # "v":I
    :cond_1
    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 309
    const/16 v5, 0x3d

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 310
    ushr-int/lit8 v5, v4, 0x4

    invoke-static {v5}, Lcom/motorola/messaging/mime/EncoderUtil;->hexDigit(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 311
    and-int/lit8 v5, v4, 0xf

    invoke-static {v5}, Lcom/motorola/messaging/mime/EncoderUtil;->hexDigit(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 313
    :cond_2
    int-to-char v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 317
    .end local v4    # "v":I
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static hasToBeEncoded(Ljava/lang/String;I)Z
    .locals 6
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "usedCharacters"    # I

    .prologue
    const/16 v5, 0x20

    const/4 v3, 0x1

    .line 137
    if-nez p0, :cond_0

    .line 138
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 139
    :cond_0
    if-ltz p1, :cond_1

    const/16 v4, 0x32

    if-le p1, v4, :cond_2

    .line 140
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 142
    :cond_2
    move v2, p1

    .line 144
    .local v2, "nonWhiteSpaceCount":I
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_8

    .line 145
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 146
    .local v0, "ch":C
    const/16 v4, 0x9

    if-eq v0, v4, :cond_3

    if-ne v0, v5, :cond_5

    .line 147
    :cond_3
    const/4 v2, 0x0

    .line 144
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 150
    const/16 v4, 0x4d

    if-le v2, v4, :cond_7

    .line 165
    .end local v0    # "ch":C
    :cond_6
    :goto_1
    return v3

    .line 158
    .restart local v0    # "ch":C
    :cond_7
    if-lt v0, v5, :cond_6

    const/16 v4, 0x7f

    if-lt v0, v4, :cond_4

    goto :goto_1

    .line 165
    .end local v0    # "ch":C
    :cond_8
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static hexDigit(I)C
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 436
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p0, -0xa

    add-int/lit8 v0, v0, 0x41

    int-to-char v0, v0

    goto :goto_0
.end method

.method private static initChars(Ljava/lang/String;)Ljava/util/BitSet;
    .locals 4
    .param p0, "specials"    # Ljava/lang/String;

    .prologue
    .line 60
    new-instance v0, Ljava/util/BitSet;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 61
    .local v0, "bs":Ljava/util/BitSet;
    const/16 v1, 0x21

    .local v1, "ch":C
    :goto_0
    const/16 v2, 0x7f

    if-ge v1, v2, :cond_1

    .line 62
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 63
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 61
    :cond_0
    add-int/lit8 v2, v1, 0x1

    int-to-char v1, v2

    goto :goto_0

    .line 66
    :cond_1
    return-object v0
.end method

.method private static qEncodedLength([BLcom/motorola/messaging/mime/EncoderUtil$Usage;)I
    .locals 5
    .param p0, "bytes"    # [B
    .param p1, "usage"    # Lcom/motorola/messaging/mime/EncoderUtil$Usage;

    .prologue
    .line 373
    sget-object v4, Lcom/motorola/messaging/mime/EncoderUtil$Usage;->TEXT_TOKEN:Lcom/motorola/messaging/mime/EncoderUtil$Usage;

    if-ne p1, v4, :cond_0

    sget-object v2, Lcom/motorola/messaging/mime/EncoderUtil;->Q_REGULAR_CHARS:Ljava/util/BitSet;

    .line 376
    .local v2, "qChars":Ljava/util/BitSet;
    :goto_0
    const/4 v0, 0x0

    .line 378
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_1
    array-length v4, p0

    if-ge v1, v4, :cond_3

    .line 379
    aget-byte v4, p0, v1

    and-int/lit16 v3, v4, 0xff

    .line 380
    .local v3, "v":I
    const/16 v4, 0x20

    if-ne v3, v4, :cond_1

    .line 381
    add-int/lit8 v0, v0, 0x1

    .line 378
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 373
    .end local v0    # "count":I
    .end local v1    # "idx":I
    .end local v2    # "qChars":Ljava/util/BitSet;
    .end local v3    # "v":I
    :cond_0
    sget-object v2, Lcom/motorola/messaging/mime/EncoderUtil;->Q_RESTRICTED_CHARS:Ljava/util/BitSet;

    goto :goto_0

    .line 382
    .restart local v0    # "count":I
    .restart local v1    # "idx":I
    .restart local v2    # "qChars":Ljava/util/BitSet;
    .restart local v3    # "v":I
    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 383
    add-int/lit8 v0, v0, 0x3

    goto :goto_2

    .line 385
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 389
    .end local v3    # "v":I
    :cond_3
    return v0
.end method
