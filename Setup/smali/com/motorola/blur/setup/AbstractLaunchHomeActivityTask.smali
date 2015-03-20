.class abstract Lcom/motorola/blur/setup/AbstractLaunchHomeActivityTask;
.super Landroid/os/AsyncTask;
.source "AbstractLaunchHomeActivityTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/motorola/blur/setup/AbstractLaunchHomeActivityTask;->mContext:Landroid/content/Context;

    .line 15
    iput-object v0, p0, Lcom/motorola/blur/setup/AbstractLaunchHomeActivityTask;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/motorola/blur/setup/AbstractLaunchHomeActivityTask;->mContext:Landroid/content/Context;

    .line 15
    iput-object v0, p0, Lcom/motorola/blur/setup/AbstractLaunchHomeActivityTask;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 30
    iput-object p1, p0, Lcom/motorola/blur/setup/AbstractLaunchHomeActivityTask;->mContext:Landroid/content/Context;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/AbstractLaunchHomeActivityTask;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 32
    return-void
.end method


# virtual methods
.method protected abstract doAfterPostExecute()V
.end method

.method protected final varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v3, 0x0

    .line 38
    iget-object v0, p0, Lcom/motorola/blur/setup/AbstractLaunchHomeActivityTask;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/motorola/blur/setup/AbstractLaunchHomeActivityTask;->mContext:Landroid/content/Context;

    const-class v2, Lcom/motorola/blur/setup/HomeActivity;

    invoke-static {v0, v1, v2, v3}, Lcom/motorola/blur/setup/SetupUtility;->disableComponent(Landroid/content/pm/PackageManager;Landroid/content/Context;Ljava/lang/Class;Z)Z

    .line 39
    iget-object v0, p0, Lcom/motorola/blur/setup/AbstractLaunchHomeActivityTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/motorola/blur/setup/SetupUtility;->isEmaraFlow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/motorola/blur/setup/AbstractLaunchHomeActivityTask;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "com.motorola.dataswitch"

    const-string v2, "com.motorola.dataswitch.LocaleSelect"

    invoke-static {v0, v1, v2, v3}, Lcom/motorola/blur/setup/SetupUtility;->disableComponent(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 43
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 13
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/blur/setup/AbstractLaunchHomeActivityTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "homeIntent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 57
    iget-object v1, p0, Lcom/motorola/blur/setup/AbstractLaunchHomeActivityTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 58
    invoke-virtual {p0}, Lcom/motorola/blur/setup/AbstractLaunchHomeActivityTask;->doAfterPostExecute()V

    .line 59
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 13
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/blur/setup/AbstractLaunchHomeActivityTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
