.class public Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;
.super Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;
.source "SmartDialerKoreanTokenUtils.java"


# static fields
.field private static KOREAN_JAUM_CONVERT_MAP:[I

.field private static final KOREAN_KEYPAD_MAP:Ljava/util/HashMap;
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

.field private static mKoreanArray:[I

.field private static mKoreanArray2:[Ljava/lang/String;

.field private static mKoreanTokenInstance:Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;->KOREAN_KEYPAD_MAP:Ljava/util/HashMap;

    .line 43
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;->KOREAN_KEYPAD_MAP:Ljava/util/HashMap;

    const-string v1, "\u3131"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;->KOREAN_KEYPAD_MAP:Ljava/util/HashMap;

    const-string v1, "\u3132"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;->KOREAN_KEYPAD_MAP:Ljava/util/HashMap;

    const-string v1, "\u314b"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;->KOREAN_KEYPAD_MAP:Ljava/util/HashMap;

    const-string v1, "\u3134"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;->KOREAN_KEYPAD_MAP:Ljava/util/HashMap;

    const-string v1, "\u3141"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;->KOREAN_KEYPAD_MAP:Ljava/util/HashMap;

    const-string v1, "\u3137"

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;->KOREAN_KEYPAD_MAP:Ljava/util/HashMap;

    const-string v1, "\u3138"

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;->KOREAN_KEYPAD_MAP:Ljava/util/HashMap;

    const-string v1, "\u314c"

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;->KOREAN_KEYPAD_MAP:Ljava/util/HashMap;

    const-string v1, "\u3139"

    const-string v2, "5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;->KOREAN_KEYPAD_MAP:Ljava/util/HashMap;

    const-string v1, "\u3142"

    const-string v2, "7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;->KOREAN_KEYPAD_MAP:Ljava/util/HashMap;

    const-string v1, "\u3143"

    const-string v2, "7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;->KOREAN_KEYPAD_MAP:Ljava/util/HashMap;

    const-string v1, "\u314d"

    const-string v2, "7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;->KOREAN_KEYPAD_MAP:Ljava/util/HashMap;

    const-string v1, "\u3145"

    const-string v2, "8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;->KOREAN_KEYPAD_MAP:Ljava/util/HashMap;

    const-string v1, "\u3146"

    const-string v2, "8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;->KOREAN_KEYPAD_MAP:Ljava/util/HashMap;

    const-string v1, "\u3148"

    const-string v2, "*"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;->KOREAN_KEYPAD_MAP:Ljava/util/HashMap;

    const-string v1, "\u3149"

    const-string v2, "*"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;->KOREAN_KEYPAD_MAP:Ljava/util/HashMap;

    const-string v1, "\u314a"

    const-string v2, "*"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;->KOREAN_KEYPAD_MAP:Ljava/util/HashMap;

    const-string v1, "\u3147"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;->KOREAN_KEYPAD_MAP:Ljava/util/HashMap;

    const-string v1, "\u314e"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;->mKoreanArray:[I

    .line 60
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u3131"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u3132"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u3134"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u3137"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u3138"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u3139"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u3141"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u3142"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u3143"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u3145"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u3146"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u3147"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u3148"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u3149"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u314a"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u314b"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u314c"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u314d"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u314e"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;->mKoreanArray2:[Ljava/lang/String;

    .line 67
    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;->KOREAN_JAUM_CONVERT_MAP:[I

    .line 102
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;->mKoreanTokenInstance:Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;

    return-void

    .line 53
    :array_0
    .array-data 4
        0xac00
        0xae4c
        0xb098
        0xb2e4
        0xb530
        0xb77c
        0xb9c8
        0xbc14
        0xbe60
        0xc0ac
        0xc2f8
        0xc544
        0xc790
        0xc9dc
        0xcc28
        0xce74
        0xd0c0
        0xd30c
        0xd558
        0xd7a4
    .end array-data

    .line 67
    :array_1
    .array-data 4
        0x1100
        0x1101
        0x0
        0x1102
        0x0
        0x0
        0x1103
        0x1104
        0x1105
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1106
        0x1107
        0x1108
        0x0
        0x1109
        0x110a
        0x110b
        0x110c
        0x110d
        0x110e
        0x110f
        0x1110
        0x1111
        0x1112
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;->mKoreanTokenInstance:Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;

    invoke-direct {v0}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;-><init>()V

    .line 108
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;->mKoreanTokenInstance:Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;

    goto :goto_0
.end method

.method private mapKorean2Digit(C)[C
    .locals 9
    .param p1, "ch"    # C

    .prologue
    const/16 v8, 0x314e

    const/16 v7, 0x3131

    const/4 v6, 0x0

    .line 183
    const/4 v5, 0x1

    new-array v3, v5, [C

    aput-char v6, v3, v6

    .line 185
    .local v3, "null_char":[C
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "charStr":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    .line 190
    .local v4, "unicode":I
    if-lt v4, v7, :cond_1

    if-gt v4, v8, :cond_1

    .line 191
    sget-object v5, Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;->KOREAN_JAUM_CONVERT_MAP:[I

    add-int/lit16 v6, v4, -0x3131

    aget v1, v5, v6

    .line 192
    .local v1, "character":I
    if-eqz v1, :cond_6

    .line 194
    sget-object v5, Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;->KOREAN_KEYPAD_MAP:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 213
    .end local v1    # "character":I
    .end local v3    # "null_char":[C
    :cond_0
    :goto_0
    return-object v3

    .line 196
    .restart local v3    # "null_char":[C
    :cond_1
    sget-object v5, Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;->mKoreanArray:[I

    aget v5, v5, v6

    if-gt v5, v4, :cond_3

    sget-object v5, Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;->mKoreanArray:[I

    sget-object v6, Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;->mKoreanArray:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    aget v5, v5, v6

    if-ge v4, v5, :cond_3

    .line 197
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v5, Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;->mKoreanArray:[I

    array-length v5, v5

    if-ge v2, v5, :cond_6

    .line 198
    sget-object v5, Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;->mKoreanArray:[I

    aget v5, v5, v2

    if-gt v5, v4, :cond_2

    sget-object v5, Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;->mKoreanArray:[I

    add-int/lit8 v6, v2, 0x1

    aget v5, v5, v6

    if-ge v4, v5, :cond_2

    .line 199
    sget-object v5, Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;->KOREAN_KEYPAD_MAP:Ljava/util/HashMap;

    sget-object v6, Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;->mKoreanArray2:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    goto :goto_0

    .line 197
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 202
    .end local v2    # "i":I
    :cond_3
    const/16 v5, 0x20

    if-eq v4, v5, :cond_0

    const/16 v5, 0x1112

    if-le v4, v5, :cond_4

    if-lt v4, v7, :cond_0

    :cond_4
    if-le v4, v8, :cond_5

    const v5, 0xac00

    if-lt v4, v5, :cond_0

    :cond_5
    const v5, 0xd7a3

    if-gt v4, v5, :cond_0

    .line 213
    :cond_6
    invoke-virtual {p0, p1}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->coreLanAlpha2Digit(C)[C

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public getSmartDialerToken(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 13
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 115
    .local v7, "tokenKeysHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SmartDialerKoreanTokenUtils:name = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->log(Ljava/lang/String;)V

    .line 117
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 118
    const-string v11, "input name is null or empty, no need to generate name token!"

    invoke-virtual {p0, v11}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->log(Ljava/lang/String;)V

    .line 119
    const/4 v11, 0x0

    .line 175
    :goto_0
    return-object v11

    .line 122
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .local v6, "nameTokenSB":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .local v5, "latinTokenSB":Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 127
    const/4 v2, 0x0

    .line 128
    .local v2, "isLatinDigitChar":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v1, v11, -0x1

    .local v1, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    move v4, v3

    .end local v3    # "j":I
    .local v4, "j":I
    :goto_1
    if-ltz v1, :cond_3

    .line 129
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 130
    .local v0, "ch":C
    invoke-virtual {p0, v0}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->coreLanAlpha2Digit(C)[C

    move-result-object v10

    .line 131
    .local v10, "tryLatinMap":[C
    const/4 v11, 0x0

    aget-char v11, v10, v11

    if-eqz v11, :cond_4

    .line 132
    const/4 v2, 0x1

    .line 133
    const/4 v11, 0x0

    invoke-virtual {v5, v11, v10}, Ljava/lang/StringBuilder;->insert(I[C)Ljava/lang/StringBuilder;

    .line 134
    if-lez v1, :cond_2

    move v3, v4

    .line 128
    .end local v4    # "j":I
    .restart local v3    # "j":I
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, -0x1

    move v4, v3

    .end local v3    # "j":I
    .restart local v4    # "j":I
    goto :goto_1

    .line 137
    :cond_2
    const/4 v11, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 139
    .local v8, "tokenStr":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 140
    const/4 v11, 0x5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "token["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->log(Ljava/lang/String;)V

    .line 175
    .end local v0    # "ch":C
    .end local v1    # "i":I
    .end local v2    # "isLatinDigitChar":Z
    .end local v3    # "j":I
    .end local v8    # "tokenStr":Ljava/lang/String;
    .end local v10    # "tryLatinMap":[C
    :cond_3
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    goto :goto_0

    .line 147
    .restart local v0    # "ch":C
    .restart local v1    # "i":I
    .restart local v2    # "isLatinDigitChar":Z
    .restart local v4    # "j":I
    .restart local v10    # "tryLatinMap":[C
    :cond_4
    if-eqz v2, :cond_5

    .line 148
    const/4 v11, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const/4 v11, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 150
    const/4 v2, 0x0

    .line 152
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 153
    .restart local v8    # "tokenStr":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 154
    const/4 v11, 0x5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "token["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->log(Ljava/lang/String;)V

    .line 159
    .end local v8    # "tokenStr":Ljava/lang/String;
    :goto_3
    invoke-direct {p0, v0}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;->mapKorean2Digit(C)[C

    move-result-object v9

    .line 160
    .local v9, "tryKoreanMap":[C
    const/4 v11, 0x0

    aget-char v11, v9, v11

    if-eqz v11, :cond_1

    .line 161
    const/4 v11, 0x0

    invoke-virtual {v6, v11, v9}, Ljava/lang/StringBuilder;->insert(I[C)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 167
    .restart local v8    # "tokenStr":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 168
    const/4 v11, 0x5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "token["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->log(Ljava/lang/String;)V

    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto/16 :goto_2

    .end local v3    # "j":I
    .end local v8    # "tokenStr":Ljava/lang/String;
    .end local v9    # "tryKoreanMap":[C
    .restart local v4    # "j":I
    :cond_5
    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_3
.end method
