.class public Lcom/motorola/blur/util/mime/AddressList;
.super Ljava/lang/Object;
.source "AddressList.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/motorola/blur/util/mime/Address;",
        ">;"
    }
.end annotation


# static fields
.field private static final POOL_SIZE:I = 0x3

.field private static final sAddressListPool:[Lcom/motorola/blur/util/mime/AddressList;


# instance fields
.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/blur/util/mime/Address;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/motorola/blur/util/mime/AddressList;

    sput-object v0, Lcom/motorola/blur/util/mime/AddressList;->sAddressListPool:[Lcom/motorola/blur/util/mime/AddressList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/blur/util/mime/AddressList;->mList:Ljava/util/ArrayList;

    .line 35
    return-void
.end method

.method public constructor <init>([Lcom/motorola/blur/util/mime/Address;)V
    .locals 1
    .param p1, "addrs"    # [Lcom/motorola/blur/util/mime/Address;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/blur/util/mime/AddressList;->mList:Ljava/util/ArrayList;

    .line 43
    iget-object v0, p0, Lcom/motorola/blur/util/mime/AddressList;->mList:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method public static obtain()Lcom/motorola/blur/util/mime/AddressList;
    .locals 5

    .prologue
    .line 367
    sget-object v3, Lcom/motorola/blur/util/mime/AddressList;->sAddressListPool:[Lcom/motorola/blur/util/mime/AddressList;

    monitor-enter v3

    .line 368
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 369
    :try_start_0
    sget-object v2, Lcom/motorola/blur/util/mime/AddressList;->sAddressListPool:[Lcom/motorola/blur/util/mime/AddressList;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 370
    sget-object v2, Lcom/motorola/blur/util/mime/AddressList;->sAddressListPool:[Lcom/motorola/blur/util/mime/AddressList;

    aget-object v1, v2, v0

    .line 371
    .local v1, "ret":Lcom/motorola/blur/util/mime/AddressList;
    sget-object v2, Lcom/motorola/blur/util/mime/AddressList;->sAddressListPool:[Lcom/motorola/blur/util/mime/AddressList;

    const/4 v4, 0x0

    aput-object v4, v2, v0

    .line 372
    monitor-exit v3

    .line 376
    .end local v1    # "ret":Lcom/motorola/blur/util/mime/AddressList;
    :goto_1
    return-object v1

    .line 368
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    new-instance v1, Lcom/motorola/blur/util/mime/AddressList;

    invoke-direct {v1}, Lcom/motorola/blur/util/mime/AddressList;-><init>()V

    goto :goto_1

    .line 375
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static obtain([Lcom/motorola/blur/util/mime/Address;)Lcom/motorola/blur/util/mime/AddressList;
    .locals 2
    .param p0, "addrs"    # [Lcom/motorola/blur/util/mime/Address;

    .prologue
    .line 386
    invoke-static {}, Lcom/motorola/blur/util/mime/AddressList;->obtain()Lcom/motorola/blur/util/mime/AddressList;

    move-result-object v0

    .line 387
    .local v0, "ret":Lcom/motorola/blur/util/mime/AddressList;
    iget-object v1, v0, Lcom/motorola/blur/util/mime/AddressList;->mList:Ljava/util/ArrayList;

    invoke-static {v1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 388
    return-object v0
.end method

.method public static parse(Ljava/lang/String;Z)Lcom/motorola/blur/util/mime/AddressList;
    .locals 1
    .param p0, "addrList"    # Ljava/lang/String;
    .param p1, "suppressException"    # Z

    .prologue
    .line 57
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/motorola/blur/util/mime/AddressList;->parse(Ljava/lang/String;ZI)Lcom/motorola/blur/util/mime/AddressList;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;ZI)Lcom/motorola/blur/util/mime/AddressList;
    .locals 12
    .param p0, "addrList"    # Ljava/lang/String;
    .param p1, "suppressException"    # Z
    .param p2, "maxsize"    # I

    .prologue
    const/16 v11, 0x3e

    const/4 v10, 0x0

    .line 74
    invoke-static {}, Lcom/motorola/blur/util/mime/AddressList;->obtain()Lcom/motorola/blur/util/mime/AddressList;

    move-result-object v6

    .line 75
    .local v6, "list":Lcom/motorola/blur/util/mime/AddressList;
    if-nez p0, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-object v6

    .line 79
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 80
    .local v5, "len":I
    const/4 v8, 0x0

    .line 81
    .local v8, "start":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v5, :cond_14

    .line 82
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sparse-switch v9, :sswitch_data_0

    .line 205
    :cond_2
    :goto_2
    if-lez p2, :cond_3

    invoke-virtual {v6}, Lcom/motorola/blur/util/mime/AddressList;->size()I

    move-result v9

    if-ge v9, p2, :cond_0

    .line 81
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 85
    :sswitch_0
    add-int/lit8 v4, v4, 0x1

    :goto_3
    if-ge v4, v5, :cond_4

    .line 86
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sparse-switch v9, :sswitch_data_1

    .line 85
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 90
    :sswitch_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 96
    :cond_4
    :sswitch_2
    if-lt v4, v5, :cond_2

    .line 97
    if-eqz p1, :cond_6

    .line 98
    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "addr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_5

    .line 100
    invoke-static {v10, v0}, Lcom/motorola/blur/util/mime/Address;->obtain(Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/blur/util/mime/Address;

    move-result-object v1

    .line 101
    .local v1, "address":Lcom/motorola/blur/util/mime/Address;
    invoke-virtual {v6, v1}, Lcom/motorola/blur/util/mime/AddressList;->add(Lcom/motorola/blur/util/mime/Address;)Lcom/motorola/blur/util/mime/AddressList;

    .line 103
    .end local v1    # "address":Lcom/motorola/blur/util/mime/Address;
    :cond_5
    add-int/lit8 v8, v4, 0x1

    .line 104
    goto :goto_2

    .line 105
    .end local v0    # "addr":Ljava/lang/String;
    :cond_6
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Missing \'\"\'"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 112
    :sswitch_3
    const/4 v7, 0x1

    .line 113
    .local v7, "parenthesesLevel":I
    add-int/lit8 v4, v4, 0x1

    :goto_5
    if-ge v4, v5, :cond_7

    if-lez v7, :cond_7

    .line 114
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sparse-switch v9, :sswitch_data_2

    .line 113
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 116
    :sswitch_4
    add-int/lit8 v4, v4, 0x1

    .line 117
    goto :goto_6

    .line 119
    :sswitch_5
    add-int/lit8 v7, v7, 0x1

    .line 120
    goto :goto_6

    .line 122
    :sswitch_6
    add-int/lit8 v7, v7, -0x1

    goto :goto_6

    .line 127
    :cond_7
    if-lez v7, :cond_2

    if-nez p1, :cond_2

    .line 128
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Missing \')\'"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 133
    .end local v7    # "parenthesesLevel":I
    :sswitch_7
    move v3, v4

    .line 134
    .local v3, "end":I
    add-int/lit8 v4, v4, 0x1

    :goto_7
    if-ge v4, v5, :cond_8

    .line 135
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v11, :cond_9

    .line 140
    :cond_8
    if-lt v4, v5, :cond_a

    .line 141
    if-nez p1, :cond_a

    .line 142
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Missing \'>\'"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 134
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 146
    :cond_a
    invoke-virtual {p0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "displayName":Ljava/lang/String;
    invoke-static {v2}, Lcom/motorola/blur/util/mime/MimeCodec;->unquoteWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/motorola/blur/util/mime/MimeCodec;->decodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 148
    add-int/lit8 v9, v3, 0x1

    invoke-virtual {p0, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 149
    .restart local v0    # "addr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_b

    .line 150
    invoke-static {v2, v0}, Lcom/motorola/blur/util/mime/Address;->obtain(Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/blur/util/mime/Address;

    move-result-object v1

    .line 151
    .restart local v1    # "address":Lcom/motorola/blur/util/mime/Address;
    invoke-virtual {v6, v1}, Lcom/motorola/blur/util/mime/AddressList;->add(Lcom/motorola/blur/util/mime/Address;)Lcom/motorola/blur/util/mime/AddressList;

    .line 153
    .end local v1    # "address":Lcom/motorola/blur/util/mime/Address;
    :cond_b
    add-int/lit8 v8, v4, 0x1

    .line 154
    goto/16 :goto_2

    .line 157
    .end local v0    # "addr":Ljava/lang/String;
    .end local v2    # "displayName":Ljava/lang/String;
    .end local v3    # "end":I
    :sswitch_8
    move v3, v4

    .line 158
    .restart local v3    # "end":I
    add-int/lit8 v4, v4, 0x1

    :goto_8
    if-ge v4, v5, :cond_c

    .line 159
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v11, :cond_d

    .line 164
    :cond_c
    if-lt v4, v5, :cond_e

    if-nez p1, :cond_e

    .line 165
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Missing \'>\'"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 158
    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 168
    :cond_e
    const/4 v9, 0x0

    invoke-virtual {p0, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 169
    .restart local v2    # "displayName":Ljava/lang/String;
    invoke-static {v2}, Lcom/motorola/blur/util/mime/MimeCodec;->unquoteWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/motorola/blur/util/mime/MimeCodec;->decodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 170
    add-int/lit8 v9, v3, 0x1

    invoke-virtual {p0, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 171
    .restart local v0    # "addr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_f

    .line 172
    invoke-static {v2, v0}, Lcom/motorola/blur/util/mime/Address;->obtain(Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/blur/util/mime/Address;

    move-result-object v1

    .line 173
    .restart local v1    # "address":Lcom/motorola/blur/util/mime/Address;
    invoke-virtual {v6, v1}, Lcom/motorola/blur/util/mime/AddressList;->add(Lcom/motorola/blur/util/mime/Address;)Lcom/motorola/blur/util/mime/AddressList;

    .line 175
    .end local v1    # "address":Lcom/motorola/blur/util/mime/Address;
    :cond_f
    add-int/lit8 v8, v4, 0x1

    .line 176
    goto/16 :goto_2

    .line 179
    .end local v0    # "addr":Ljava/lang/String;
    .end local v2    # "displayName":Ljava/lang/String;
    .end local v3    # "end":I
    :sswitch_9
    if-nez p1, :cond_10

    .line 180
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Missing \'(\'"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 183
    :cond_10
    :sswitch_a
    if-nez p1, :cond_11

    .line 184
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Missing \'<\'"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 187
    :cond_11
    :sswitch_b
    if-nez p1, :cond_12

    .line 188
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Missing \':\'"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 191
    :cond_12
    :sswitch_c
    invoke-virtual {p0, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 192
    .restart local v0    # "addr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_13

    .line 193
    invoke-static {v10, v0}, Lcom/motorola/blur/util/mime/Address;->obtain(Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/blur/util/mime/Address;

    move-result-object v1

    .line 194
    .restart local v1    # "address":Lcom/motorola/blur/util/mime/Address;
    invoke-virtual {v6, v1}, Lcom/motorola/blur/util/mime/AddressList;->add(Lcom/motorola/blur/util/mime/Address;)Lcom/motorola/blur/util/mime/AddressList;

    .line 196
    .end local v1    # "address":Lcom/motorola/blur/util/mime/Address;
    :cond_13
    add-int/lit8 v8, v4, 0x1

    .line 197
    goto/16 :goto_2

    .line 210
    .end local v0    # "addr":Ljava/lang/String;
    :cond_14
    if-ge v8, v5, :cond_0

    .line 211
    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 212
    .restart local v0    # "addr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 213
    invoke-static {v10, v0}, Lcom/motorola/blur/util/mime/Address;->obtain(Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/blur/util/mime/Address;

    move-result-object v1

    .line 214
    .restart local v1    # "address":Lcom/motorola/blur/util/mime/Address;
    invoke-virtual {v6, v1}, Lcom/motorola/blur/util/mime/AddressList;->add(Lcom/motorola/blur/util/mime/Address;)Lcom/motorola/blur/util/mime/AddressList;

    goto/16 :goto_0

    .line 82
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x28 -> :sswitch_3
        0x29 -> :sswitch_9
        0x2c -> :sswitch_c
        0x3a -> :sswitch_8
        0x3b -> :sswitch_b
        0x3c -> :sswitch_7
        0x3e -> :sswitch_a
    .end sparse-switch

    .line 86
    :sswitch_data_1
    .sparse-switch
        0x22 -> :sswitch_2
        0x5c -> :sswitch_1
    .end sparse-switch

    .line 114
    :sswitch_data_2
    .sparse-switch
        0x28 -> :sswitch_5
        0x29 -> :sswitch_6
        0x5c -> :sswitch_4
    .end sparse-switch
.end method

.method public static parseAddress(Ljava/lang/String;Z)Lcom/motorola/blur/util/mime/Address;
    .locals 4
    .param p0, "addrList"    # Ljava/lang/String;
    .param p1, "suppressException"    # Z

    .prologue
    const/4 v3, 0x0

    .line 232
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 233
    const/4 v2, 0x1

    invoke-static {p0, p1, v2}, Lcom/motorola/blur/util/mime/AddressList;->parse(Ljava/lang/String;ZI)Lcom/motorola/blur/util/mime/AddressList;

    move-result-object v0

    .line 234
    .local v0, "addrs":Lcom/motorola/blur/util/mime/AddressList;
    invoke-virtual {v0}, Lcom/motorola/blur/util/mime/AddressList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 235
    invoke-virtual {v0, v3}, Lcom/motorola/blur/util/mime/AddressList;->addressAt(I)Lcom/motorola/blur/util/mime/Address;

    move-result-object v1

    .line 236
    .local v1, "ret":Lcom/motorola/blur/util/mime/Address;
    invoke-virtual {v0, v3}, Lcom/motorola/blur/util/mime/AddressList;->recycle(Z)V

    .line 240
    .end local v0    # "addrs":Lcom/motorola/blur/util/mime/AddressList;
    .end local v1    # "ret":Lcom/motorola/blur/util/mime/Address;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/motorola/blur/util/mime/Address;)Lcom/motorola/blur/util/mime/AddressList;
    .locals 1
    .param p1, "address"    # Lcom/motorola/blur/util/mime/Address;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/motorola/blur/util/mime/AddressList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    return-object p0
.end method

.method public addAll(Lcom/motorola/blur/util/mime/AddressList;)Lcom/motorola/blur/util/mime/AddressList;
    .locals 2
    .param p1, "list"    # Lcom/motorola/blur/util/mime/AddressList;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/motorola/blur/util/mime/AddressList;->mList:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/motorola/blur/util/mime/AddressList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 278
    return-object p0
.end method

.method public addAll([Ljava/lang/String;Z)Lcom/motorola/blur/util/mime/AddressList;
    .locals 5
    .param p1, "addrList"    # [Ljava/lang/String;
    .param p2, "suppressException"    # Z

    .prologue
    .line 287
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 288
    .local v0, "addr":Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/motorola/blur/util/mime/AddressList;->parse(Ljava/lang/String;Z)Lcom/motorola/blur/util/mime/AddressList;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/motorola/blur/util/mime/AddressList;->addAll(Lcom/motorola/blur/util/mime/AddressList;)Lcom/motorola/blur/util/mime/AddressList;

    .line 287
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 290
    .end local v0    # "addr":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public addressAt(I)Lcom/motorola/blur/util/mime/Address;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 258
    iget-object v0, p0, Lcom/motorola/blur/util/mime/AddressList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/util/mime/Address;

    return-object v0
.end method

.method public getAddresses()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/motorola/blur/util/mime/AddressList;->size()I

    move-result v2

    .line 319
    .local v2, "size":I
    new-array v0, v2, [Ljava/lang/String;

    .line 320
    .local v0, "addresses":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 321
    invoke-virtual {p0, v1}, Lcom/motorola/blur/util/mime/AddressList;->addressAt(I)Lcom/motorola/blur/util/mime/Address;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/blur/util/mime/Address;->getUnencodedString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 323
    :cond_0
    return-object v0
.end method

.method public getUnencodedString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 299
    iget-object v4, p0, Lcom/motorola/blur/util/mime/AddressList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 300
    .local v3, "size":I
    if-nez v3, :cond_0

    .line 301
    const-string v4, ""

    .line 309
    :goto_0
    return-object v4

    .line 304
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/motorola/blur/util/mime/AddressList;->mList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/blur/util/mime/Address;

    invoke-virtual {v4}, Lcom/motorola/blur/util/mime/Address;->getUnencodedString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 306
    iget-object v4, p0, Lcom/motorola/blur/util/mime/AddressList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/util/mime/Address;

    .line 307
    .local v0, "address":Lcom/motorola/blur/util/mime/Address;
    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/motorola/blur/util/mime/Address;->getUnencodedString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 309
    .end local v0    # "address":Lcom/motorola/blur/util/mime/Address;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/motorola/blur/util/mime/Address;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    iget-object v0, p0, Lcom/motorola/blur/util/mime/AddressList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public recycle(Z)V
    .locals 4
    .param p1, "bRecycleAddresses"    # Z

    .prologue
    .line 346
    if-eqz p1, :cond_0

    .line 347
    iget-object v2, p0, Lcom/motorola/blur/util/mime/AddressList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 348
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 349
    iget-object v2, p0, Lcom/motorola/blur/util/mime/AddressList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/blur/util/mime/Address;

    invoke-virtual {v2}, Lcom/motorola/blur/util/mime/Address;->recycle()V

    .line 348
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 352
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/motorola/blur/util/mime/AddressList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 353
    sget-object v3, Lcom/motorola/blur/util/mime/AddressList;->sAddressListPool:[Lcom/motorola/blur/util/mime/AddressList;

    monitor-enter v3

    .line 354
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 355
    :try_start_0
    sget-object v2, Lcom/motorola/blur/util/mime/AddressList;->sAddressListPool:[Lcom/motorola/blur/util/mime/AddressList;

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    .line 356
    sget-object v2, Lcom/motorola/blur/util/mime/AddressList;->sAddressListPool:[Lcom/motorola/blur/util/mime/AddressList;

    aput-object p0, v2, v1

    .line 357
    monitor-exit v3

    .line 361
    :goto_2
    return-void

    .line 354
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 360
    :cond_2
    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public size()I
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/motorola/blur/util/mime/AddressList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Lcom/motorola/blur/util/mime/Address;
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/motorola/blur/util/mime/AddressList;->mList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/motorola/blur/util/mime/AddressList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/motorola/blur/util/mime/Address;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/util/mime/Address;

    return-object v0
.end method
