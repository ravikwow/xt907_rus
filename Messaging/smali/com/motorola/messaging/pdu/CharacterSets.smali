.class public Lcom/motorola/messaging/pdu/CharacterSets;
.super Ljava/lang/Object;
.source "CharacterSets.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MIBENUM_NUMBERS:[I

.field private static final MIBENUM_TO_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIME_NAMES:[Ljava/lang/String;

.field private static final NAME_TO_MIBENUM_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v3, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 23
    const-class v0, Lcom/motorola/messaging/pdu/CharacterSets;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/pdu/CharacterSets;->$assertionsDisabled:Z

    .line 56
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/messaging/pdu/CharacterSets;->MIBENUM_NUMBERS:[I

    .line 100
    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "*"

    aput-object v3, v0, v2

    const-string v3, "us-ascii"

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const-string v3, "iso-8859-1"

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v3, "iso-8859-2"

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v3, "iso-8859-3"

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string v3, "iso-8859-4"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "iso-8859-5"

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-string v3, "iso-8859-6"

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string v3, "iso-8859-7"

    aput-object v3, v0, v1

    const/16 v1, 0x9

    const-string v3, "iso-8859-8"

    aput-object v3, v0, v1

    const/16 v1, 0xa

    const-string v3, "iso-8859-9"

    aput-object v3, v0, v1

    const/16 v1, 0xb

    const-string v3, "shift_JIS"

    aput-object v3, v0, v1

    const/16 v1, 0xc

    const-string v3, "utf-8"

    aput-object v3, v0, v1

    const/16 v1, 0xd

    const-string v3, "big5"

    aput-object v3, v0, v1

    const/16 v1, 0xe

    const-string v3, "iso-10646-ucs-2"

    aput-object v3, v0, v1

    const/16 v1, 0xf

    const-string v3, "utf-16"

    aput-object v3, v0, v1

    sput-object v0, Lcom/motorola/messaging/pdu/CharacterSets;->MIME_NAMES:[Ljava/lang/String;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/messaging/pdu/CharacterSets;->MIBENUM_TO_NAME_MAP:Ljava/util/HashMap;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/messaging/pdu/CharacterSets;->NAME_TO_MIBENUM_MAP:Ljava/util/HashMap;

    .line 126
    sget-boolean v0, Lcom/motorola/messaging/pdu/CharacterSets;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/messaging/pdu/CharacterSets;->MIBENUM_NUMBERS:[I

    array-length v0, v0

    sget-object v1, Lcom/motorola/messaging/pdu/CharacterSets;->MIME_NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v0, v2

    .line 23
    goto/16 :goto_0

    .line 127
    :cond_1
    sget-object v0, Lcom/motorola/messaging/pdu/CharacterSets;->MIBENUM_NUMBERS:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 128
    :goto_1
    if-gt v2, v0, :cond_2

    .line 129
    sget-object v1, Lcom/motorola/messaging/pdu/CharacterSets;->MIBENUM_TO_NAME_MAP:Ljava/util/HashMap;

    sget-object v3, Lcom/motorola/messaging/pdu/CharacterSets;->MIBENUM_NUMBERS:[I

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/motorola/messaging/pdu/CharacterSets;->MIME_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v1, Lcom/motorola/messaging/pdu/CharacterSets;->NAME_TO_MIBENUM_MAP:Ljava/util/HashMap;

    sget-object v3, Lcom/motorola/messaging/pdu/CharacterSets;->MIME_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v2

    sget-object v4, Lcom/motorola/messaging/pdu/CharacterSets;->MIBENUM_NUMBERS:[I

    aget v4, v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 132
    :cond_2
    return-void

    .line 56
    :array_0
    .array-data 4
        0x0
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0x11
        0x6a
        0x7ea
        0x3e8
        0x3f7
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMibEnumValue(Ljava/lang/String;)I
    .locals 2
    .param p0, "mimeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 162
    if-nez p0, :cond_0

    .line 163
    const/4 v1, -0x1

    .line 170
    :goto_0
    return v1

    .line 166
    :cond_0
    sget-object v1, Lcom/motorola/messaging/pdu/CharacterSets;->NAME_TO_MIBENUM_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 167
    .local v0, "mibEnumValue":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 168
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1}, Ljava/io/UnsupportedEncodingException;-><init>()V

    throw v1

    .line 170
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static getMimeName(I)Ljava/lang/String;
    .locals 3
    .param p0, "mibEnumValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 146
    sget-object v1, Lcom/motorola/messaging/pdu/CharacterSets;->MIBENUM_TO_NAME_MAP:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 148
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1}, Ljava/io/UnsupportedEncodingException;-><init>()V

    throw v1

    .line 150
    :cond_0
    return-object v0
.end method
