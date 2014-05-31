.class public Lcom/motorola/settings/accounts/MotoAccountsHelper;
.super Ljava/lang/Object;
.source "MotoAccountsHelper.java"


# static fields
.field private static SYSTEM_APP_PATH:Ljava/lang/String;

.field private static VENDOR_APP_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "/system/app"

    sput-object v0, Lcom/motorola/settings/accounts/MotoAccountsHelper;->SYSTEM_APP_PATH:Ljava/lang/String;

    .line 26
    const-string v0, "/vendor/app"

    sput-object v0, Lcom/motorola/settings/accounts/MotoAccountsHelper;->VENDOR_APP_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccountDisplayName(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    .line 101
    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/motorola/settings/accounts/MotoAccountsHelper;->getAuthenticatorDescriptionExt(Landroid/content/Context;Ljava/lang/String;)Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;

    move-result-object v1

    iget-object v0, v1, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->accountDisplayName:Ljava/lang/String;

    .line 102
    .local v0, "displayName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 103
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 105
    :cond_0
    return-object v0
.end method

.method private static final getAuthenticatorDescriptionExt(Landroid/content/Context;Ljava/lang/String;)Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;->getInstance(Landroid/content/Context;)Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;

    move-result-object v2

    invoke-static {p1}, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->newKey(Ljava/lang/String;)Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v1

    .line 32
    .local v1, "srvInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;>;"
    if-eqz v1, :cond_0

    .line 33
    iget-object v0, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;

    .line 37
    .local v0, "authFeat":Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;
    :goto_0
    return-object v0

    .line 35
    .end local v0    # "authFeat":Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;
    :cond_0
    new-instance v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;

    invoke-direct {v0, p1}, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;-><init>(Ljava/lang/String;)V

    .restart local v0    # "authFeat":Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;
    goto :goto_0
.end method

.method public static getSettingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-static {p0, p1}, Lcom/motorola/settings/accounts/MotoAccountsHelper;->getAuthenticatorDescriptionExt(Landroid/content/Context;Ljava/lang/String;)Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;

    move-result-object v3

    iget-object v0, v3, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->editSettingActivity:Ljava/lang/String;

    .line 71
    .local v0, "activityName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 72
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 74
    .local v2, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;->getInstance(Landroid/content/Context;)Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;

    move-result-object v3

    invoke-static {p1}, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->newKey(Ljava/lang/String;)Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .local v1, "comp":Landroid/content/ComponentName;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 77
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 80
    .end local v1    # "comp":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static final isHidden(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {p0, p1}, Lcom/motorola/settings/accounts/MotoAccountsHelper;->getAuthenticatorDescriptionExt(Landroid/content/Context;Ljava/lang/String;)Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;

    move-result-object v0

    iget-boolean v0, v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->isAccountHidden:Z

    return v0
.end method

.method public static removeAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 63
    if-eqz p1, :cond_0

    .line 64
    invoke-static {p0, p1}, Lcom/motorola/settings/accounts/MotoAccountsHelper;->getAuthenticatorDescriptionExt(Landroid/content/Context;Ljava/lang/String;)Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;

    move-result-object v0

    iget-boolean v0, v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->isRemoveAllowed:Z

    .line 66
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static removeUnneededAuthDescs(Landroid/content/Context;[Landroid/accounts/AuthenticatorDescription;)[Landroid/accounts/AuthenticatorDescription;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authDescs"    # [Landroid/accounts/AuthenticatorDescription;

    .prologue
    .line 85
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    .local v2, "validList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/AuthenticatorDescription;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_2

    .line 88
    aget-object v3, p1, v1

    iget-object v0, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 90
    .local v0, "accountType":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/motorola/settings/accounts/MotoAccountsHelper;->isHidden(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, v0}, Lcom/motorola/settings/accounts/MotoAccountsHelper;->getAuthenticatorDescriptionExt(Landroid/content/Context;Ljava/lang/String;)Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;

    move-result-object v3

    iget-boolean v3, v3, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->isAuthenticatorHidden:Z

    if-eqz v3, :cond_1

    .line 87
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_1
    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 95
    .end local v0    # "accountType":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    new-array v3, v3, [Landroid/accounts/AuthenticatorDescription;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/accounts/AuthenticatorDescription;

    return-object v3
.end method

.method public static syncAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {p0, p1}, Lcom/motorola/settings/accounts/MotoAccountsHelper;->getAuthenticatorDescriptionExt(Landroid/content/Context;Ljava/lang/String;)Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;

    move-result-object v0

    iget-boolean v0, v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->showSyncOption:Z

    return v0
.end method
