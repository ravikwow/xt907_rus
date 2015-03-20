.class Lcom/motorola/blur/setup/CreateBlurAccountService$3;
.super Landroid/os/AsyncTask;
.source "CreateBlurAccountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/CreateBlurAccountService;->onCreationFinished(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/CreateBlurAccountService;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/CreateBlurAccountService;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/motorola/blur/setup/CreateBlurAccountService$3;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 227
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/blur/setup/CreateBlurAccountService$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 230
    iget-object v3, p0, Lcom/motorola/blur/setup/CreateBlurAccountService$3;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountService;

    iget-object v4, p0, Lcom/motorola/blur/setup/CreateBlurAccountService$3;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountService;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/blur/setup/SetupUtility;->disableBackgroundBlur(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    .line 233
    new-instance v1, Landroid/content/Intent;

    const-string v3, "SilentRegActionAccomplished"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/motorola/blur/setup/CreateBlurAccountService$3;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountService;

    const-string v4, "com.motorola.blur.setupprovider.Permissions.ACCESS_ACCOUNTS"

    invoke-virtual {v3, v1, v4}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 236
    iget-object v3, p0, Lcom/motorola/blur/setup/CreateBlurAccountService$3;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountService;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 237
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/motorola/blur/setup/CreateBlurAccountService$3;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountService;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/motorola/blur/setup/HomeActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 239
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 244
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 227
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/blur/setup/CreateBlurAccountService$3;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "arg"    # Ljava/lang/Void;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountService$3;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountService;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/CreateBlurAccountService;->stopAutoTrackService()V

    .line 248
    return-void
.end method
