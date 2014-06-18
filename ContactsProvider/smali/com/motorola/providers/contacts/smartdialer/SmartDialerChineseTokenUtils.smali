.class public Lcom/motorola/providers/contacts/smartdialer/SmartDialerChineseTokenUtils;
.super Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;
.source "SmartDialerChineseTokenUtils.java"


# static fields
.field private static mChineseTokenInstance:Lcom/motorola/providers/contacts/smartdialer/SmartDialerChineseTokenUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerChineseTokenUtils;->mChineseTokenInstance:Lcom/motorola/providers/contacts/smartdialer/SmartDialerChineseTokenUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/motorola/providers/contacts/smartdialer/SmartDialerChineseTokenUtils;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerChineseTokenUtils;->mChineseTokenInstance:Lcom/motorola/providers/contacts/smartdialer/SmartDialerChineseTokenUtils;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerChineseTokenUtils;

    invoke-direct {v0}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerChineseTokenUtils;-><init>()V

    .line 48
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerChineseTokenUtils;->mChineseTokenInstance:Lcom/motorola/providers/contacts/smartdialer/SmartDialerChineseTokenUtils;

    goto :goto_0
.end method


# virtual methods
.method public getSmartDialerToken(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 14
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
    const/4 v13, 0x0

    .line 53
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 55
    .local v9, "tokenKeysHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SmartDialerChineseTokenUtils:input name = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerChineseTokenUtils;->log(Ljava/lang/String;)V

    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 58
    const-string v11, "input name is empty, no need to generate name token !"

    invoke-virtual {p0, v11}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerChineseTokenUtils;->log(Ljava/lang/String;)V

    .line 59
    const/4 v11, 0x0

    .line 97
    :goto_0
    return-object v11

    .line 62
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .local v3, "fullPartialTk":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v0, "acronymTk":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/providers/contacts/HanziToPinyin;->getInstance()Lcom/android/providers/contacts/HanziToPinyin;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/android/providers/contacts/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 66
    .local v10, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/providers/contacts/HanziToPinyin$Token;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 68
    .local v8, "tokenCount":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "token count="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerChineseTokenUtils;->log(Ljava/lang/String;)V

    .line 70
    add-int/lit8 v5, v8, -0x1

    .local v5, "i":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ltz v5, :cond_4

    .line 71
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/providers/contacts/HanziToPinyin$Token;

    .line 73
    .local v7, "token":Lcom/android/providers/contacts/HanziToPinyin$Token;
    iget-object v11, v7, Lcom/android/providers/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {p0, v11}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerChineseTokenUtils;->coreLanAlpha2Digit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "digitStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 76
    invoke-virtual {v3, v13, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v0, v13, v11}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 78
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "nameSpliter["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] = ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Lcom/android/providers/contacts/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "], pinyin=["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Lcom/android/providers/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "], tokenDigit=["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerChineseTokenUtils;->log(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "fullpartial_token":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 85
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "acronym_token":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 90
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fullpartial_token["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerChineseTokenUtils;->log(Ljava/lang/String;)V

    .line 94
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "acronym_token["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerChineseTokenUtils;->log(Ljava/lang/String;)V

    .line 70
    .end local v1    # "acronym_token":Ljava/lang/String;
    .end local v4    # "fullpartial_token":Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 97
    .end local v2    # "digitStr":Ljava/lang/String;
    .end local v7    # "token":Lcom/android/providers/contacts/HanziToPinyin$Token;
    :cond_4
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    goto/16 :goto_0
.end method
