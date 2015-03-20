.class public Lcom/motorola/blur/util/mime/Address;
.super Ljava/lang/Object;
.source "Address.java"


# static fields
.field private static final POOL_SIZE:I = 0x6

.field private static final sAddressPool:[Lcom/motorola/blur/util/mime/Address;


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/motorola/blur/util/mime/Address;

    sput-object v0, Lcom/motorola/blur/util/mime/Address;->sAddressPool:[Lcom/motorola/blur/util/mime/Address;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/motorola/blur/util/mime/Address;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/motorola/blur/util/mime/Address;->mName:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/motorola/blur/util/mime/Address;->mAddress:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static obtain(Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/blur/util/mime/Address;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 134
    sget-object v3, Lcom/motorola/blur/util/mime/Address;->sAddressPool:[Lcom/motorola/blur/util/mime/Address;

    monitor-enter v3

    .line 135
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_1

    .line 136
    :try_start_0
    sget-object v2, Lcom/motorola/blur/util/mime/Address;->sAddressPool:[Lcom/motorola/blur/util/mime/Address;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 137
    sget-object v2, Lcom/motorola/blur/util/mime/Address;->sAddressPool:[Lcom/motorola/blur/util/mime/Address;

    aget-object v1, v2, v0

    .line 138
    .local v1, "ret":Lcom/motorola/blur/util/mime/Address;
    sget-object v2, Lcom/motorola/blur/util/mime/Address;->sAddressPool:[Lcom/motorola/blur/util/mime/Address;

    const/4 v4, 0x0

    aput-object v4, v2, v0

    .line 139
    invoke-direct {v1, p0, p1}, Lcom/motorola/blur/util/mime/Address;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    monitor-exit v3

    .line 144
    .end local v1    # "ret":Lcom/motorola/blur/util/mime/Address;
    :goto_1
    return-object v1

    .line 135
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    new-instance v1, Lcom/motorola/blur/util/mime/Address;

    invoke-direct {v1, p0, p1}, Lcom/motorola/blur/util/mime/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 143
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static recycle(Lcom/motorola/blur/util/mime/Address;)V
    .locals 0
    .param p0, "addr"    # Lcom/motorola/blur/util/mime/Address;

    .prologue
    .line 122
    if-eqz p0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/motorola/blur/util/mime/Address;->recycle()V

    .line 125
    :cond_0
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/motorola/blur/util/mime/Address;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()Ljava/lang/String;
    .locals 3

    .prologue
    .line 68
    iget-object v1, p0, Lcom/motorola/blur/util/mime/Address;->mName:Ljava/lang/String;

    invoke-static {v1}, Lcom/motorola/blur/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/motorola/blur/util/mime/Address;->mAddress:Ljava/lang/String;

    .line 77
    :goto_0
    return-object v1

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/motorola/blur/util/mime/Address;->mName:Ljava/lang/String;

    invoke-static {v1}, Lcom/motorola/blur/util/mime/MimeCodec;->encodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/blur/util/mime/MimeCodec;->quoteWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v1, p0, Lcom/motorola/blur/util/mime/Address;->mAddress:Ljava/lang/String;

    invoke-static {v1}, Lcom/motorola/blur/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/blur/util/mime/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/motorola/blur/util/mime/Address;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getUnencodedString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 81
    iget-object v1, p0, Lcom/motorola/blur/util/mime/Address;->mName:Ljava/lang/String;

    invoke-static {v1}, Lcom/motorola/blur/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/motorola/blur/util/mime/Address;->mAddress:Ljava/lang/String;

    .line 90
    :goto_0
    return-object v1

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/blur/util/mime/Address;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/motorola/blur/util/mime/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 86
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/motorola/blur/util/mime/Address;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/motorola/blur/util/mime/MimeCodec;->quoteWord(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v1, p0, Lcom/motorola/blur/util/mime/Address;->mAddress:Ljava/lang/String;

    invoke-static {v1}, Lcom/motorola/blur/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/blur/util/mime/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public recycle()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 103
    iput-object v1, p0, Lcom/motorola/blur/util/mime/Address;->mName:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lcom/motorola/blur/util/mime/Address;->mAddress:Ljava/lang/String;

    .line 105
    sget-object v2, Lcom/motorola/blur/util/mime/Address;->sAddressPool:[Lcom/motorola/blur/util/mime/Address;

    monitor-enter v2

    .line 106
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 107
    :try_start_0
    sget-object v1, Lcom/motorola/blur/util/mime/Address;->sAddressPool:[Lcom/motorola/blur/util/mime/Address;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 108
    sget-object v1, Lcom/motorola/blur/util/mime/Address;->sAddressPool:[Lcom/motorola/blur/util/mime/Address;

    aput-object p0, v1, v0

    .line 109
    monitor-exit v2

    .line 113
    :goto_1
    return-void

    .line 106
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_1
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/motorola/blur/util/mime/Address;->mAddress:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/motorola/blur/util/mime/Address;->mName:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/motorola/blur/util/mime/Address;->getUnencodedString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
