.class public final Lcom/motorola/blur/util/SimpleEncryptUtil;
.super Ljava/lang/Object;
.source "SimpleEncryptUtil.java"


# static fields
.field private static final ALGORITHM_LENGTH:I = 0x80

.field private static final CBC_TRANSFORM:Ljava/lang/String; = "AES/CBC/PKCS5PADDING"

.field private static final DEFAULT_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final KEY:[B

.field private static final SPEC_LENGTH:I = 0x10

.field private static final TAG:Ljava/lang/String; = "Blur-SEU"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/blur/util/SimpleEncryptUtil;->KEY:[B

    return-void

    :array_0
    .array-data 1
        -0x60t
        0x4dt
        0x14t
        0x7et
        -0x7t
        0x4et
        0x61t
        -0x2ct
        0x7et
        0x6t
        0x2et
        -0x2ft
        -0x35t
        -0x44t
        -0x11t
        -0xet
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createKey()[B
    .locals 10

    .prologue
    const/16 v9, 0x10

    const/4 v3, 0x0

    .line 74
    const/4 v2, 0x0

    .line 77
    .local v2, "key":[B
    :try_start_0
    const-string v7, "AES"

    invoke-static {v7}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v4

    .line 78
    .local v4, "kgen":Ljavax/crypto/KeyGenerator;
    const/16 v7, 0x80

    invoke-virtual {v4, v7}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 79
    invoke-virtual {v4}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v5

    .line 80
    .local v5, "skey":Ljavax/crypto/SecretKey;
    invoke-interface {v5}, Ljavax/crypto/SecretKey;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 84
    .end local v4    # "kgen":Ljavax/crypto/KeyGenerator;
    .end local v5    # "skey":Ljavax/crypto/SecretKey;
    :goto_0
    if-eqz v2, :cond_0

    array-length v3, v2

    .line 85
    .local v3, "keyLen":I
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    mul-int/lit8 v7, v3, 0x2

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 87
    .local v6, "strbuf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 88
    aget-byte v7, v2, v1

    and-int/lit16 v7, v7, 0xff

    if-ge v7, v9, :cond_1

    .line 89
    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :cond_1
    aget-byte v7, v2, v1

    and-int/lit16 v7, v7, 0xff

    int-to-long v7, v7

    invoke-static {v7, v8, v9}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 81
    .end local v1    # "i":I
    .end local v3    # "keyLen":I
    .end local v6    # "strbuf":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 82
    .local v0, "exception":Ljava/security/NoSuchAlgorithmException;
    const-string v7, "Blur-SEU"

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v7, v0, v8}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    goto :goto_0

    .line 93
    .end local v0    # "exception":Ljava/security/NoSuchAlgorithmException;
    .restart local v1    # "i":I
    .restart local v3    # "keyLen":I
    .restart local v6    # "strbuf":Ljava/lang/StringBuilder;
    :cond_2
    return-object v2
.end method

.method public static decrypt(Ljava/lang/String;[BI)Ljava/lang/String;
    .locals 7
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "key"    # [B
    .param p2, "policy"    # I

    .prologue
    .line 279
    if-nez p0, :cond_1

    .line 283
    const/4 p0, 0x0

    .line 306
    .end local p0    # "input":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 285
    .restart local p0    # "input":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .line 286
    .local v2, "result":Ljava/lang/String;
    if-nez p1, :cond_2

    .line 287
    sget-object p1, Lcom/motorola/blur/util/SimpleEncryptUtil;->KEY:[B

    .line 290
    :cond_2
    :try_start_0
    invoke-static {p0}, Lcom/motorola/blur/util/SimpleEncryptUtil;->fromHexString(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6, p2, p1}, Lcom/motorola/blur/util/SimpleEncryptUtil;->runCipher([BII[B)[B

    move-result-object v1

    .line 291
    .local v1, "bytes":[B
    if-eqz v1, :cond_4

    .line 292
    array-length v0, v1

    .line 294
    .local v0, "byteLen":I
    const/4 v4, 0x0

    .local v4, "stop":I
    :goto_1
    if-ge v4, v0, :cond_3

    .line 295
    aget-byte v5, v1, v4

    if-nez v5, :cond_5

    .line 299
    :cond_3
    new-instance v3, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v3, v1, v5, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "result":Ljava/lang/String;
    .local v3, "result":Ljava/lang/String;
    move-object v2, v3

    .line 306
    .end local v0    # "byteLen":I
    .end local v1    # "bytes":[B
    .end local v3    # "result":Ljava/lang/String;
    .end local v4    # "stop":I
    .restart local v2    # "result":Ljava/lang/String;
    :cond_4
    :goto_2
    if-eqz v2, :cond_0

    move-object p0, v2

    goto :goto_0

    .line 294
    .restart local v0    # "byteLen":I
    .restart local v1    # "bytes":[B
    .restart local v4    # "stop":I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 301
    .end local v0    # "byteLen":I
    .end local v1    # "bytes":[B
    .end local v4    # "stop":I
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public static decryptBasedOnPolicy(ILjava/lang/String;[B)Ljava/lang/String;
    .locals 1
    .param p0, "policy"    # I
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "key"    # [B

    .prologue
    .line 317
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/motorola/blur/util/SimpleEncryptUtil;->decryptBasedOnPolicy(ILjava/lang/String;[BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static decryptBasedOnPolicy(ILjava/lang/String;[BZ)Ljava/lang/String;
    .locals 2
    .param p0, "policy"    # I
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "quick"    # Z

    .prologue
    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    .line 323
    invoke-static {p1, p2}, Lcom/motorola/blur/util/SimpleEncryptUtil;->quickDecryptBasedOnPolicy(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    .line 325
    :cond_0
    if-eqz v0, :cond_1

    .line 336
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 328
    .restart local v0    # "result":Ljava/lang/String;
    :cond_1
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move-object v0, p1

    .line 336
    goto :goto_0

    .line 332
    :pswitch_1
    invoke-static {p1, p2, p0}, Lcom/motorola/blur/util/SimpleEncryptUtil;->decrypt(Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static final decryptBasedOnPolicy(Landroid/content/Context;JLjava/lang/String;[B)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "providerId"    # J
    .param p3, "input"    # Ljava/lang/String;
    .param p4, "key"    # [B

    .prologue
    .line 365
    invoke-static {p3, p4}, Lcom/motorola/blur/util/SimpleEncryptUtil;->quickDecryptBasedOnPolicy(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 367
    sget-object v2, Lcom/motorola/blur/provider/DeviceSetup$Providers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 368
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {p0, v1}, Lcom/motorola/blur/util/SimpleEncryptUtil;->getProviderPolicy(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v2

    invoke-static {v2, p3, p4}, Lcom/motorola/blur/util/SimpleEncryptUtil;->decryptBasedOnPolicy(ILjava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    .line 370
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    return-object v0
.end method

.method public static decryptBasedOnPolicy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "input"    # Ljava/lang/String;
    .param p3, "key"    # [B

    .prologue
    .line 351
    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Providers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 352
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/motorola/blur/util/SimpleEncryptUtil;->getProviderPolicy(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v1

    invoke-static {v1, p2, p3}, Lcom/motorola/blur/util/SimpleEncryptUtil;->decryptBasedOnPolicy(ILjava/lang/String;[B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final encrypt(Ljava/lang/String;[BI)Ljava/lang/String;
    .locals 5
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "key"    # [B
    .param p2, "policy"    # I

    .prologue
    .line 111
    const/4 v1, 0x0

    .line 112
    .local v1, "result":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 113
    sget-object p1, Lcom/motorola/blur/util/SimpleEncryptUtil;->KEY:[B

    .line 115
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4, p2, p1}, Lcom/motorola/blur/util/SimpleEncryptUtil;->runCipher([BII[B)[B

    move-result-object v0

    .line 116
    .local v0, "bytes":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-static {v2, p2}, Lcom/motorola/blur/util/SimpleEncryptUtil;->formatPolicy(Ljava/lang/StringBuilder;I)V

    .line 118
    if-eqz v0, :cond_1

    .line 119
    invoke-static {v0}, Lcom/motorola/blur/util/SimpleEncryptUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    return-object v1
.end method

.method public static followPwdPolicy(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "policy"    # I
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 416
    if-nez p1, :cond_0

    .line 428
    :goto_0
    return-object v0

    .line 419
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 428
    invoke-static {p1}, Lcom/motorola/blur/util/SimpleEncryptUtil;->storeClear(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 423
    :pswitch_0
    invoke-static {p1, v0, p0}, Lcom/motorola/blur/util/SimpleEncryptUtil;->encrypt(Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 425
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/blur/util/SimpleEncryptUtil;->makeDummyPassword(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 419
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static formatPolicy(Ljava/lang/StringBuilder;I)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "policy"    # I

    .prologue
    .line 233
    const/16 v0, 0x7b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 234
    return-void
.end method

.method private static fromHexString(Ljava/lang/String;)[B
    .locals 7
    .param p0, "hexString"    # Ljava/lang/String;

    .prologue
    .line 254
    if-eqz p0, :cond_0

    .line 255
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    div-int/lit8 v4, v6, 0x2

    .line 258
    .local v4, "len":I
    new-array v1, v4, [B

    .line 259
    .local v1, "bytes":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 260
    mul-int/lit8 v5, v3, 0x2

    .line 261
    .local v5, "startOfByte":I
    add-int/lit8 v2, v5, 0x2

    .line 262
    .local v2, "endOfByte":I
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "byteToParse":Ljava/lang/String;
    const/16 v6, 0x10

    invoke-static {v0, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v1, v3

    .line 259
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 267
    .end local v0    # "byteToParse":Ljava/lang/String;
    .end local v1    # "bytes":[B
    .end local v2    # "endOfByte":I
    .end local v3    # "i":I
    .end local v4    # "len":I
    .end local v5    # "startOfByte":I
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method private static final getProviderPolicy(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 374
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "pwd_storage_policy"

    aput-object v0, v2, v8

    .line 377
    .local v2, "PWD_POLICY_PROJECTION":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 378
    .local v6, "c":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 379
    .local v7, "policy":I
    if-eqz v6, :cond_1

    .line 380
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 383
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 385
    :cond_1
    return v7
.end method

.method private static makeDummyPassword(I)Ljava/lang/String;
    .locals 3
    .param p0, "length"    # I

    .prologue
    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 395
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/motorola/blur/util/SimpleEncryptUtil;->formatPolicy(Ljava/lang/StringBuilder;I)V

    .line 396
    add-int/lit8 v0, p0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 397
    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 396
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 399
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static final quickDecryptBasedOnPolicy(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 7
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "key"    # [B

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 47
    const/4 v2, -0x1

    .line 48
    .local v2, "policy":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 49
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7b

    if-ne v3, v4, :cond_1

    .line 51
    const/16 v3, 0x7d

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 52
    .local v1, "endIndex":I
    if-le v1, v5, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 53
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 54
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 59
    .end local v1    # "endIndex":I
    :cond_0
    :goto_0
    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    .line 61
    invoke-static {v2, p0, p1, v6}, Lcom/motorola/blur/util/SimpleEncryptUtil;->decryptBasedOnPolicy(ILjava/lang/String;[BZ)Ljava/lang/String;

    move-result-object v3

    .line 65
    :goto_1
    return-object v3

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Blur-SEU"

    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "Not formatted for speed"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 65
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static runCipher([BII[B)[B
    .locals 16
    .param p0, "input"    # [B
    .param p1, "mode"    # I
    .param p2, "policy"    # I
    .param p3, "key"    # [B

    .prologue
    .line 131
    const/4 v2, 0x0

    .line 132
    .local v2, "bytes":[B
    const/4 v3, 0x0

    .line 134
    .local v3, "cipher":Ljavax/crypto/Cipher;
    :try_start_0
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v12, "AES"

    move-object/from16 v0, p3

    invoke-direct {v6, v0, v12}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 135
    .local v6, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    const/4 v10, 0x0

    .line 136
    .local v10, "spec":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v1, 0x0

    .line 137
    .local v1, "bits":[B
    move-object/from16 v0, p0

    array-length v7, v0

    .line 138
    .local v7, "len":I
    const/4 v9, 0x0

    .line 139
    .local v9, "outputLen":I
    packed-switch p2, :pswitch_data_0

    .line 188
    const-string v12, "AES"

    invoke-static {v12}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 190
    move/from16 v0, p1

    invoke-virtual {v3, v0, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 192
    invoke-virtual {v3, v7}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v9

    .line 194
    new-array v2, v9, [B

    .line 198
    :goto_0
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v12, v7, v2}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    .line 202
    if-eqz v1, :cond_3

    .line 203
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    const/16 v12, 0x10

    if-ge v5, v12, :cond_3

    .line 204
    add-int v12, v9, v5

    aget-byte v13, v1, v5

    aput-byte v13, v2, v12

    .line 203
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 144
    .end local v5    # "i":I
    :pswitch_0
    const-string v12, "AES/CBC/PKCS5PADDING"

    invoke-static {v12}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 149
    const/4 v12, 0x1

    move/from16 v0, p1

    if-ne v0, v12, :cond_0

    .line 150
    const/16 v12, 0x10

    invoke-static {v12}, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->getRandomBits(I)[B

    move-result-object v1

    .line 151
    new-instance v10, Ljavax/crypto/spec/IvParameterSpec;

    .end local v10    # "spec":Ljavax/crypto/spec/IvParameterSpec;
    invoke-direct {v10, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 164
    .restart local v10    # "spec":Ljavax/crypto/spec/IvParameterSpec;
    :goto_2
    move/from16 v0, p1

    invoke-virtual {v3, v0, v6, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 167
    const/4 v12, 0x1

    move/from16 v0, p1

    if-ne v0, v12, :cond_2

    .line 170
    invoke-virtual {v3, v7}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v9

    .line 171
    add-int/lit8 v8, v9, 0x10

    .line 172
    .local v8, "newLen":I
    new-array v2, v8, [B

    .line 173
    goto :goto_0

    .line 155
    .end local v8    # "newLen":I
    :cond_0
    add-int/lit8 v11, v7, -0x10

    .line 156
    .local v11, "start":I
    const/4 v12, 0x1

    if-ge v11, v12, :cond_1

    .line 157
    const-string v12, "Blur-SEU"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "Corrupted cipher data!"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 223
    .end local v1    # "bits":[B
    .end local v6    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v7    # "len":I
    .end local v9    # "outputLen":I
    .end local v10    # "spec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v11    # "start":I
    .end local p0    # "input":[B
    :goto_3
    return-object p0

    .line 160
    .restart local v1    # "bits":[B
    .restart local v6    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v7    # "len":I
    .restart local v9    # "outputLen":I
    .restart local v10    # "spec":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v11    # "start":I
    .restart local p0    # "input":[B
    :cond_1
    new-instance v10, Ljavax/crypto/spec/IvParameterSpec;

    .end local v10    # "spec":Ljavax/crypto/spec/IvParameterSpec;
    const/16 v12, 0x10

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v11, v12}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    .restart local v10    # "spec":Ljavax/crypto/spec/IvParameterSpec;
    goto :goto_2

    .line 177
    .end local v11    # "start":I
    :cond_2
    add-int/lit8 v7, v7, -0x10

    .line 178
    invoke-virtual {v3, v7}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v9

    .line 179
    new-array v2, v9, [B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_6

    .line 183
    goto :goto_0

    .line 208
    .end local v1    # "bits":[B
    .end local v6    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v7    # "len":I
    .end local v9    # "outputLen":I
    .end local v10    # "spec":Ljavax/crypto/spec/IvParameterSpec;
    :catch_0
    move-exception v4

    .line 209
    .local v4, "exception":Ljava/security/InvalidKeyException;
    const-string v12, "Blur-SEU"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v4, v13}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    .end local v4    # "exception":Ljava/security/InvalidKeyException;
    :cond_3
    :goto_4
    move-object/from16 p0, v2

    .line 223
    goto :goto_3

    .line 210
    :catch_1
    move-exception v4

    .line 211
    .local v4, "exception":Ljavax/crypto/IllegalBlockSizeException;
    const-string v12, "Blur-SEU"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v4, v13}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    goto :goto_4

    .line 212
    .end local v4    # "exception":Ljavax/crypto/IllegalBlockSizeException;
    :catch_2
    move-exception v4

    .line 213
    .local v4, "exception":Ljavax/crypto/BadPaddingException;
    const-string v12, "Blur-SEU"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v4, v13}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    goto :goto_4

    .line 214
    .end local v4    # "exception":Ljavax/crypto/BadPaddingException;
    :catch_3
    move-exception v4

    .line 215
    .local v4, "exception":Ljava/security/InvalidAlgorithmParameterException;
    const-string v12, "Blur-SEU"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v4, v13}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    goto :goto_4

    .line 216
    .end local v4    # "exception":Ljava/security/InvalidAlgorithmParameterException;
    :catch_4
    move-exception v4

    .line 217
    .local v4, "exception":Ljava/security/NoSuchAlgorithmException;
    const-string v12, "Blur-SEU"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v4, v13}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    goto :goto_4

    .line 218
    .end local v4    # "exception":Ljava/security/NoSuchAlgorithmException;
    :catch_5
    move-exception v4

    .line 219
    .local v4, "exception":Ljavax/crypto/NoSuchPaddingException;
    const-string v12, "Blur-SEU"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v4, v13}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    goto :goto_4

    .line 220
    .end local v4    # "exception":Ljavax/crypto/NoSuchPaddingException;
    :catch_6
    move-exception v4

    .line 221
    .local v4, "exception":Ljavax/crypto/ShortBufferException;
    const-string v12, "Blur-SEU"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v4, v13}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    goto :goto_4

    .line 139
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static storeClear(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/motorola/blur/util/SimpleEncryptUtil;->formatPolicy(Ljava/lang/StringBuilder;I)V

    .line 405
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static toHexString([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    const/16 v5, 0x10

    .line 241
    array-length v1, p0

    .line 242
    .local v1, "len":I
    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, v1, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 244
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 245
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    if-ge v3, v5, :cond_0

    .line 246
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :cond_0
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    invoke-static {v3, v4, v5}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
