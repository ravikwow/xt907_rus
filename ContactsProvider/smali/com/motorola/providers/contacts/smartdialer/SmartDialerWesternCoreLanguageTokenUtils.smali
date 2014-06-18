.class public Lcom/motorola/providers/contacts/smartdialer/SmartDialerWesternCoreLanguageTokenUtils;
.super Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;
.source "SmartDialerWesternCoreLanguageTokenUtils.java"


# static fields
.field private static mWesternCoreLanTokenInstance:Lcom/motorola/providers/contacts/smartdialer/SmartDialerWesternCoreLanguageTokenUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerWesternCoreLanguageTokenUtils;->mWesternCoreLanTokenInstance:Lcom/motorola/providers/contacts/smartdialer/SmartDialerWesternCoreLanguageTokenUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/motorola/providers/contacts/smartdialer/SmartDialerWesternCoreLanguageTokenUtils;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerWesternCoreLanguageTokenUtils;->mWesternCoreLanTokenInstance:Lcom/motorola/providers/contacts/smartdialer/SmartDialerWesternCoreLanguageTokenUtils;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerWesternCoreLanguageTokenUtils;

    invoke-direct {v0}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerWesternCoreLanguageTokenUtils;-><init>()V

    .line 59
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerWesternCoreLanguageTokenUtils;->mWesternCoreLanTokenInstance:Lcom/motorola/providers/contacts/smartdialer/SmartDialerWesternCoreLanguageTokenUtils;

    goto :goto_0
.end method


# virtual methods
.method public getSmartDialerToken(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 11
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
    const/4 v10, 0x0

    .line 64
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 66
    .local v7, "tokenKeysHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SmartDialerWesternCoreLanguageTokenUtils:input name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerWesternCoreLanguageTokenUtils;->log(Ljava/lang/String;)V

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 69
    const-string v8, "input name is null or empty, no need to generate name token !"

    invoke-virtual {p0, v8}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerWesternCoreLanguageTokenUtils;->log(Ljava/lang/String;)V

    .line 70
    const/4 v8, 0x0

    .line 99
    :goto_0
    return-object v8

    .line 73
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .local v2, "fullPartialTk":Ljava/lang/StringBuilder;
    const-string v8, "(,)+|(\\.)+|(\\s+)+|(\\-)"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 77
    .local v6, "splitNameArray":[Ljava/lang/String;
    array-length v8, v6

    add-int/lit8 v4, v8, -0x1

    .local v4, "i":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ltz v4, :cond_3

    .line 78
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "nameSpliter["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] = ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "], length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerWesternCoreLanguageTokenUtils;->log(Ljava/lang/String;)V

    .line 80
    aget-object v8, v6, v4

    invoke-virtual {p0, v8}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerWesternCoreLanguageTokenUtils;->stripUnSupportCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "filterStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 82
    invoke-virtual {p0, v1}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerWesternCoreLanguageTokenUtils;->coreLanAlpha2Digit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "digitStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 84
    invoke-virtual {v2, v10, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "nameFilter["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] = ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "], tokenDigit = ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerWesternCoreLanguageTokenUtils;->log(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "fullpartial_token":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 92
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "token["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerWesternCoreLanguageTokenUtils;->log(Ljava/lang/String;)V

    .line 77
    .end local v0    # "digitStr":Ljava/lang/String;
    .end local v3    # "fullpartial_token":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 99
    .end local v1    # "filterStr":Ljava/lang/String;
    :cond_3
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    goto/16 :goto_0
.end method
