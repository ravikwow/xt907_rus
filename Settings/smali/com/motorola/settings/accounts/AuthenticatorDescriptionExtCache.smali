.class public Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;
.super Landroid/content/pm/RegisteredServicesCache;
.source "AuthenticatorDescriptionExtCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache$1;,
        Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache$MySerializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/pm/RegisteredServicesCache",
        "<",
        "Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;

.field private static sAttributeMap:Ljava/util/HashMap;
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

.field private static final sSerializer:Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache$MySerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 30
    sput-object v1, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;->instance:Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;

    .line 31
    new-instance v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache$MySerializer;

    invoke-direct {v0, v1}, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache$MySerializer;-><init>(Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache$1;)V

    sput-object v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;->sSerializer:Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache$MySerializer;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;->sAttributeMap:Ljava/util/HashMap;

    .line 43
    sget-object v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "accountType"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "hideAccount"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "hideAuthenticator"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "showSyncOption"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "removeAllowed"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "editSettingActivity"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "accountDisplayName"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const-string v2, "com.motorola.accounts.AccountHelper"

    const-string v3, "com.motorola.accounts.AccountHelper"

    const-string v4, "account-authenticator-ext"

    sget-object v5, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;->sSerializer:Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache$MySerializer;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/RegisteredServicesCache;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/XmlSerializerAndParser;)V

    .line 60
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 63
    sget-object v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;->instance:Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;

    invoke-direct {v0, p0}, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;->instance:Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;

    .line 65
    const-string v0, "AuthenticatorDescriptionExtCache"

    const-string v1, "New instance of AuthenticatorDescriptionExtCache created"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    sget-object v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;->instance:Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;

    return-object v0
.end method

.method private static isSystemOrMotoApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 77
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_1

    .line 86
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v1

    .line 80
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    const-string v3, "com.motorola.motosignature.app"

    invoke-virtual {p0, v3, p1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_1
    move v1, v2

    .line 86
    goto :goto_0

    .line 83
    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;
    .locals 17
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 92
    const/4 v3, 0x0

    .line 93
    .local v3, "accType":Ljava/lang/String;
    const/4 v4, 0x0

    .line 94
    .local v4, "isHidden":Z
    const/4 v5, 0x0

    .line 95
    .local v5, "isAuthHidden":Z
    const/4 v6, 0x1

    .line 96
    .local v6, "syncAvailable":Z
    const/4 v7, 0x1

    .line 97
    .local v7, "removeAllowed":Z
    const/4 v8, 0x0

    .line 98
    .local v8, "accDisplayName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 99
    .local v9, "settingActivity":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 101
    .local v14, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p2

    invoke-static {v14, v0}, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;->isSystemOrMotoApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 102
    const/4 v2, 0x0

    .line 151
    :goto_0
    return-object v2

    .line 104
    :cond_0
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    if-ge v11, v2, :cond_2

    .line 105
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v13

    .line 107
    .local v13, "name":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;->sAttributeMap:Ljava/util/HashMap;

    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 104
    :cond_1
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 109
    :pswitch_0
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 110
    goto :goto_2

    .line 112
    :pswitch_1
    move-object/from16 v0, p3

    invoke-interface {v0, v11, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v4

    .line 113
    goto :goto_2

    .line 115
    :pswitch_2
    move-object/from16 v0, p3

    invoke-interface {v0, v11, v5}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v5

    .line 116
    goto :goto_2

    .line 118
    :pswitch_3
    move-object/from16 v0, p3

    invoke-interface {v0, v11, v6}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v6

    .line 119
    goto :goto_2

    .line 121
    :pswitch_4
    move-object/from16 v0, p3

    invoke-interface {v0, v11, v7}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v7

    .line 122
    goto :goto_2

    .line 124
    :pswitch_5
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    .line 125
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 126
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v8, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 127
    .local v12, "id":I
    if-eqz v12, :cond_1

    .line 128
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 133
    .end local v12    # "id":I
    :pswitch_6
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    goto :goto_2

    .line 137
    :catch_0
    move-exception v10

    .line 138
    .local v10, "e":Ljava/lang/Exception;
    const-string v2, "AuthenticatorDescriptionExtCache"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Found an unsupported tag "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " value = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v2, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 141
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v13    # "name":Ljava/lang/String;
    :cond_2
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    .line 142
    const/4 v9, 0x0

    .line 144
    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_4

    .line 145
    const/4 v8, 0x0

    .line 147
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 148
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 151
    :cond_5
    new-instance v2, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;

    invoke-direct/range {v2 .. v9}, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;-><init>(Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public bridge synthetic parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/content/res/Resources;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;->parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;

    move-result-object v0

    return-object v0
.end method
