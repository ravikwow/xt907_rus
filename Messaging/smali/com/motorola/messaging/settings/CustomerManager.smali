.class public Lcom/motorola/messaging/settings/CustomerManager;
.super Ljava/lang/Object;
.source "CustomerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/settings/CustomerManager$Customer;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z

.field private static mContext:Landroid/content/Context;

.field private static mCustomer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 29
    const-class v0, Lcom/motorola/messaging/settings/CustomerManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/settings/CustomerManager;->$assertionsDisabled:Z

    .line 34
    sput-boolean v1, Lcom/motorola/messaging/settings/CustomerManager;->DEBUG:Z

    .line 35
    sget-boolean v0, Lcom/motorola/messaging/settings/CustomerManager;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v0, :cond_1

    :goto_1
    sput-boolean v1, Lcom/motorola/messaging/settings/CustomerManager;->LOCAL_LOG:Z

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/messaging/settings/CustomerManager;->mContext:Landroid/content/Context;

    return-void

    :cond_0
    move v0, v2

    .line 29
    goto :goto_0

    :cond_1
    move v1, v2

    .line 35
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method private static getACGCarrierId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string v0, "persist.ril.carrier.id"

    invoke-static {v0}, Lcom/motorola/messaging/frameworkadapter/motorola/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAcgCustomer()Ljava/lang/String;
    .locals 4

    .prologue
    .line 78
    invoke-static {}, Lcom/motorola/messaging/settings/CustomerManager;->getACGCarrierId()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "carrierId":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    :cond_0
    invoke-static {}, Lcom/motorola/messaging/settings/CustomerManager;->getACGCarrierId()Ljava/lang/String;

    move-result-object v0

    .line 81
    const-string v1, "wait ACG carrier id"

    const-wide/16 v2, 0x3e8

    invoke-static {v1, v2, v3}, Lcom/motorola/messaging/transaction/TransactionManager;->sleep(Ljava/lang/String;J)V

    goto :goto_0

    .line 84
    :cond_1
    return-object v0
.end method

.method public static getCustomer()Ljava/lang/String;
    .locals 5

    .prologue
    .line 92
    sget-object v3, Lcom/motorola/messaging/settings/CustomerManager;->mCustomer:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 93
    sget-object v3, Lcom/motorola/messaging/frameworkadapter/motorola/MotoBuild;->CUSTOMERID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/motorola/messaging/settings/CustomerManager;->mCustomer:Ljava/lang/String;

    .line 94
    sget-object v3, Lcom/motorola/messaging/settings/CustomerManager;->mCustomer:Ljava/lang/String;

    const-string v4, "ACG"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/motorola/messaging/settings/CustomerManager;->mCustomer:Ljava/lang/String;

    const-string v4, "LRA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/motorola/messaging/settings/CustomerManager;->mCustomer:Ljava/lang/String;

    const-string v4, "NT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/motorola/messaging/settings/CustomerManager;->mCustomer:Ljava/lang/String;

    const-string v4, "CS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 95
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACG"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/motorola/messaging/settings/CustomerManager;->getAcgCustomer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/motorola/messaging/settings/CustomerManager;->mCustomer:Ljava/lang/String;

    .line 104
    .local v0, "messageCustomer":Ljava/lang/String;
    :cond_1
    :goto_0
    sget-object v3, Lcom/motorola/messaging/settings/CustomerManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/motorola/messaging/settings/CustomerManager;->readTableFromXml(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v2

    .line 105
    .local v2, "translationTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    .line 106
    sget-object v3, Lcom/motorola/messaging/settings/CustomerManager;->mCustomer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 107
    .local v1, "newCustomer":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 108
    sput-object v1, Lcom/motorola/messaging/settings/CustomerManager;->mCustomer:Ljava/lang/String;

    .line 117
    .end local v1    # "newCustomer":Ljava/lang/String;
    :cond_2
    sget-object v3, Lcom/motorola/messaging/settings/CustomerManager;->mCustomer:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 98
    .end local v0    # "messageCustomer":Ljava/lang/String;
    .end local v2    # "translationTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-static {}, Lcom/motorola/messaging/settings/CustomerManager;->getMessageCustomer()Ljava/lang/String;

    move-result-object v0

    .line 99
    .restart local v0    # "messageCustomer":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 100
    sput-object v0, Lcom/motorola/messaging/settings/CustomerManager;->mCustomer:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getCustomerFromMccMnc(Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/messaging/settings/CustomerManager$Customer;
    .locals 1
    .param p0, "mcc"    # Ljava/lang/String;
    .param p1, "mnc"    # Ljava/lang/String;

    .prologue
    .line 121
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    sget-object v0, Lcom/motorola/messaging/settings/CustomerManager$Customer;->NONE:Lcom/motorola/messaging/settings/CustomerManager$Customer;

    .line 132
    :goto_0
    return-object v0

    .line 123
    :cond_1
    const-string v0, "310"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "004"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    const-string v0, "311"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "480"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const-string v0, "204"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "04"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 126
    :cond_4
    sget-object v0, Lcom/motorola/messaging/settings/CustomerManager$Customer;->VERIZON:Lcom/motorola/messaging/settings/CustomerManager$Customer;

    goto :goto_0

    .line 128
    :cond_5
    const-string v0, "311"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "220"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 129
    sget-object v0, Lcom/motorola/messaging/settings/CustomerManager$Customer;->USC:Lcom/motorola/messaging/settings/CustomerManager$Customer;

    goto :goto_0

    .line 132
    :cond_6
    sget-object v0, Lcom/motorola/messaging/settings/CustomerManager$Customer;->UNKNOWN:Lcom/motorola/messaging/settings/CustomerManager$Customer;

    goto :goto_0
.end method

.method private static getMessageCustomer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "msg.product.customer"

    invoke-static {v0}, Lcom/motorola/messaging/frameworkadapter/motorola/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    sget-boolean v0, Lcom/motorola/messaging/settings/CustomerManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "CustomerManager"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    sget-object v0, Lcom/motorola/messaging/settings/CustomerManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 61
    sput-object p0, Lcom/motorola/messaging/settings/CustomerManager;->mContext:Landroid/content/Context;

    .line 67
    :cond_1
    :goto_0
    return-void

    .line 63
    :cond_2
    sget-boolean v0, Lcom/motorola/messaging/settings/CustomerManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 64
    const-string v0, "CustomerManager"

    const-string v1, "CustomerManager has already been initialized!"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static readTableFromXml(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 149
    .local v6, "translations":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f050020

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 153
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    :cond_0
    :goto_0
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    .local v1, "eventType":I
    const/4 v7, 0x1

    if-eq v1, v7, :cond_3

    .line 155
    const/4 v7, 0x2

    if-ne v1, v7, :cond_0

    .line 157
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 159
    .local v4, "tag":Ljava/lang/String;
    const-string v7, "alias"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 161
    const/4 v7, 0x0

    const-string v8, "from"

    invoke-interface {v3, v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, "from":Ljava/lang/String;
    const/4 v7, 0x0

    const-string v8, "to"

    invoke-interface {v3, v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 164
    .local v5, "to":Ljava/lang/String;
    if-eqz v2, :cond_1

    if-eqz v5, :cond_1

    .line 169
    invoke-virtual {v6, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 183
    .end local v1    # "eventType":I
    .end local v2    # "from":Ljava/lang/String;
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "to":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "CustomerManager"

    const-string v8, "Could not parse XML file"

    invoke-static {v7, v8, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    sget-boolean v7, Lcom/motorola/messaging/settings/CustomerManager;->$assertionsDisabled:Z

    if-nez v7, :cond_3

    new-instance v7, Ljava/lang/AssertionError;

    const-string v8, "Could not parse XML file"

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 172
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "eventType":I
    .restart local v2    # "from":Ljava/lang/String;
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v4    # "tag":Ljava/lang/String;
    .restart local v5    # "to":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v7, "CustomerManager"

    const-string v8, "Invalid translation table file format"

    invoke-static {v7, v8}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    sget-boolean v7, Lcom/motorola/messaging/settings/CustomerManager;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    const-string v8, "Invalid translation table file format"

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    .line 187
    .end local v1    # "eventType":I
    .end local v2    # "from":Ljava/lang/String;
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "to":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 188
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "CustomerManager"

    const-string v8, "Could not parse XML file"

    invoke-static {v7, v8, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    sget-boolean v7, Lcom/motorola/messaging/settings/CustomerManager;->$assertionsDisabled:Z

    if-nez v7, :cond_3

    new-instance v7, Ljava/lang/AssertionError;

    const-string v8, "Could not parse XML file"

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 175
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "eventType":I
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v4    # "tag":Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string v7, "customer_alias_table"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 178
    const-string v7, "CustomerManager"

    const-string v8, "Invalid translation table file format"

    invoke-static {v7, v8}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    sget-boolean v7, Lcom/motorola/messaging/settings/CustomerManager;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    const-string v8, "Invalid translation table file format"

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    .line 192
    .end local v1    # "eventType":I
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v4    # "tag":Ljava/lang/String;
    :cond_3
    return-object v6
.end method
