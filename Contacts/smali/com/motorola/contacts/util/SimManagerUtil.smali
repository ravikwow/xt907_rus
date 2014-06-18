.class public Lcom/motorola/contacts/util/SimManagerUtil;
.super Ljava/lang/Object;
.source "SimManagerUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMotSimManagerInstalled(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const/4 v1, 0x0

    .line 38
    .local v1, "hasSimManager":Z
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.motorola.simmanager"

    const-string v5, "com.motorola.simmanager.SimManagerActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .local v3, "simManagerComponent":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 43
    .local v2, "simActivityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_0

    .line 44
    const/4 v1, 0x1

    .line 50
    .end local v2    # "simActivityInfo":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return v1

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "SimManagerUtil"

    const-string v5, "Sim Manager Activity not found"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
