.class public Lcom/motorola/contacts/simcontact/account/CardAuthenticatorService;
.super Landroid/app/Service;
.source "CardAuthenticatorService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 15
    const-string v0, "android.accounts.AccountAuthenticator"

    .line 17
    .local v0, "authenticatorIntent":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    new-instance v1, Lcom/motorola/contacts/simcontact/account/CardAuthenticator;

    invoke-direct {v1, p0}, Lcom/motorola/contacts/simcontact/account/CardAuthenticator;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/motorola/contacts/simcontact/account/CardAuthenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 20
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
