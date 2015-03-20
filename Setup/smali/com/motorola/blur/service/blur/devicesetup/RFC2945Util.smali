.class public Lcom/motorola/blur/service/blur/devicesetup/RFC2945Util;
.super Ljava/lang/Object;
.source "RFC2945Util.java"


# static fields
.field public static final BLUR_G:Ljava/lang/String; = "2"

.field public static final BLUR_N:Ljava/lang/String; = "Ewl2hcjiutMd3Fu2lgFnUXWSc67TVyy2vwYCKoS9MLsrdJVT9RgWTCuEqWJrfB6uE3LsE9GkOlaZabS7M29sj5TnzUqOLJMjiwEzArfiLr9WbMRANlF68N5AVLcPWvNx6Zjl3m5Scp0BzJBz9TkgfhzKJZ.WtP3Mv/67I/0wmRZ"

.field private static final GENERATOR:Ljava/math/BigInteger;

.field private static final MODULUS:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 21
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "Ewl2hcjiutMd3Fu2lgFnUXWSc67TVyy2vwYCKoS9MLsrdJVT9RgWTCuEqWJrfB6uE3LsE9GkOlaZabS7M29sj5TnzUqOLJMjiwEzArfiLr9WbMRANlF68N5AVLcPWvNx6Zjl3m5Scp0BzJBz9TkgfhzKJZ.WtP3Mv/67I/0wmRZ"

    invoke-static {v1}, Lcom/motorola/blur/service/blur/SRPUtil;->fromb64(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v0, Lcom/motorola/blur/service/blur/devicesetup/RFC2945Util;->MODULUS:Ljava/math/BigInteger;

    .line 22
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "2"

    invoke-static {v1}, Lcom/motorola/blur/service/blur/SRPUtil;->fromb64(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v0, Lcom/motorola/blur/service/blur/devicesetup/RFC2945Util;->GENERATOR:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clientGeneratePrivateA()Ljava/math/BigInteger;
    .locals 4

    .prologue
    .line 26
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 29
    .local v1, "one":Ljava/math/BigInteger;
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    const/16 v2, 0x40

    sget-object v3, Lcom/motorola/blur/service/blur/SRPUtil;->RNG:Ljava/util/Random;

    invoke-direct {v0, v2, v3}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 30
    .local v0, "a":Ljava/math/BigInteger;
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-lez v2, :cond_0

    .line 31
    return-object v0
.end method

.method public static clientGeneratePrivateK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;)[B
    .locals 10
    .param p0, "login"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "salt"    # Ljava/lang/String;
    .param p3, "publicB"    # Ljava/lang/String;
    .param p4, "privateA"    # Ljava/math/BigInteger;

    .prologue
    .line 43
    invoke-static {}, Lcom/motorola/blur/service/blur/SRPUtil;->newDigest()Ljava/security/MessageDigest;

    move-result-object v1

    .line 44
    .local v1, "ctxt":Ljava/security/MessageDigest;
    invoke-static {p2}, Lcom/motorola/blur/service/blur/SRPUtil;->fromb64(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 45
    invoke-static {p0, p1}, Lcom/motorola/blur/service/blur/SRPUtil;->userHash(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 46
    new-instance v7, Ljava/math/BigInteger;

    const/4 v8, 0x1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 49
    .local v7, "x":Ljava/math/BigInteger;
    sget-object v8, Lcom/motorola/blur/service/blur/devicesetup/RFC2945Util;->GENERATOR:Ljava/math/BigInteger;

    sget-object v9, Lcom/motorola/blur/service/blur/devicesetup/RFC2945Util;->MODULUS:Ljava/math/BigInteger;

    invoke-virtual {v8, v7, v9}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 54
    .local v6, "v":Ljava/math/BigInteger;
    invoke-static {}, Lcom/motorola/blur/service/blur/SRPUtil;->newDigest()Ljava/security/MessageDigest;

    move-result-object v8

    invoke-static {p3}, Lcom/motorola/blur/service/blur/SRPUtil;->fromb64(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 55
    .local v5, "uhash":[B
    const/4 v8, 0x4

    new-array v2, v8, [B

    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-byte v9, v5, v9

    aput-byte v9, v2, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    aget-byte v9, v5, v9

    aput-byte v9, v2, v8

    const/4 v8, 0x2

    const/4 v9, 0x2

    aget-byte v9, v5, v9

    aput-byte v9, v2, v8

    const/4 v8, 0x3

    const/4 v9, 0x3

    aget-byte v9, v5, v9

    aput-byte v9, v2, v8

    .line 60
    .local v2, "fourbytes":[B
    new-instance v8, Ljava/math/BigInteger;

    const/4 v9, 0x1

    invoke-direct {v8, v9, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 61
    .local v4, "sum":Ljava/math/BigInteger;
    new-instance v0, Ljava/math/BigInteger;

    const/4 v8, 0x1

    invoke-static {p3}, Lcom/motorola/blur/service/blur/SRPUtil;->fromb64(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v0, v8, v9}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 62
    .local v0, "base":Ljava/math/BigInteger;
    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-gez v8, :cond_0

    .line 63
    sget-object v8, Lcom/motorola/blur/service/blur/devicesetup/RFC2945Util;->MODULUS:Ljava/math/BigInteger;

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 65
    :cond_0
    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 66
    invoke-virtual {v4, p4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    sget-object v9, Lcom/motorola/blur/service/blur/devicesetup/RFC2945Util;->MODULUS:Ljava/math/BigInteger;

    invoke-virtual {v0, v8, v9}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 69
    .local v3, "s":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v8

    invoke-static {v8}, Lcom/motorola/blur/service/blur/SRPUtil;->trim([B)[B

    move-result-object v8

    invoke-static {v8}, Lcom/motorola/blur/service/blur/SRPUtil;->sessionKeyHash([B)[B

    move-result-object v8

    return-object v8
.end method

.method public static clientGeneratePublicA(Ljava/math/BigInteger;)[B
    .locals 3
    .param p0, "privateA"    # Ljava/math/BigInteger;

    .prologue
    .line 36
    sget-object v1, Lcom/motorola/blur/service/blur/devicesetup/RFC2945Util;->GENERATOR:Ljava/math/BigInteger;

    sget-object v2, Lcom/motorola/blur/service/blur/devicesetup/RFC2945Util;->MODULUS:Ljava/math/BigInteger;

    invoke-virtual {v1, p0, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 37
    .local v0, "a":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/blur/service/blur/SRPUtil;->trim([B)[B

    move-result-object v1

    return-object v1
.end method

.method public static clientGeneratePublicM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)[B
    .locals 5
    .param p0, "login"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "salt"    # Ljava/lang/String;
    .param p3, "publicB"    # Ljava/lang/String;
    .param p4, "publicA"    # [B
    .param p5, "privateK"    # [B

    .prologue
    .line 75
    invoke-static {}, Lcom/motorola/blur/service/blur/SRPUtil;->newDigest()Ljava/security/MessageDigest;

    move-result-object v0

    .line 76
    .local v0, "clientHashM":Ljava/security/MessageDigest;
    invoke-static {}, Lcom/motorola/blur/service/blur/SRPUtil;->newDigest()Ljava/security/MessageDigest;

    move-result-object v2

    const-string v3, "Ewl2hcjiutMd3Fu2lgFnUXWSc67TVyy2vwYCKoS9MLsrdJVT9RgWTCuEqWJrfB6uE3LsE9GkOlaZabS7M29sj5TnzUqOLJMjiwEzArfiLr9WbMRANlF68N5AVLcPWvNx6Zjl3m5Scp0BzJBz9TkgfhzKJZ.WtP3Mv/67I/0wmRZ"

    invoke-static {v3}, Lcom/motorola/blur/service/blur/SRPUtil;->fromb64(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    invoke-static {}, Lcom/motorola/blur/service/blur/SRPUtil;->newDigest()Ljava/security/MessageDigest;

    move-result-object v3

    const-string v4, "2"

    invoke-static {v4}, Lcom/motorola/blur/service/blur/SRPUtil;->fromb64(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    const/16 v4, 0x14

    invoke-static {v2, v3, v4}, Lcom/motorola/blur/service/blur/SRPUtil;->xor([B[BI)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 78
    invoke-static {}, Lcom/motorola/blur/service/blur/SRPUtil;->newDigest()Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 79
    invoke-static {p2}, Lcom/motorola/blur/service/blur/SRPUtil;->fromb64(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 80
    invoke-virtual {v0, p4}, Ljava/security/MessageDigest;->update([B)V

    .line 81
    invoke-static {p3}, Lcom/motorola/blur/service/blur/SRPUtil;->fromb64(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 82
    invoke-virtual {v0, p5}, Ljava/security/MessageDigest;->update([B)V

    .line 83
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 84
    .local v1, "clientM":[B
    return-object v1
.end method

.method public static clientGenerateTestM([B[B[B)[B
    .locals 2
    .param p0, "publicA"    # [B
    .param p1, "clientM"    # [B
    .param p2, "privateK"    # [B

    .prologue
    .line 90
    invoke-static {}, Lcom/motorola/blur/service/blur/SRPUtil;->newDigest()Ljava/security/MessageDigest;

    move-result-object v0

    .line 91
    .local v0, "clientHashM":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 92
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 93
    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 94
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    return-object v1
.end method

.method public static serverGeneratePrivateB()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 109
    invoke-static {}, Lcom/motorola/blur/service/blur/devicesetup/RFC2945Util;->clientGeneratePrivateA()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static serverGeneratePrivateK(Ljava/lang/String;[B[BLjava/math/BigInteger;)[B
    .locals 11
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "publicB"    # [B
    .param p2, "publicA"    # [B
    .param p3, "privateB"    # Ljava/math/BigInteger;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 117
    invoke-static {p1}, Lcom/motorola/blur/service/blur/SRPUtil;->trim([B)[B

    move-result-object v0

    .line 118
    .local v0, "bArr":[B
    invoke-static {}, Lcom/motorola/blur/service/blur/SRPUtil;->newDigest()Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    .line 119
    .local v4, "uhash":[B
    const/4 v6, 0x4

    new-array v1, v6, [B

    aget-byte v6, v4, v7

    aput-byte v6, v1, v7

    aget-byte v6, v4, v8

    aput-byte v6, v1, v8

    aget-byte v6, v4, v9

    aput-byte v6, v1, v9

    aget-byte v6, v4, v10

    aput-byte v6, v1, v10

    .line 124
    .local v1, "fourbytes":[B
    new-instance v5, Ljava/math/BigInteger;

    invoke-static {p0}, Lcom/motorola/blur/service/blur/SRPUtil;->fromb64(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v5, v8, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 125
    .local v5, "v":Ljava/math/BigInteger;
    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v8, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v8, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sget-object v8, Lcom/motorola/blur/service/blur/devicesetup/RFC2945Util;->MODULUS:Ljava/math/BigInteger;

    invoke-virtual {v5, v7, v8}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    sget-object v7, Lcom/motorola/blur/service/blur/devicesetup/RFC2945Util;->MODULUS:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 127
    .local v3, "s":Ljava/math/BigInteger;
    sget-object v6, Lcom/motorola/blur/service/blur/devicesetup/RFC2945Util;->MODULUS:Ljava/math/BigInteger;

    invoke-virtual {v3, p3, v6}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    invoke-static {v6}, Lcom/motorola/blur/service/blur/SRPUtil;->trim([B)[B

    move-result-object v6

    invoke-static {v6}, Lcom/motorola/blur/service/blur/SRPUtil;->sessionKeyHash([B)[B

    move-result-object v2

    .line 128
    .local v2, "key":[B
    return-object v2
.end method

.method public static serverGeneratePublicB(Ljava/lang/String;Ljava/math/BigInteger;)[B
    .locals 4
    .param p0, "verifier"    # Ljava/lang/String;
    .param p1, "privateB"    # Ljava/math/BigInteger;

    .prologue
    .line 99
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-static {p0}, Lcom/motorola/blur/service/blur/SRPUtil;->fromb64(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 100
    .local v1, "v":Ljava/math/BigInteger;
    sget-object v2, Lcom/motorola/blur/service/blur/devicesetup/RFC2945Util;->GENERATOR:Ljava/math/BigInteger;

    sget-object v3, Lcom/motorola/blur/service/blur/devicesetup/RFC2945Util;->MODULUS:Ljava/math/BigInteger;

    invoke-virtual {v2, p1, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 101
    .local v0, "b":Ljava/math/BigInteger;
    sget-object v2, Lcom/motorola/blur/service/blur/devicesetup/RFC2945Util;->MODULUS:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 102
    sget-object v2, Lcom/motorola/blur/service/blur/devicesetup/RFC2945Util;->MODULUS:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 104
    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/blur/service/blur/SRPUtil;->trim([B)[B

    move-result-object v2

    return-object v2
.end method

.method public static serverGeneratePublicM([B[B[B)[B
    .locals 2
    .param p0, "publicA"    # [B
    .param p1, "clientM"    # [B
    .param p2, "privateK"    # [B

    .prologue
    .line 150
    invoke-static {}, Lcom/motorola/blur/service/blur/SRPUtil;->newDigest()Ljava/security/MessageDigest;

    move-result-object v0

    .line 151
    .local v0, "serverHashM":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 152
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 153
    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 154
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    return-object v1
.end method

.method public static serverVerifyClientM([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B)Z
    .locals 5
    .param p0, "clientM"    # [B
    .param p1, "login"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "salt"    # Ljava/lang/String;
    .param p4, "publicB"    # [B
    .param p5, "publicA"    # [B
    .param p6, "privateK"    # [B

    .prologue
    .line 134
    invoke-static {}, Lcom/motorola/blur/service/blur/SRPUtil;->newDigest()Ljava/security/MessageDigest;

    move-result-object v1

    .line 135
    .local v1, "ckhash":Ljava/security/MessageDigest;
    invoke-static {}, Lcom/motorola/blur/service/blur/SRPUtil;->newDigest()Ljava/security/MessageDigest;

    move-result-object v2

    const-string v3, "Ewl2hcjiutMd3Fu2lgFnUXWSc67TVyy2vwYCKoS9MLsrdJVT9RgWTCuEqWJrfB6uE3LsE9GkOlaZabS7M29sj5TnzUqOLJMjiwEzArfiLr9WbMRANlF68N5AVLcPWvNx6Zjl3m5Scp0BzJBz9TkgfhzKJZ.WtP3Mv/67I/0wmRZ"

    invoke-static {v3}, Lcom/motorola/blur/service/blur/SRPUtil;->fromb64(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    invoke-static {}, Lcom/motorola/blur/service/blur/SRPUtil;->newDigest()Ljava/security/MessageDigest;

    move-result-object v3

    const-string v4, "2"

    invoke-static {v4}, Lcom/motorola/blur/service/blur/SRPUtil;->fromb64(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    const/16 v4, 0x14

    invoke-static {v2, v3, v4}, Lcom/motorola/blur/service/blur/SRPUtil;->xor([B[BI)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 137
    invoke-static {}, Lcom/motorola/blur/service/blur/SRPUtil;->newDigest()Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 138
    invoke-static {p3}, Lcom/motorola/blur/service/blur/SRPUtil;->fromb64(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 140
    invoke-static {p4}, Lcom/motorola/blur/service/blur/SRPUtil;->trim([B)[B

    move-result-object v0

    .line 141
    .local v0, "bArr":[B
    invoke-virtual {v1, p5}, Ljava/security/MessageDigest;->update([B)V

    .line 142
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 143
    invoke-virtual {v1, p6}, Ljava/security/MessageDigest;->update([B)V

    .line 145
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {p0, v2}, Lcom/motorola/blur/service/blur/SRPUtil;->matches([B[B)Z

    move-result v2

    return v2
.end method
