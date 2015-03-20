.class Lcom/motorola/messaging/mime/Sms7BitSettingsProvider;
.super Ljava/lang/Object;
.source "Sms7BitSettingsProvider.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z

.field private static mTranslationTable:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 25
    const-class v0, Lcom/motorola/messaging/mime/Sms7BitSettingsProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/mime/Sms7BitSettingsProvider;->$assertionsDisabled:Z

    .line 29
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEBUG_ALL:Z

    sput-boolean v0, Lcom/motorola/messaging/mime/Sms7BitSettingsProvider;->DEBUG:Z

    .line 30
    sget-boolean v0, Lcom/motorola/messaging/mime/Sms7BitSettingsProvider;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v0, :cond_1

    :goto_1
    sput-boolean v1, Lcom/motorola/messaging/mime/Sms7BitSettingsProvider;->LOCAL_LOG:Z

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/messaging/mime/Sms7BitSettingsProvider;->mTranslationTable:Landroid/util/SparseIntArray;

    return-void

    :cond_0
    move v0, v2

    .line 25
    goto :goto_0

    :cond_1
    move v1, v2

    .line 30
    goto :goto_1
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTableInstance(Landroid/content/Context;)Landroid/util/SparseIntArray;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    sget-boolean v3, Lcom/motorola/messaging/mime/Sms7BitSettingsProvider;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 55
    const-string v3, "Sms7bitStngsProvdr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTableInstance IN, table="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/motorola/messaging/mime/Sms7BitSettingsProvider;->mTranslationTable:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    sget-object v3, Lcom/motorola/messaging/mime/Sms7BitSettingsProvider;->mTranslationTable:Landroid/util/SparseIntArray;

    if-eqz v3, :cond_1

    .line 59
    sget-object v3, Lcom/motorola/messaging/mime/Sms7BitSettingsProvider;->mTranslationTable:Landroid/util/SparseIntArray;

    .line 83
    :goto_0
    return-object v3

    .line 62
    :cond_1
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v3, Lcom/motorola/messaging/mime/Sms7BitSettingsProvider;->mTranslationTable:Landroid/util/SparseIntArray;

    .line 64
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isGSM()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 70
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :goto_1
    invoke-static {p0, v2}, Lcom/motorola/messaging/mime/Sms7BitSettingsProvider;->readTableFromXml(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/motorola/messaging/settings/CustomerManager;->getCustomer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_sms_7bit_translation_table"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "overlayTable":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "xml"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 73
    .local v0, "customerOverlay":I
    if-eqz v0, :cond_2

    .line 74
    const-string v3, "Sms7bitStngsProvdr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read overlay for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 76
    invoke-static {p0, v2}, Lcom/motorola/messaging/mime/Sms7BitSettingsProvider;->readTableFromXml(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 79
    :cond_2
    sget-boolean v3, Lcom/motorola/messaging/mime/Sms7BitSettingsProvider;->LOCAL_LOG:Z

    if-eqz v3, :cond_3

    .line 80
    const-string v3, "Sms7bitStngsProvdr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTableInstance OUT, table="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/motorola/messaging/mime/Sms7BitSettingsProvider;->mTranslationTable:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_3
    sget-object v3, Lcom/motorola/messaging/mime/Sms7BitSettingsProvider;->mTranslationTable:Landroid/util/SparseIntArray;

    goto/16 :goto_0

    .line 67
    .end local v0    # "customerOverlay":I
    .end local v1    # "overlayTable":Ljava/lang/String;
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    goto :goto_1
.end method

.method private static readTableFromXml(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    const/4 v8, -0x1

    .line 96
    :cond_0
    :goto_0
    if-eqz p1, :cond_4

    :try_start_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    .local v1, "eventType":I
    const/4 v5, 0x1

    if-eq v1, v5, :cond_4

    .line 98
    const/4 v5, 0x2

    if-ne v1, v5, :cond_0

    .line 100
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "tag":Ljava/lang/String;
    const-string v5, "translation"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 104
    const/4 v5, 0x0

    const-string v6, "from"

    const/4 v7, -0x1

    invoke-interface {p1, v5, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 106
    .local v2, "from":I
    const/4 v5, 0x0

    const-string v6, "to"

    const/4 v7, -0x1

    invoke-interface {p1, v5, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 109
    .local v4, "to":I
    if-eq v2, v8, :cond_2

    if-eq v4, v8, :cond_2

    .line 110
    sget-boolean v5, Lcom/motorola/messaging/mime/Sms7BitSettingsProvider;->LOCAL_LOG:Z

    if-eqz v5, :cond_1

    .line 111
    const-string v5, "Sms7bitStngsProvdr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loading mapping "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_1
    sget-object v5, Lcom/motorola/messaging/mime/Sms7BitSettingsProvider;->mTranslationTable:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 133
    .end local v1    # "eventType":I
    .end local v2    # "from":I
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "to":I
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "Sms7bitStngsProvdr"

    const-string v6, "Could not parse XML file"

    invoke-static {v5, v6, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    sget-boolean v5, Lcom/motorola/messaging/mime/Sms7BitSettingsProvider;->$assertionsDisabled:Z

    if-nez v5, :cond_4

    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "Could not parse XML file"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 119
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "eventType":I
    .restart local v2    # "from":I
    .restart local v3    # "tag":Ljava/lang/String;
    .restart local v4    # "to":I
    :cond_2
    :try_start_1
    const-string v5, "Sms7bitStngsProvdr"

    const-string v6, "Invalid translation table file format"

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    sget-boolean v5, Lcom/motorola/messaging/mime/Sms7BitSettingsProvider;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "Invalid translation table file format"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    .end local v1    # "eventType":I
    .end local v2    # "from":I
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "to":I
    :catch_1
    move-exception v0

    .line 138
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v5, "Sms7bitStngsProvdr"

    const-string v6, "Could not parse XML file"

    invoke-static {v5, v6, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    sget-boolean v5, Lcom/motorola/messaging/mime/Sms7BitSettingsProvider;->$assertionsDisabled:Z

    if-nez v5, :cond_4

    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "Could not parse XML file"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 123
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "eventType":I
    .restart local v3    # "tag":Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string v5, "unicode_to_gsm_7bit_supported_character"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 127
    const-string v5, "Sms7bitStngsProvdr"

    const-string v6, "Invalid translation table file format"

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    sget-boolean v5, Lcom/motorola/messaging/mime/Sms7BitSettingsProvider;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "Invalid translation table file format"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    .line 141
    .end local v1    # "eventType":I
    .end local v3    # "tag":Ljava/lang/String;
    :cond_4
    return-void
.end method
