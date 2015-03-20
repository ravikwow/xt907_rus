.class public Lcom/motorola/blur/service/blur/SRPUtil;
.super Ljava/lang/Object;
.source "SRPUtil.java"


# static fields
.field public static final HASH_LEN:I = 0x14

.field public static final RNG:Ljava/util/Random;

.field private static final TABLE:[C

.field private static sha1:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    sput-object v1, Lcom/motorola/blur/service/blur/SRPUtil;->RNG:Ljava/util/Random;

    .line 54
    const-string v1, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz./"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/motorola/blur/service/blur/SRPUtil;->TABLE:[C

    .line 59
    :try_start_0
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    sput-object v1, Lcom/motorola/blur/service/blur/SRPUtil;->sha1:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    return-void

    .line 60
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_0
    move-exception v0

    .line 61
    .restart local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    const-string v1, "SRPUtil"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final asciiToHex(C)I
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 214
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x66

    if-gt p0, v0, :cond_0

    .line 215
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    .line 223
    :goto_0
    return v0

    .line 217
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    .line 218
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 220
    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_2

    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    .line 221
    add-int/lit8 v0, p0, -0x30

    goto :goto_0

    .line 223
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fromb64(Ljava/lang/String;)[B
    .locals 10
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 137
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 138
    .local v5, "len":I
    if-nez v5, :cond_0

    .line 139
    new-instance v7, Ljava/lang/NumberFormatException;

    const-string v8, "Empty Base64 string"

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 142
    :cond_0
    add-int/lit8 v7, v5, 0x1

    new-array v0, v7, [B

    .line 146
    .local v0, "a":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 147
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 149
    .local v1, "c":C
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    :try_start_0
    sget-object v7, Lcom/motorola/blur/service/blur/SRPUtil;->TABLE:[C

    aget-char v7, v7, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v1, v7, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 152
    :catch_0
    move-exception v2

    .line 153
    .local v2, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/NumberFormatException;

    const-string v8, "Illegal Base64 character"

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 155
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    int-to-byte v7, v4

    aput-byte v7, v0, v3

    .line 146
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 158
    .end local v1    # "c":C
    .end local v4    # "j":I
    :cond_2
    add-int/lit8 v3, v5, -0x1

    .line 159
    move v4, v5

    .line 162
    .restart local v4    # "j":I
    :cond_3
    :try_start_1
    aget-byte v7, v0, v3

    aput-byte v7, v0, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 163
    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_5

    .line 199
    :cond_4
    :goto_2
    :try_start_2
    aget-byte v7, v0, v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v7, :cond_6

    .line 200
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 166
    :cond_5
    :try_start_3
    aget-byte v7, v0, v4

    aget-byte v8, v0, v3

    and-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x6

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v0, v4

    .line 167
    add-int/lit8 v4, v4, -0x1

    .line 168
    aget-byte v7, v0, v3

    and-int/lit8 v7, v7, 0x3c

    ushr-int/lit8 v7, v7, 0x2

    int-to-byte v7, v7

    aput-byte v7, v0, v4

    .line 169
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_4

    .line 172
    aget-byte v7, v0, v4

    aget-byte v8, v0, v3

    and-int/lit8 v8, v8, 0xf

    shl-int/lit8 v8, v8, 0x4

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v0, v4

    .line 173
    add-int/lit8 v4, v4, -0x1

    .line 174
    aget-byte v7, v0, v3

    and-int/lit8 v7, v7, 0x30

    ushr-int/lit8 v7, v7, 0x4

    int-to-byte v7, v7

    aput-byte v7, v0, v4

    .line 175
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_4

    .line 178
    aget-byte v7, v0, v4

    aget-byte v8, v0, v3

    shl-int/lit8 v8, v8, 0x2

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v0, v4

    .line 186
    add-int/lit8 v7, v4, -0x1

    const/4 v8, 0x0

    aput-byte v8, v0, v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 187
    add-int/lit8 v4, v4, -0x1

    .line 191
    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_3

    goto :goto_2

    .line 202
    :catch_1
    move-exception v2

    .line 203
    .restart local v2    # "e":Ljava/lang/Exception;
    const/4 v7, 0x1

    new-array v6, v7, [B

    .line 210
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v6

    .line 206
    :cond_6
    sub-int v7, v5, v4

    add-int/lit8 v7, v7, 0x1

    new-array v6, v7, [B

    .line 207
    .local v6, "result":[B
    sub-int v7, v5, v4

    add-int/lit8 v7, v7, 0x1

    invoke-static {v0, v4, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 195
    .end local v6    # "result":[B
    :catch_2
    move-exception v7

    goto :goto_2
.end method

.method public static fromhex(Ljava/lang/String;)[B
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 246
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "len":I
    add-int/lit8 v3, v1, 0x1

    div-int/lit8 v2, v3, 0x2

    .line 247
    .local v2, "pos":I
    new-array v0, v2, [B

    .line 249
    .local v0, "buffer":[B
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-lez v1, :cond_0

    .line 250
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/motorola/blur/service/blur/SRPUtil;->asciiToHex(C)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/motorola/blur/service/blur/SRPUtil;->asciiToHex(C)I

    move-result v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 249
    add-int/lit8 v1, v1, -0x2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 252
    :cond_0
    if-lez v1, :cond_1

    .line 253
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/motorola/blur/service/blur/SRPUtil;->asciiToHex(C)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    .line 255
    :cond_1
    return-object v0
.end method

.method private static final hexToAscii(I)C
    .locals 1
    .param p0, "h"    # I

    .prologue
    .line 227
    const/16 v0, 0xa

    if-lt p0, v0, :cond_0

    const/16 v0, 0xf

    if-gt p0, v0, :cond_0

    .line 228
    add-int/lit8 v0, p0, -0xa

    add-int/lit8 v0, v0, 0x41

    int-to-char v0, v0

    .line 233
    :goto_0
    return v0

    .line 230
    :cond_0
    if-ltz p0, :cond_1

    const/16 v0, 0x9

    if-gt p0, v0, :cond_1

    .line 231
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    goto :goto_0

    .line 233
    :cond_1
    const/16 v0, 0x30

    goto :goto_0
.end method

.method public static matches([B[B)Z
    .locals 4
    .param p0, "b1"    # [B
    .param p1, "b2"    # [B

    .prologue
    const/4 v1, 0x0

    .line 314
    array-length v0, p0

    .line 315
    .local v0, "i":I
    array-length v2, p1

    if-ne v0, v2, :cond_1

    .line 316
    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 317
    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    if-eq v2, v3, :cond_0

    .line 323
    :cond_1
    :goto_0
    return v1

    .line 321
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static newDigest()Ljava/security/MessageDigest;
    .locals 5

    .prologue
    .line 66
    const/4 v2, 0x0

    .line 68
    .local v2, "md":Ljava/security/MessageDigest;
    :try_start_0
    sget-object v3, Lcom/motorola/blur/service/blur/SRPUtil;->sha1:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/security/MessageDigest;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-object v2

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    const-string v3, "SRPUtil"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v1, v4}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static sessionKeyHash([B)[B
    .locals 9
    .param p0, "number"    # [B

    .prologue
    const/16 v8, 0x14

    .line 284
    const/4 v5, 0x0

    .local v5, "offset":I
    :goto_0
    array-length v6, p0

    if-ge v5, v6, :cond_0

    aget-byte v6, p0, v5

    if-nez v6, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 288
    :cond_0
    const/16 v6, 0x28

    new-array v3, v6, [B

    .line 291
    .local v3, "key":[B
    array-length v6, p0

    sub-int/2addr v6, v5

    div-int/lit8 v4, v6, 0x2

    .line 292
    .local v4, "klen":I
    new-array v0, v4, [B

    .line 294
    .local v0, "hbuf":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_1

    .line 295
    array-length v6, p0

    mul-int/lit8 v7, v2, 0x2

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    aget-byte v6, p0, v6

    aput-byte v6, v0, v2

    .line 294
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 297
    :cond_1
    invoke-static {}, Lcom/motorola/blur/service/blur/SRPUtil;->newDigest()Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 298
    .local v1, "hout":[B
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v8, :cond_2

    .line 299
    mul-int/lit8 v6, v2, 0x2

    aget-byte v7, v1, v2

    aput-byte v7, v3, v6

    .line 298
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 302
    :cond_2
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v4, :cond_3

    .line 303
    array-length v6, p0

    mul-int/lit8 v7, v2, 0x2

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x2

    aget-byte v6, p0, v6

    aput-byte v6, v0, v2

    .line 302
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 305
    :cond_3
    invoke-static {}, Lcom/motorola/blur/service/blur/SRPUtil;->newDigest()Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 306
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v8, :cond_4

    .line 307
    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-byte v7, v1, v2

    aput-byte v7, v3, v6

    .line 306
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 310
    :cond_4
    return-object v3
.end method

.method public static tob64([B)Ljava/lang/String;
    .locals 12
    .param p0, "buffer"    # [B

    .prologue
    const/4 v10, 0x0

    .line 80
    const/4 v6, 0x0

    .line 81
    .local v6, "notleading":Z
    array-length v5, p0

    .local v5, "len":I
    rem-int/lit8 v7, v5, 0x3

    .line 82
    .local v7, "pos":I
    const/4 v0, 0x0

    .local v0, "b0":B
    const/4 v1, 0x0

    .local v1, "b1":B
    const/4 v2, 0x0

    .line 83
    .local v2, "b2":B
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v9, "sb":Ljava/lang/StringBuilder;
    packed-switch v7, :pswitch_data_0

    move v8, v7

    .line 97
    .end local v7    # "pos":I
    .local v8, "pos":I
    :goto_0
    and-int/lit16 v10, v0, 0xfc

    ushr-int/lit8 v3, v10, 0x2

    .line 98
    .local v3, "c":I
    if-nez v6, :cond_0

    if-eqz v3, :cond_1

    .line 99
    :cond_0
    sget-object v10, Lcom/motorola/blur/service/blur/SRPUtil;->TABLE:[C

    aget-char v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    const/4 v6, 0x1

    .line 102
    :cond_1
    and-int/lit8 v10, v0, 0x3

    shl-int/lit8 v10, v10, 0x4

    and-int/lit16 v11, v1, 0xf0

    ushr-int/lit8 v11, v11, 0x4

    or-int v3, v10, v11

    .line 103
    if-nez v6, :cond_2

    if-eqz v3, :cond_3

    .line 104
    :cond_2
    sget-object v10, Lcom/motorola/blur/service/blur/SRPUtil;->TABLE:[C

    aget-char v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    const/4 v6, 0x1

    .line 107
    :cond_3
    and-int/lit8 v10, v1, 0xf

    shl-int/lit8 v10, v10, 0x2

    and-int/lit16 v11, v2, 0xc0

    ushr-int/lit8 v11, v11, 0x6

    or-int v3, v10, v11

    .line 108
    if-nez v6, :cond_4

    if-eqz v3, :cond_5

    .line 109
    :cond_4
    sget-object v10, Lcom/motorola/blur/service/blur/SRPUtil;->TABLE:[C

    aget-char v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    const/4 v6, 0x1

    .line 112
    :cond_5
    and-int/lit8 v3, v2, 0x3f

    .line 113
    if-nez v6, :cond_6

    if-eqz v3, :cond_7

    .line 114
    :cond_6
    sget-object v10, Lcom/motorola/blur/service/blur/SRPUtil;->TABLE:[C

    aget-char v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    const/4 v6, 0x1

    .line 117
    :cond_7
    if-lt v8, v5, :cond_8

    move v7, v8

    .line 130
    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    :goto_1
    if-eqz v6, :cond_9

    .line 131
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 133
    :goto_2
    return-object v10

    .line 87
    .end local v3    # "c":I
    :pswitch_0
    aget-byte v2, p0, v10

    move v8, v7

    .line 88
    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    goto :goto_0

    .line 90
    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    :pswitch_1
    aget-byte v1, p0, v10

    .line 91
    const/4 v10, 0x1

    aget-byte v2, p0, v10

    move v8, v7

    .line 92
    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    goto :goto_0

    .line 121
    .restart local v3    # "c":I
    :cond_8
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    :try_start_0
    aget-byte v0, p0, v8
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    :try_start_1
    aget-byte v1, p0, v7
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 123
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    :try_start_2
    aget-byte v2, p0, v8
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    move v8, v7

    .line 126
    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    goto :goto_0

    .line 124
    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    :catch_0
    move-exception v4

    .line 125
    .local v4, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_3
    goto :goto_1

    .line 133
    .end local v4    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_9
    const-string v10, "0"

    goto :goto_2

    .line 124
    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    :catch_1
    move-exception v4

    move v7, v8

    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    goto :goto_3

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static tohex([B)Ljava/lang/String;
    .locals 4
    .param p0, "buffer"    # [B

    .prologue
    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 240
    aget-byte v2, p0, v0

    ushr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2}, Lcom/motorola/blur/service/blur/SRPUtil;->hexToAscii(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3}, Lcom/motorola/blur/service/blur/SRPUtil;->hexToAscii(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static trim([B)[B
    .locals 5
    .param p0, "in"    # [B

    .prologue
    const/4 v4, 0x0

    .line 262
    array-length v3, p0

    if-eqz v3, :cond_0

    aget-byte v3, p0, v4

    if-eqz v3, :cond_1

    :cond_0
    move-object v2, p0

    .line 273
    :goto_0
    return-object v2

    .line 266
    :cond_1
    array-length v1, p0

    .line 267
    .local v1, "len":I
    const/4 v0, 0x1

    .line 268
    .local v0, "i":I
    :goto_1
    aget-byte v3, p0, v0

    if-nez v3, :cond_2

    if-ge v0, v1, :cond_2

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 271
    :cond_2
    sub-int v3, v1, v0

    new-array v2, v3, [B

    .line 272
    .local v2, "ret":[B
    sub-int v3, v1, v0

    invoke-static {p0, v0, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static userHash(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3
    .param p0, "user"    # Ljava/lang/String;
    .param p1, "pass"    # Ljava/lang/String;

    .prologue
    .line 277
    invoke-static {}, Lcom/motorola/blur/service/blur/SRPUtil;->newDigest()Ljava/security/MessageDigest;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static xor([B[BI)[B
    .locals 4
    .param p0, "b1"    # [B
    .param p1, "b2"    # [B
    .param p2, "length"    # I

    .prologue
    .line 327
    new-array v1, p2, [B

    .line 328
    .local v1, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 329
    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 328
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 331
    :cond_0
    return-object v1
.end method
