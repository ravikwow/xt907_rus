.class public Lcom/android/providers/contacts/ContactLocaleUtils;
.super Ljava/lang/Object;
.source "ContactLocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/ContactLocaleUtils$1;,
        Lcom/android/providers/contacts/ContactLocaleUtils$KoreanContactUtils;,
        Lcom/android/providers/contacts/ContactLocaleUtils$ChineseContactUtils;,
        Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;
    }
.end annotation


# static fields
.field private static final CHINESE_LANGUAGE:Ljava/lang/String;

.field private static final JAPANESE_LANGUAGE:Ljava/lang/String;

.field private static KOREAN_COMPAT_JAUM_CONVERT_MAP:[I

.field private static KOREAN_JAUM_COUNT:I

.field private static final KOREAN_LANGUAGE:Ljava/lang/String;

.field private static sSingleton:Lcom/android/providers/contacts/ContactLocaleUtils;


# instance fields
.field private final mBase:Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;

.field private mLanguage:Ljava/lang/String;

.field private final mUtils:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->KOREAN_COMPAT_JAUM_CONVERT_MAP:[I

    .line 169
    const/16 v0, 0x1e

    sput v0, Lcom/android/providers/contacts/ContactLocaleUtils;->KOREAN_JAUM_COUNT:I

    .line 221
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->CHINESE_LANGUAGE:Ljava/lang/String;

    .line 222
    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->JAPANESE_LANGUAGE:Ljava/lang/String;

    .line 223
    sget-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->KOREAN_LANGUAGE:Ljava/lang/String;

    return-void

    .line 145
    :array_0
    .array-data 4
        0x3131
        0x3132
        0x3134
        0x3137
        0x3138
        0x3139
        0x3141
        0x3142
        0x3143
        0x3145
        0x3146
        0x3147
        0x3148
        0x3149
        0x314a
        0x314b
        0x314c
        0x314d
        0x314e
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mUtils:Landroid/util/SparseArray;

    .line 229
    new-instance v0, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;-><init>(Lcom/android/providers/contacts/ContactLocaleUtils;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mBase:Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;

    .line 234
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactLocaleUtils;->setLocale(Ljava/util/Locale;)V

    .line 235
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/contacts/ContactLocaleUtils;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/contacts/ContactLocaleUtils;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactLocaleUtils;->getKoreanConsonant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized get(Ljava/lang/Integer;)Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;
    .locals 3
    .param p1, "nameStyle"    # Ljava/lang/Integer;

    .prologue
    .line 271
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mUtils:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;

    .line 272
    .local v0, "utils":Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;
    if-nez v0, :cond_0

    .line 273
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 274
    new-instance v0, Lcom/android/providers/contacts/ContactLocaleUtils$ChineseContactUtils;

    .end local v0    # "utils":Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/providers/contacts/ContactLocaleUtils$ChineseContactUtils;-><init>(Lcom/android/providers/contacts/ContactLocaleUtils;Lcom/android/providers/contacts/ContactLocaleUtils$1;)V

    .line 275
    .restart local v0    # "utils":Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;
    iget-object v1, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mUtils:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 284
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mBase:Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "utils":Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;
    :cond_1
    monitor-exit p0

    return-object v0

    .line 278
    .restart local v0    # "utils":Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 279
    new-instance v0, Lcom/android/providers/contacts/ContactLocaleUtils$KoreanContactUtils;

    .end local v0    # "utils":Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/providers/contacts/ContactLocaleUtils$KoreanContactUtils;-><init>(Lcom/android/providers/contacts/ContactLocaleUtils;Lcom/android/providers/contacts/ContactLocaleUtils$1;)V

    .line 280
    .restart local v0    # "utils":Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;
    iget-object v1, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mUtils:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 271
    .end local v0    # "utils":Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getAdjustedStyle(I)I
    .locals 2
    .param p1, "nameStyle"    # I

    .prologue
    .line 305
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->JAPANESE_LANGUAGE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->KOREAN_LANGUAGE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    const/4 p1, 0x3

    .line 309
    .end local p1    # "nameStyle":I
    :cond_0
    return p1
.end method

.method private getForNameLookup(Ljava/lang/Integer;)Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;
    .locals 4
    .param p1, "nameStyle"    # Ljava/lang/Integer;

    .prologue
    .line 262
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 263
    .local v1, "nameStyleInt":I
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/ContactLocaleUtils;->getAdjustedStyle(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 264
    .local v0, "adjustedUtil":Ljava/lang/Integer;
    sget-object v2, Lcom/android/providers/contacts/ContactLocaleUtils;->CHINESE_LANGUAGE:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mLanguage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 265
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 267
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactLocaleUtils;->get(Ljava/lang/Integer;)Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;

    move-result-object v2

    return-object v2
.end method

.method private getForSort(Ljava/lang/Integer;)Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;
    .locals 1
    .param p1, "nameStyle"    # Ljava/lang/Integer;

    .prologue
    .line 294
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactLocaleUtils;->getAdjustedStyle(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactLocaleUtils;->get(Ljava/lang/Integer;)Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getIntance()Lcom/android/providers/contacts/ContactLocaleUtils;
    .locals 2

    .prologue
    .line 298
    const-class v1, Lcom/android/providers/contacts/ContactLocaleUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->sSingleton:Lcom/android/providers/contacts/ContactLocaleUtils;

    if-nez v0, :cond_0

    .line 299
    new-instance v0, Lcom/android/providers/contacts/ContactLocaleUtils;

    invoke-direct {v0}, Lcom/android/providers/contacts/ContactLocaleUtils;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->sSingleton:Lcom/android/providers/contacts/ContactLocaleUtils;

    .line 301
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->sSingleton:Lcom/android/providers/contacts/ContactLocaleUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 298
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getKoreanConsonant(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const v9, 0xac00

    .line 172
    const/4 v2, 0x0

    .line 173
    .local v2, "position":I
    const/4 v1, 0x0

    .line 176
    .local v1, "consonantLength":I
    if-nez p1, :cond_0

    .line 217
    :goto_0
    return-object v6

    .line 178
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 179
    .local v5, "stringLength":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 182
    :goto_1
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "position":I
    .local v3, "position":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 183
    .local v0, "character":I
    const/16 v7, 0x20

    if-ne v0, v7, :cond_2

    .line 209
    :goto_2
    if-lt v3, v5, :cond_6

    .line 213
    :cond_1
    :goto_3
    if-lez v1, :cond_5

    .line 214
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move v2, v3

    .end local v3    # "position":I
    .restart local v2    # "position":I
    goto :goto_0

    .line 188
    .end local v2    # "position":I
    .restart local v3    # "position":I
    :cond_2
    if-lt v0, v9, :cond_4

    const v7, 0xd7a3

    if-gt v0, v7, :cond_4

    .line 193
    sget-object v7, Lcom/android/providers/contacts/ContactLocaleUtils;->KOREAN_COMPAT_JAUM_CONVERT_MAP:[I

    sub-int v8, v0, v9

    div-int/lit16 v8, v8, 0x24c

    aget v0, v7, v8

    .line 207
    :cond_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 194
    :cond_4
    const/16 v7, 0x3131

    if-lt v0, v7, :cond_3

    .line 197
    add-int/lit16 v7, v0, -0x3131

    sget v8, Lcom/android/providers/contacts/ContactLocaleUtils;->KOREAN_JAUM_COUNT:I

    if-ge v7, v8, :cond_1

    .line 202
    if-nez v0, :cond_3

    goto :goto_3

    :cond_5
    move v2, v3

    .line 217
    .end local v3    # "position":I
    .restart local v2    # "position":I
    goto :goto_0

    .end local v2    # "position":I
    .restart local v3    # "position":I
    :cond_6
    move v2, v3

    .end local v3    # "position":I
    .restart local v2    # "position":I
    goto :goto_1
.end method


# virtual methods
.method public getNameLookupKeys(Ljava/lang/String;I)Ljava/util/Iterator;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameStyle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactLocaleUtils;->getForNameLookup(Ljava/lang/Integer;)Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->getNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getSortKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "nameStyle"    # I

    .prologue
    .line 246
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactLocaleUtils;->getForSort(Ljava/lang/Integer;)Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "currentLocale"    # Ljava/util/Locale;

    .prologue
    .line 238
    if-nez p1, :cond_0

    .line 239
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mLanguage:Ljava/lang/String;

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mLanguage:Ljava/lang/String;

    goto :goto_0
.end method
