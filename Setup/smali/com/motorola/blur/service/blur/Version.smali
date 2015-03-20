.class public final Lcom/motorola/blur/service/blur/Version;
.super Ljava/lang/Object;
.source "Version.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/Version$sec_t;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/motorola/blur/service/blur/Version;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMULATOR_CARRIER:Ljava/lang/String; = "Blurdev"

.field private static final REG_EXP:Ljava/lang/String; = "\\."


# instance fields
.field private mBuild:I

.field private mCarrier:Ljava/lang/String;

.field private mGeography:Ljava/lang/String;

.field private mHardware:Ljava/lang/String;

.field private mLanguage:Ljava/lang/String;

.field private mMajor:I

.field private mMinor:I

.field private mTotal:Ljava/lang/String;

.field private mflavour:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/motorola/blur/service/blur/Version;
    .locals 10
    .param p0, "strver"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 61
    const/4 v1, 0x0

    .line 63
    .local v1, "parts":[Ljava/lang/String;
    :try_start_0
    const-string v3, "\\."

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 67
    array-length v3, v1

    invoke-static {}, Lcom/motorola/blur/service/blur/Version$sec_t;->values()[Lcom/motorola/blur/service/blur/Version$sec_t;

    move-result-object v4

    array-length v4, v4

    if-eq v3, v4, :cond_0

    .line 68
    new-instance v3, Ljava/io/IOException;

    const-string v4, "not enough parts in version %s: %s"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p0, v5, v7

    array-length v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 72
    .end local v0    # "e":Ljava/util/regex/PatternSyntaxException;
    :cond_0
    new-instance v2, Lcom/motorola/blur/service/blur/Version;

    invoke-direct {v2}, Lcom/motorola/blur/service/blur/Version;-><init>()V

    .line 73
    .local v2, "v":Lcom/motorola/blur/service/blur/Version;
    sget-object v3, Lcom/motorola/blur/service/blur/Version$sec_t;->flavour:Lcom/motorola/blur/service/blur/Version$sec_t;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v3, v1, v3

    iput-object v3, v2, Lcom/motorola/blur/service/blur/Version;->mflavour:Ljava/lang/String;

    .line 75
    :try_start_1
    sget-object v3, Lcom/motorola/blur/service/blur/Version$sec_t;->major:Lcom/motorola/blur/service/blur/Version$sec_t;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/motorola/blur/service/blur/Version;->mMajor:I

    .line 76
    sget-object v3, Lcom/motorola/blur/service/blur/Version$sec_t;->minor:Lcom/motorola/blur/service/blur/Version$sec_t;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/motorola/blur/service/blur/Version;->mMinor:I

    .line 77
    sget-object v3, Lcom/motorola/blur/service/blur/Version$sec_t;->build:Lcom/motorola/blur/service/blur/Version$sec_t;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/motorola/blur/service/blur/Version;->mBuild:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    sget-object v3, Lcom/motorola/blur/service/blur/Version$sec_t;->hardware:Lcom/motorola/blur/service/blur/Version$sec_t;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v3, v1, v3

    iput-object v3, v2, Lcom/motorola/blur/service/blur/Version;->mHardware:Ljava/lang/String;

    .line 85
    sget-object v3, Lcom/motorola/blur/service/blur/Version$sec_t;->carrier:Lcom/motorola/blur/service/blur/Version$sec_t;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v3, v1, v3

    iput-object v3, v2, Lcom/motorola/blur/service/blur/Version;->mCarrier:Ljava/lang/String;

    .line 86
    sget-object v3, Lcom/motorola/blur/service/blur/Version$sec_t;->language:Lcom/motorola/blur/service/blur/Version$sec_t;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v3, v1, v3

    iput-object v3, v2, Lcom/motorola/blur/service/blur/Version;->mLanguage:Ljava/lang/String;

    .line 87
    sget-object v3, Lcom/motorola/blur/service/blur/Version$sec_t;->geography:Lcom/motorola/blur/service/blur/Version$sec_t;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v3, v1, v3

    iput-object v3, v2, Lcom/motorola/blur/service/blur/Version;->mGeography:Ljava/lang/String;

    .line 88
    iput-object p0, v2, Lcom/motorola/blur/service/blur/Version;->mTotal:Ljava/lang/String;

    .line 90
    return-object v2

    .line 78
    :catch_1
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/io/IOException;

    const-string v4, "failed to parse %s %s %s major minor build number is wrong"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    sget-object v6, Lcom/motorola/blur/service/blur/Version$sec_t;->major:Lcom/motorola/blur/service/blur/Version$sec_t;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v6, v1, v6

    aput-object v6, v5, v7

    sget-object v6, Lcom/motorola/blur/service/blur/Version$sec_t;->minor:Lcom/motorola/blur/service/blur/Version$sec_t;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v6, v1, v6

    aput-object v6, v5, v8

    sget-object v6, Lcom/motorola/blur/service/blur/Version$sec_t;->build:Lcom/motorola/blur/service/blur/Version$sec_t;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v6, v1, v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public compareTo(Lcom/motorola/blur/service/blur/Version;)I
    .locals 3
    .param p1, "v"    # Lcom/motorola/blur/service/blur/Version;

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/Version;->equalsFamily(Lcom/motorola/blur/service/blur/Version;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 201
    iget v1, p0, Lcom/motorola/blur/service/blur/Version;->mMajor:I

    iget v2, p1, Lcom/motorola/blur/service/blur/Version;->mMajor:I

    sub-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 202
    iget v1, p0, Lcom/motorola/blur/service/blur/Version;->mMajor:I

    iget v2, p1, Lcom/motorola/blur/service/blur/Version;->mMajor:I

    sub-int v0, v1, v2

    .line 224
    :cond_0
    :goto_0
    return v0

    .line 204
    :cond_1
    iget v1, p0, Lcom/motorola/blur/service/blur/Version;->mMinor:I

    iget v2, p1, Lcom/motorola/blur/service/blur/Version;->mMinor:I

    sub-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 205
    iget v1, p0, Lcom/motorola/blur/service/blur/Version;->mMinor:I

    iget v2, p1, Lcom/motorola/blur/service/blur/Version;->mMinor:I

    sub-int v0, v1, v2

    goto :goto_0

    .line 207
    :cond_2
    iget v1, p0, Lcom/motorola/blur/service/blur/Version;->mBuild:I

    iget v2, p1, Lcom/motorola/blur/service/blur/Version;->mBuild:I

    sub-int/2addr v1, v2

    if-eqz v1, :cond_3

    .line 208
    iget v1, p0, Lcom/motorola/blur/service/blur/Version;->mBuild:I

    iget v2, p1, Lcom/motorola/blur/service/blur/Version;->mBuild:I

    sub-int v0, v1, v2

    goto :goto_0

    .line 210
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 212
    :cond_4
    iget-object v1, p0, Lcom/motorola/blur/service/blur/Version;->mHardware:Ljava/lang/String;

    iget-object v2, p1, Lcom/motorola/blur/service/blur/Version;->mHardware:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 213
    .local v0, "t":I
    if-nez v0, :cond_0

    .line 216
    iget-object v1, p0, Lcom/motorola/blur/service/blur/Version;->mCarrier:Ljava/lang/String;

    iget-object v2, p1, Lcom/motorola/blur/service/blur/Version;->mCarrier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 217
    if-nez v0, :cond_0

    .line 220
    iget-object v1, p0, Lcom/motorola/blur/service/blur/Version;->mLanguage:Ljava/lang/String;

    iget-object v2, p1, Lcom/motorola/blur/service/blur/Version;->mLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 221
    if-nez v0, :cond_0

    .line 224
    iget-object v1, p0, Lcom/motorola/blur/service/blur/Version;->mGeography:Ljava/lang/String;

    iget-object v2, p1, Lcom/motorola/blur/service/blur/Version;->mGeography:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 25
    check-cast p1, Lcom/motorola/blur/service/blur/Version;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/Version;->compareTo(Lcom/motorola/blur/service/blur/Version;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "v"    # Ljava/lang/Object;

    .prologue
    .line 150
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/motorola/blur/service/blur/Version;

    if-nez v0, :cond_1

    .line 151
    :cond_0
    const/4 v0, 0x0

    .line 153
    .end local p1    # "v":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "v":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/blur/Version;->mTotal:Ljava/lang/String;

    check-cast p1, Lcom/motorola/blur/service/blur/Version;

    .end local p1    # "v":Ljava/lang/Object;
    iget-object v1, p1, Lcom/motorola/blur/service/blur/Version;->mTotal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public equalsFamily(Lcom/motorola/blur/service/blur/Version;)Z
    .locals 3
    .param p1, "v"    # Lcom/motorola/blur/service/blur/Version;

    .prologue
    const/4 v0, 0x0

    .line 157
    iget-object v1, p0, Lcom/motorola/blur/service/blur/Version;->mHardware:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/Version;->getHardware()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return v0

    .line 160
    :cond_1
    iget-object v1, p0, Lcom/motorola/blur/service/blur/Version;->mCarrier:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/Version;->getCarrier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/motorola/blur/service/blur/Version;->mLanguage:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/Version;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/motorola/blur/service/blur/Version;->mGeography:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/Version;->getGeography()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getBuildNumber()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/motorola/blur/service/blur/Version;->mBuild:I

    return v0
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/motorola/blur/service/blur/Version;->mCarrier:Ljava/lang/String;

    return-object v0
.end method

.method public getDefault()Ljava/lang/String;
    .locals 4

    .prologue
    .line 178
    const-string v0, "Blur_Version.0.0.0.%s.%s.%s.%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/motorola/blur/service/blur/Version;->mHardware:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/motorola/blur/service/blur/Version;->mCarrier:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/motorola/blur/service/blur/Version;->mLanguage:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/motorola/blur/service/blur/Version;->mGeography:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlavour()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/motorola/blur/service/blur/Version;->mflavour:Ljava/lang/String;

    return-object v0
.end method

.method public getGeography()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/motorola/blur/service/blur/Version;->mGeography:Ljava/lang/String;

    return-object v0
.end method

.method public getHardware()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/motorola/blur/service/blur/Version;->mHardware:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/motorola/blur/service/blur/Version;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getMajorNumber()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/motorola/blur/service/blur/Version;->mMajor:I

    return v0
.end method

.method public getMinorNumber()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/motorola/blur/service/blur/Version;->mMinor:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 99
    const-string v0, "%s.%s.%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/motorola/blur/service/blur/Version;->mMajor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/motorola/blur/service/blur/Version;->mMinor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/motorola/blur/service/blur/Version;->mBuild:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/motorola/blur/service/blur/Version;->mTotal:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDefault()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 183
    iget v1, p0, Lcom/motorola/blur/service/blur/Version;->mMajor:I

    if-eqz v1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v0

    .line 186
    :cond_1
    iget v1, p0, Lcom/motorola/blur/service/blur/Version;->mMinor:I

    if-nez v1, :cond_0

    .line 189
    iget v1, p0, Lcom/motorola/blur/service/blur/Version;->mBuild:I

    if-nez v1, :cond_0

    .line 192
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public lessThan(Lcom/motorola/blur/service/blur/Version;)Z
    .locals 3
    .param p1, "v"    # Lcom/motorola/blur/service/blur/Version;

    .prologue
    const/4 v0, 0x1

    .line 135
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/Version;->getMajorNumber()I

    move-result v1

    iget v2, p0, Lcom/motorola/blur/service/blur/Version;->mMajor:I

    if-le v1, v2, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v0

    .line 138
    :cond_1
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/Version;->getMajorNumber()I

    move-result v1

    iget v2, p0, Lcom/motorola/blur/service/blur/Version;->mMajor:I

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/Version;->getMinorNumber()I

    move-result v1

    iget v2, p0, Lcom/motorola/blur/service/blur/Version;->mMinor:I

    if-gt v1, v2, :cond_0

    .line 141
    :cond_2
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/Version;->getMajorNumber()I

    move-result v1

    iget v2, p0, Lcom/motorola/blur/service/blur/Version;->mMajor:I

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/Version;->getMinorNumber()I

    move-result v1

    iget v2, p0, Lcom/motorola/blur/service/blur/Version;->mMinor:I

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/Version;->getBuildNumber()I

    move-result v1

    iget v2, p0, Lcom/motorola/blur/service/blur/Version;->mBuild:I

    if-gt v1, v2, :cond_0

    .line 145
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/motorola/blur/service/blur/Version;->mTotal:Ljava/lang/String;

    return-object v0
.end method
